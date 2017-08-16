stopifnot(require(svgR, quietly=TRUE))


path<-"~/R/svgRUserGuide/Compounds/"
source(paste0(path,"graphPaper.R"))
source(paste0(path,"svgR_logo.R"))
source(paste0(path,"svgRTree.R"))

#---------------------------------------------------------------
#utility to makes id Generators
# IdGeneratorFactory<-function(prefix='docId'){
#   count<-0
#   function(){count<<-count+1;
#              paste0(prefix,count)
#   }
# }
IdGeneratorFactory<-function(prefix='docId'){
  count<-0
  function(inc=TRUE){
    if(inc){
      count<<-count+1;
    }
    return( paste0(prefix,count))
  }
}

if(!(exists("newId"))){
  newId<-IdGeneratorFactory()
}
#---------------------------------------------------------------



#---------------------------------------------------------------

source(paste0(path,"playBar.R"))
source(paste0(path,"toggleBar.R"))


#some phrazes in chinese
hello<-"您好"
dataScience<-"数据科学"
statistics<-"统计"
mathematics<-"数学"
linearRegression<-"线性回归"
integral<-"积分"
normalDistribution<-"正态分布"

#---------------------------------------------------------------
textLines %<c-% function(txtLines, xy=c(20,20), font.size=16, stroke='darkblue'){
  lapply(1:length(txtLines),function(i){
    text(txtLines[i], xy=c(xy[1],xy[2]+i*1.1*font.size),
         font.size=font.size, stroke=stroke)
  })
}

textLines2 %<c-% function(txtLines, xy=c(20,20),  font.size=16, stroke='darkblue'){
  y<-xy[2]+1:length(txtLines)*1.1*font.size
  x<-xy[1]
  mapply(function(t,x,y)text(t, xy=c(x,y), font.size=font.size),
         txtLines,x, y , SIMPLIFY=FALSE)
}


#---------------------------------------------------------------
#this draws the box with centered text
oldetextBox %<c-% function(txt, cxy, boxWH=c(120,20), rxy=c(5,5),  fill='lightblue', stroke='darkblue'){
  g( stroke.width=1, stroke='darkblue',
     rect(cxy=cxy, wh=boxWH, rxy=rxy, fill=fill, stroke=stroke),
     text(txt, cxy=cxy, font.size=ceiling(.7*boxWH[2]))
  )
}

textCircle %<c-% function(txt, cxy, r=120,  fill='lightblue', stroke='darkblue'){
  g( stroke.width=1, stroke='darkblue',
     circle(cxy=cxy,  r=r, fill=fill, stroke=stroke),
     text(txt, cxy=cxy, font.size=ceiling(.4*r))
  )
}

matrix2Arrows %<c-% function( points=matrix(c(0,0,100,100), 2,2), ... ){
  if(length(points)%%4 !=0){ base::stop("bad point given to matrix2Arrows") }
  if( inherits(points, "matrix") && nrow(points)%%2!=0){
    base::stop("points must be a  2 by 2n matrix")
  }
  mid<-newId()
  points<-matrix(points, 4, )
  c(
    defs(
      marker(
        id=mid,  viewBox=c(0, 0, 10, 10), refXY=c(1,5),
        markerWidth=6, markerHeight=6, orient="auto",
        path( d=c("M", 0, 0, "L", 10, 5, "L", 0, 10, "z") )
      )
    ),
    apply(points, 2, function(v){
      line(xy1=v[1:2], xy2=v[3:4], ... ,
           marker.end=paste0( 'url(#',mid,')' )
      )
    })
  )
}

#--------------------------------------------------------------
# pie to represent an angle
# given cxy, r and angles theta1, theta2 (in radians), draw a clockwise arc
pie %<c-% function(cxy=c(0,0), r=100, theta1=0, theta2=pi, fill="none", sf=0, ...){
  theta1<-theta1%%(2*pi)
  theta2<-theta2%%(2*pi)
  startPt<-r*c( cos(theta1), -sin(theta1) )+cxy
  endPt  <-r*c( cos(theta2), -sin(theta2) )+cxy
  laf<-ifelse(abs(theta2-theta1)>pi,1,0)
  d<-c("M", startPt, "A", c(r,r), 0, laf, sf, endPt )
  if(fill!="none"){
    d=c(d, "L", cxy, "Z" )
  }
  path(d=d , stroke='red', fill=fill, ...)
}




#' render braces
#'
#' v1 is the vertiex of the brace
#' p2 endpoint of brace leg (abs coord)
#' p3 endpoint of brace leg (abs coord)
brace %<c-% function(v1,p2,p3, stroke='black', stroke.width=1 ){
  xa<-v1-p2
  xb<-p3-p2
  n1<-(sum(xa*xb)/sum(xb*xb))*xb +p2 #m=midpt
  n2<-p2+v1-n1
  n3<-p3+v1-n1
  #now the braces
  list(
    path(d=c("M",v1, "C", n1, n2,p2), stroke=stroke , fill='none', stroke.width=stroke.width),
    path(d=c("M",v1, "C", n1, n3,p3), stroke=stroke , fill='none', stroke.width=stroke.width)
  )
}


# brace %<c-% function(v1,p2,p3, stroke='black', stroke.width=1 ){
#   xa<-v1-p2
#   xb<-p3-p2
#   n1<-(sum(xa*xb)/sum(xb*xb))*xb +p2 #m=midpt
#   n2<-p2+v1-n1
#   n3<-p3+v1-n1
#   #now the braces
#   list(
#     path(d=c("M",v1, "C", n1, n2,p2), stroke=stroke , fill='none', stroke.width=stroke.width),
#     path(d=c("M",v1, "C", n1, n3,p3), stroke=stroke , fill='none', stroke.width=stroke.width)
#   )
# }


#---------------------------------------------------------------
#funkyFilter
funkyFilter %<c-% function(id, baseFrequency=.01, numOctaves=3, slope=c(4,4,4), seed=100){
  filter( id=id,
          feTurbulence(baseFrequency=baseFrequency, numOctaves=numOctaves, seed=100),
          feComponentTransfer(
            feFuncR(type="linear", slope=slope[1], intercept=-1),
            feFuncG(type="linear", slope=slope[2], intercept=-1),
            feFuncB(type="linear", slope=slope[3], intercept=-1),
            feFuncA(type="linear", slope=0, intercept=1)
          ),
          feColorMatrix(type="saturate")
  )
}

#---------------------------------------------------------------
#---------------------------------------------------------------
#an arrow from point p0 to p1
polyArrow %<c-% function(p0,p1, w=20, fill='lightblue'){
  normalize<-function(v){ v/sqrt(sum(v^2)) }
  v<-normalize(p1-p0)
  u<- c(-v[2], v[1])
  # thickness
  polygon( fill=fill, stroke='black',
           points=c(
             p1,
             p1 - 2*w*v - 1.5*w*u,
             p1 - 2*w*v - w/2*u,
             p0  - w/2 * u,
             p0  + w/2 * u,
             p1 - 2*w*v + w/2*u,
             p1 - 2*w*v + 1.5*w*u
           )
  )
}


#---------------------------------------------------------------
# begin arrow formed by 2 or more points
polyArrowX %<c-% function(bPoints, w=20){
  pts<-bPoints
  w<-20
  normalize<-function(v){
    s<-sqrt(sum(v^2))
    if(s>0){
      v/s
    } else {
      v
    }
  }
  #Assume pts are string
  N<-length(pts)/2
  pts<-matrix(pts,2,N)
  pathVect<-matrix( pts[,2:N] - pts[,1:(N-1)],2,N-1 )
  pathVect<-apply(pathVect,2,normalize)
  normVect<-apply(pathVect,2,function(v){c(v[2],-v[1])})
  dd<-ncol(normVect)
  #
  NV1<-matrix(normVect[,1:(dd-1)],2,dd-1)
  NV2<-matrix(normVect[,2:dd],2,dd-1)
  NV3<-rbind(NV2[2,],NV2[1,])
  dot<-apply(matrix(NV1*NV2,2,dd-1),2,sum)
  cross<-apply(matrix(NV1*NV3,2,dd-1),2,diff)
  delta<-w/2*sqrt((1-dot)/(1+dot))
  delta<-sign(cross)*delta
  delta2<-rbind(c(delta,0),c(delta,0))
  # multipie delta into pathVect (the tangent)
  dTan<-cbind(matrix(0,2,2),delta2*pathVect )
  # mutliplew/2 into normVect
  dNorm<-0.5*w*cbind(2*normVect[,1], normVect[,1],normVect)
  # put together
  dC<-cbind(-dTan+dNorm)
  dCX<-cbind(dC, -dC[ ,(dim(dC)[2]):1])
  NN<-dim(dCX)[2]-1
  dCX[,1:2]<-dCX[,1:2] + 1.5*w*pathVect[,1]
  dCX[,NN:(NN+1)]<-dCX[,NN:(NN+1)] +1.5*w*pathVect[,1]
  ptsX<-cbind(pts[,1],pts, pts[,N:1],pts[,1] )
  points<-dCX+ptsX
  pt<-matrix(bPoints, 2, 1)
  points<-cbind(pt, points)
  polygon( fill='lightgreen', stroke='black',
           points=points
  )
}

#---------------------------------------------------------------
#polyBand: band formed by two or moe points
polyBand %<c-% function(bPoints, w=20){
  pts<-bPoints
  w<-20
  normalize<-function(v){
    s<-sqrt(sum(v^2))
    if(s>0){
      v/s
    } else {
      v
    }
  }
  #Assume pts are string
  N<-length(pts)/2
  pts<-matrix(pts,2,N)
  pathVect<-matrix( pts[,2:N] - pts[,1:(N-1)],2,N-1 )
  pathVect<-apply(pathVect,2,normalize)
  normVect<-apply(pathVect,2,function(v){c(-v[2],v[1])})
  dd<-ncol(normVect)
  prod<-matrix(normVect[,1:(dd-1)]*normVect[,2:dd],2,dd-1)
  theta<-.5*apply(prod, 2, function(v)acos(sum(v)))
  delta<-sapply(theta,function(theta) w/2*tan(theta))
  delta2<-rbind(c(delta,0),c(delta,0))
  # multipie delta into pathVect (the tangent)
  dTan<-cbind(c(0,0),delta2*pathVect )
  # mutliplew/2 into normVect
  dNorm<-0.5*w*cbind(normVect[,1],normVect)
  # put together
  dC<-cbind(dTan+dNorm)
  dCX<-cbind(dC, -dC[ ,(dim(dC)[2]):1])
  ptsX<-cbind(pts, pts[,N:1] )
  points<-dCX+ptsX
  polygon( fill='lightgreen', stroke='black',
           points=points
  )
}


