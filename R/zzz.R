
.onLoad <- function(libname = find.package("svgR"), pkgname = "svgR") {
  fnNames<-names(eleDefs)
  utils:::.addFunctionInfo(svgR=fnNames)
}
