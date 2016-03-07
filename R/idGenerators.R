
#---------------------------------------------------------------
# Used as an environment for guarenteeing all
# subsequent id prefixes are unique
# Returns the id generator
idNameRegistra<-function(){
  namingEnv<-new.env(parent=emptyenv())
  namingEnv$prefixNames<-c()
  function(prefix="genid"){
    count<-0
    stopifnot(length(prefix)==1)
    stopifnot(inherits(prefix,"character"))
    tmp<-namingEnv$prefixNames
    if((prefix %in% tmp)){
      base::stop(paste("id prefix",prefix,"taken"))
    }
    namingEnv$prefixNames<-c(namingEnv$prefixNames,prefix)
    function(inc=TRUE){
      if(inc){
        count<<-count+1;
      }
      return( paste0(prefix, count) )
    } 
  }
}

#  ------------------------------------------------------------------------


#The id generator factory
# takes a character prefix for
# and returns an id-generator
genId.new<-idNameRegistra()

# used for generating generic ids
genId<-genId.new("genid")


#' Auto id generator
#'
#' @param inc TRUE means increment the counter (default)
#' @note inc=FALSE is provided to retreive the last inc=TRUE value
#' @export
autoId<-genId.new("autoId")

#---------------------------------------------------------------
# togglebar code begins here
toggleButtons<-genId.new(prefix='toggleButton')

#---------------------------------------------
# playBar
nextPlayId<-genId.new(prefix='playButton')

