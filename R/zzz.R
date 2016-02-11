
.onLoad <- function(libname = find.package("svgR"), pkgname = "svgR") {
  svgNames<-c("x","y","xy","width","height","wh","viewBox","preserveAspectRation")
  circleNames<-c("cx","cy","cxy","r","fill","stroke","viewBox")
  utils:::.addFunctionInfo(svgR=svgNames, circle=circleNames)
}
