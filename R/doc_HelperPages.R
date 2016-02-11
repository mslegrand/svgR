#' @name translate
#' @title Helper for tranform
#' @param    dx   Change in x coordinate for translation
#' @param    dy   Change in y coordinate for translation
#' @description 
#' Used as an value for the transform attribute. Translates the target by an amount given by dx, dy
#' \itemize{
#' \item{transform=translate(x,y)}{}
#' \item{transform=translate(c(x,y))}{}
#' \item{transform=c(translate(x,y), rotate(a,cx,cy), scale(sx,sy}{}
#' }
#' @keywords transform helper
NULL


#' @name rotate
#' @title Helper for tranform
#' @param    angle   Rotation angle in degrees
#' @param    x   fixed point x coordinate
#' @param    y   fixed point y coordinate
#' @description 
#' Used as an value for the transform attribute. Rotates the target by an amount given by angle, where angle is in degrees. Center of rotation is x,y
#' \itemize{
#' \item{transform=rotate(90,400,100)}{}
#' }
#' @keywords transform helper
NULL


#' @name rotateR
#' @title Helper for tranform
#' @param    angle   rotation angle in radians
#' @param    x   fixed point x coordinate
#' @param    y   fixed point y coordinate
#' @description 
#' Used as an value for the transform attribute. Rotates the target by an amount given by angle, where angle is in radians. Center of rotation is x,y
#' \itemize{
#' \item{transform=rotate(pi/2,400,100)}{}
#' }
#' @keywords transform helper
NULL


#' @name scale
#' @title Helper for tranform
#' @param    dx   change of scale in the x direction
#' @param    dy   change of scale in the y direction
#' @description 
#' Used as an value for the transform attribute. Scales the target by an amount given by dx, dy
#' \itemize{
#' \item{transform=scale(x,y)}{}
#' \item{transform=scale(c(x,y))}{}
#' \item{transform=c(scale(x,y),  translate(sx,sy}{}
#' }
#' @keywords transform helper
NULL


#' @name u.em
#' @title Helper function to declare units
#' @param    x   value in em 
#' @description 
#' Declares the units to be em's. (An em isa  measure relative to current font size)
#' \itemize{
#' \item{transform=translate(u.em(c(0,2))}{}
#' }
#' @keywords NULL
NULL


#' @name u.ex
#' @title Helper function to declare units
#' @param    x   value in ex 
#' @description 
#' Declares the units to be ex's. (An ex is a measure relative to the height of the character x)
#' \itemize{
#' \item{transform=translate(u.ex(c(0,2))}{}
#' }
#' @keywords NULL
NULL


#' @name u.px
#' @title Helper function to declare units
#' @param    x   value in pixels (default)
#' @description 
#' Declares the units to be pixels.
#' \itemize{
#' \item{transform=translate(u.px(c(0,2))}{}
#' }
#' @keywords NULL
NULL


#' @name u.pt
#' @title Helper function to declare units
#' @param    x   value in points (pt) 
#' @description 
#' Declares the units to be points's. (1pt=1/72 inch)
#' \itemize{
#' \item{transform=translate(u.pt(0,36))}{}
#' }
#' @keywords NULL
NULL


#' @name u.pc
#' @title Helper function to declare units
#' @param    x   valus in picas (pc)
#' @description 
#' Declares the units to be pica's. (1pc=1/6 inch)
#' \itemize{
#' \item{transform=translate(u.pc(0,3))}{}
#' }
#' @keywords NULL
NULL


#' @name u.cm
#' @title Helper function to declare units
#' @param    x   value in centimeters (cm)
#' @description 
#' Declares the units to be centimeters (cm)
#' \itemize{
#' \item{transform=translate(u.cm(0,2)}{}
#' }
#' @keywords NULL
NULL


#' @name u.mm
#' @title Helper function to declare units
#' @param    x   value in millimeters (mm)
#' @description 
#' Declares the units to be millimeters (mm)
#' \itemize{
#' \item{transform=translate(u.mm(0,20)}{}
#' }
#' @keywords NULL
NULL


#' @name u.in
#' @title Helper function to declare units
#' @param    x   value in inches (in)
#' @description 
#' Declares the units to be inches (in)
#' \itemize{
#' \item{transform=translate(u.in(0,.5)}{}
#' }
#' @keywords NULL
NULL


#' @name u.prct
#' @title Helper function to declare units
#' @param    x   value as a percentage (\%)
#' @description 
#' Declares the units to be percentage (\%)
#' \itemize{
#' \item{viewBox=u.\%(c(0,0,50,50))}{}
#' }
#' @keywords NULL
NULL


#' @name u.rd
#' @title Helper function to declare units
#' @param    x   value in radians
#' @description 
#' Declares the units to be radians
#' \itemize{
#' \item{transform=rotate(u.rd(pi/2), 100,100)}{}
#' }
#' @keywords NULL
NULL

