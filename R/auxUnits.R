# units
  
units<-list(
  as.em=function(x)paste0(x,'em'),
  as.ex=function(x)paste0(x,'ex'),
  as.px=function(x)paste0(x,'px'),
  as.pt=function(x)paste0(x,'pt'),
  as.pc=function(x)paste0(x,'pc'),
  as.cm=function(x)paste0(x,'cm'),
  as.mm=function(x)paste0(x,'mm'),
  as.in=function(x)paste0(x,'in'),
  'as.%'=function(x)paste0(x,'%'),
  as.radian=function(x)x*180/pi
)

