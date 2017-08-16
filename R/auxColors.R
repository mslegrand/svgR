
#' convert to rgb representation
#'
#' @param r red component: 0-255
#' @param g green component: 0-255
#' @param b blue component: 0-255
#' @return returns character vector representing a rgb color
#' @export
as.rgb<-function(r,g,b){
  tmp<-c(r,g,b)
  paste0('rgb(',paste(tmp,collapse=","), ')' )
}

#'Generate a random rgb color
#'
#' @return returns character vector representing a rgb color (as a character vector)
#' @export
rrgb<-function(){
  #tmp<-sample(1:255,3,replace=T)
  tmp<-sample.int(255,3)
  paste('rgb(',paste(tmp,collapse=","), ')', sep="")
}


