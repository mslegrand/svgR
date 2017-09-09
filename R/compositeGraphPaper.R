
#---------------------------------------------------------------

#' @name graphPaper
#' @title graphPaper Internal Compound
#' @param wh  numeric vector for the width-heigth 
#' @param dxy numeric vector for the spacing between lines
#' @param labels  add coordinate labels(default=FALSE)
#' @usage graphPaper(wh, dxy, labels)
#' @description Internal compound used to add a background with graphpaper appearance.  
#' @keywords display helper
NULL

graphPaper <- function(wh, dxy=c(10, 10), labels=FALSE ){
  seq(0,wh[1],dxy[1])->xs
  seq(0,wh[2],dxy[2])->ys
  grph<-c(
    lapply(xs, function(x)line(xy1=c(x,0),xy2=c(x,wh[2]))),
    lapply(ys, function(y)line(xy1=c(0,y),xy2=c(wh[1],y)))
  )
  if(labels){
    grph<-c(grph,
            lapply(xs, function(x)text(xy=c(x+2,10),x)),
            lapply(ys, function(y)text(xy=c(2,y),y))
    )
  }
  g( stroke.width=1,
     font.size=10,
     stroke="grey",
     grph
  )
}
