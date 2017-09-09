#' @name AElementTargetAttribute
#' @title target
#' @description 
#' Governs the manner in which the link is opened. That is where is the target placed?
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'_replace'}}{Specifies to replace in the current \emph{SVG image} by the linked content. The replacement will occupy the same region and frame as the current SVG.}
#' \item{\emph{'_self'}}{Specifies to replace in the current \emph{SVG image} by the linked content The replacement will occupy the frame as the current SVG. This is the default.}
#' \item{\emph{'_parent'}}{Specifies to replace the parent frameset \emph{SVG image} by the linked content.}
#' \item{\emph{'_top'}}{Specifies to replace the full window/tab (and frames) byt the linked content.}
#' \item{\emph{'_blank'}}{Specifies to create a new (unnamed) window/tab display and fill with the linked content.}
#' \item{<name>}{Specifies to find an existing window/tab/pane having the target name, and if one does not exist create one. Then fill it with the linked content.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}}
#' }
#' @keywords internal
NULL


#' @name AElementXLinkActuateAttribute
#' @title xlink.actuate
#' @description 
#' For XLink-aware processors, governs the conditions of loading the linked resource.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{\emph{'onRequest'}}{Specifies for Xlink-aware processors to perform only on a trigger of post-loading event trigger, a traversal from the starting resource to the ending resource.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}}
#' }
#' @keywords internal
NULL


#' @name AElementXLinkHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference for location of a resource.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a reference to an object as an \emph{IRI} reference.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}}
#' }
#' @keywords internal
NULL


#' @name AccumulateAttribute
#' @title accumulate
#' @description 
#' Governs whether or not the animation is cumulative.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'sum'}}{Specifies to accumulate values, that is each repeat iteration builds upon the last value of the previous iteration.}
#' \item{\emph{'none'}}{Specifies not to accumulate values. (The default)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name AdditiveAttribute
#' @title additive
#' @description 
#' Governs whether or not the animation is additive.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'sum'}}{Specifies that the animation is to add to the underlying value of the attribute and any other lower priority animations.}
#' \item{\emph{'replace'}}{Specifies that the the animation is to replace (override) the underlying value of the attributes. This is the default}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementDXAttribute
#' @title dx
#' @description 
#' Set shifts in the current x-position prior to rendering.
#' @section Available Attribute Values:
#' The value  represents one or more lengths, given as a vector.
#' \describe{
#' \item{<length>[N]}{Specifies the x-shifts values for the \strong{altGlyph} element. If rendering only unicode characters inside an \strong{altGlyph} element, then this specifies the absolute x-shift for the first n characters where n is the length of the dx-vector . If rendering alternate \emph{glyphs}, then dx[1] specifies a x-shift of the current text position, while the remainder, dx[-1], is ignored.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementDYAttribute
#' @title dy
#' @description 
#' Set shifts in the current y-position prior to rendering.
#' @section Available Attribute Values:
#' The value  represents one or more lengths, given as a vector.
#' \describe{
#' \item{<length>[N]}{Specifies a sequence of  the y-shifts values for the \emph{altGlyph} element. If rendering only unicode characters inside an \strong{altGlyph} element, then this specifies the absolute y-shift for the first n characters where n is the length of the dy-vector . If rendering alternate \emph{glyphs}, then dy[1] specifies a y-shift of the current text position, while the remainder, dy[-1], is ignored.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementFormatAttribute
#' @title format
#' @description 
#' Sets the fonts alt-glyph format.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<glyph-format>}{Specifies a \emph{alt-Glyph} format.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementGlyphRefAttribute
#' @title glyphRef
#' @description 
#' Sets the alt-glyph reference identifier.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<string>}{Specifies a \emph{glyph} identifier. The format of the font will determine the \emph{glyph} identifier format.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to either a glyph or altGlyphDef.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies an \emph{IRI} reference to either a glyph or an altGlyphDef.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementRotateAttribute
#' @title rotate
#' @description 
#' Sets a sequence of  one or more rotations to be applied to consecutive glyphs upon rendering.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<angle>[N]}{Specifies an additional rotation (in degrees) to be applied to characters within this \strong{altGlyph}. If rendering only unicode characters inside an \strong{altGlyph} element, then this specifies an aditional rotation (in degrees) to be applied sequentially for the first n characters where n is the length of the rotate-vector and applies the final rotate to the remaining characters (if any). If rendering alternate \emph{glyphs}, then dy[1] specifies a rotation to be applied to the entire sequence, while the remainder, dy[-1], is ignored.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinates for the alternative glyphs..
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{Specifies corresponding absolute x-coordinates for \strong{altGlyph} element. If rendering only unicode characters inside a \strong{altGlyph} element, then this specifies the absolute x-coordinates for the first n characters where n is the length of the x-vector . If rendering alternate \emph{glyphs}, then x[1] specifies a new the absolute x-coordinate for the current text position, so that text begins as x[1], with the remainder, x[-1], being ignored.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementYAttribute
#' @title y
#' @description 
#' Sets the y-coordinates for the alternative glyphs..
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{Specifies corresponding absolute y-coordinates for \strong{altGlyph} element. If rendering only unicode characters inside an \strong{altGlyph} element, then this specifies the absolute y-coordinates for the first n characters where n is the length of the y-vector . If rendering alternate \emph{glyphs}, then y[1] specifies a new the absolute y-coordinate for the current text position, so that text begins as y[1], with the remainder, y[-1], being ignored.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name AnimateTransformElementTypeAttribute
#' @title type
#' @description 
#' Governs the type of transformation which is to have its values change over time.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'translate'}}{Specifies a translational transform}
#' \item{\emph{'scale'}}{Specifies a scaling transform}
#' \item{\emph{'rotate'}}{Specifies a rotational transform}
#' \item{\emph{'skewX'}}{Specifies a skew transform along the X axis}
#' \item{\emph{'skewY'}}{Specifies a skew transform along the Y axis}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name AttributeNameAttribute
#' @title attributeName
#' @description 
#' Sets the name of the target attribute.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<attribute-name>}{Specifies the name of the target attribute.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name AttributeTypeAttribute
#' @title attributeType
#' @description 
#' Governs the namespace in which the target attribute and its associated values are defined.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'CSS'}}{Specifies that the value of \emph{'attributeName'} should be interpreted  as the name of a CSS property.}
#' \item{\emph{'XML'}}{Specifies that the value of  \emph{'attributeName'} should be interpreted as the name of a XML attribute}
#' \item{\emph{'auto'}}{Specifies to discover the value by searching for the matching property name, first through the CSS, then if not found then searching next through the XML.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name BeginAttribute
#' @title begin
#' @description 
#' Governs when the animation should begin.
#' @section Available Attribute Values:
#' The value is a vector composed of one or more of the following:
#' \describe{
#' \item{<offset-value>}{Specifies when to begin the animation, based upon an offset (+ or - ) from the implicit synbase (default is seconds)}
#' \item{<syncbase-value>}{Specifies when to begin the animation, based upon an offset (+ or - ) from the explicit synbase given by the begin or end of the element referenced by Id.value}
#' \item{<event-value>}{Specifies when to begin the animation, based upon an offset (+ or - ) relative to when the event referenced occurs.}
#' \item{<repeat-value>}{Specifies when to begin the animation, based upon an offset (+ or - ) relative to a repeating event.}
#' \item{<accessKey-value>}{Specifies when to begin the animation, based upon an offset (+ or - ) relative to an access key event of the specified character.}
#' \item{<wallclock-sync-value>}{Specifies when to begin the animation, based on wall clock time.}
#' \item{\emph{'indefinite'}}{Specifies when to begin the animation, using a \emph{beginElement()} method call or a hyperlink targeted to the element to trigger the begin.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name ByAttribute
#' @title by
#' @description 
#' Sets a relative offset value for the animation.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<value>}{Specifies the relative offset value to be used to compute the final ending value, That is  \eqn{endValue = startingValue + by}. This overrides any \emph{from to} specification.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name CalcModeAttribute
#' @title calcMode
#' @description 
#' Governs the interpolation model for the animation.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'discrete'}}{Specifies a discrete jump to the next value without any intermediate transitioning.}
#' \item{\emph{'linear'}}{Specifies an intermediate transitioning based on a linear interpolation across time from the starting value to the ending value. (This is the the default for all except for \emph{animateMotion})}
#' \item{\emph{'paced'}}{Specifies an even paced intermediate transitioning. This is the default for \emph{animateMotion}.}
#' \item{\emph{'spline'}}{Specifies an intermediate transitioning based on a cubic Bezier spline with points defined using the \emph{keyTimes} and \emph{keySplines} attributes.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name CircleElementCXAttribute
#' @title cx
#' @description 
#' Sets the x-coordinate of the center of the circle.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x- coordinate, \eqn{c_x} of the center of the \strong{circle}. Default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}}
#' }
#' @keywords internal
NULL


#' @name CircleElementCYAttribute
#' @title cy
#' @description 
#' Sets the y-coordinate of the center of the circle.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y- coordinate, \eqn{c_y} of the center of the \strong{circle}. Default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}}
#' }
#' @keywords internal
NULL


#' @name CircleElementRAttribute
#' @title r
#' @description 
#' Sets the radius of a circle.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the radius, \eqn{r} of the \strong{circle}. Note: \eqn{r\geq0}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}}
#' }
#' @keywords internal
NULL


#' @name ClassAttribute
#' @title class
#' @description 
#' Sets  one or more class names to be associated with this element.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<character>[[N]]}{Specifies one or more class names to be assigned to this element.}
#' \item{<character>[N]}{Specifies one or more class names to be assigned to this element.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=stop]{stop}}}
#' }
#' @keywords internal
NULL


#' @name ClipPathElementClipPathUnitsAttribute
#' @title clipPathUnits
#' @description 
#' Governs how to interpret the coordinates for the contents of the clipPath. That should they be interpeted  as objectBoundingBox or userSpaceOnUse?
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that the coordinate system for the contents of the \emph{'clipPath'} is given in terms of the specific user coordinate system that is in effect at the time of clipPath referrencing. (Default)}
#' \item{\emph{'objectBoundingBox'}}{Specifies that the coordinate system for the contents of the \emph{'clipPath'} is given in terms of the bounding box of target object(s) to be clipped.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to an ICC color profile resource.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a reference to an \emph{ICC profile} resource.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementLocalAttribute
#' @title local
#' @description 
#' Assigns a unique ID for a locally stored color profile, for referencing elsewhere.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<string>}{Specifes a color profile by ID.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementNameAttribute
#' @title name
#' @description 
#' Sets the color profile name.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<name>}{Specifies the name of the first parameter in \emph{icc-color} specification. Note: \emph{""""""""""""""""sRGB""""""""""""""""} is predefined; and will result in the specification this being ignored.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementRenderingIntentAttribute
#' @title rendering.intent
#' @description 
#' Governs a color profile rendering intent.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'auto'}}{Directs the user agent to determine intent based on the content type. This is the Default.}
#' \item{\emph{'perceptual'}}{Specifies to perserve relative \emph{color}, used often for images.}
#' \item{\emph{'saturation'}}{Specifies to preserve \emph{saturation.}}
#' \item{\emph{'Relative-colorimetric'}}{Specifies to not change colors that fall within the range supported by the rendering device.}
#' \item{\emph{'Absolute-colorimetric'}}{Specifies the disable any \emph{white} point matching during color convertion. \emph{Not recommended.}}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name ContentScriptTypeAttribute
#' @title contentScriptType
#' @description 
#' Sets the default scripting language for the given SVG document fragment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<content-type>}{Specifies the default scripting language of the event attributes value strings. The default is \emph{'application/ecmascript'}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name ContentStyleTypeAttribute
#' @title contentStyleType
#' @description 
#' Sets the default style sheet language for the given document.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<content-type>}{Specifies a default style sheet language for the given document.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name CursorElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to a cursor image element or cursor image file.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<FUNCIRI>}{Specifies a reference to the cursor image. The reference is in the form of a A Functional \emph{IRI} pointing to a file or element.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=cursor]{cursor}}}
#' }
#' @keywords internal
NULL


#' @name CursorElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the cursor point, this coordinate being interpreted using the cursors coordinate system.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies x-coordinate of the point that the \strong{cursor} is pointing to. This position is expressed in the \emph{cursor's} coordinate system. The default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=cursor]{cursor}}}
#' }
#' @keywords internal
NULL


#' @name CursorElementYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate of the cursor point, this coordinate being interpreted using the cursors coordinate system.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the point that the cursor is pointing to. This position is expressed in the cursor's coordinate system. The default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=cursor]{cursor}}}
#' }
#' @keywords internal
NULL


#' @name DAttribute
#' @title d
#' @description 
#' Sets the  path-data points which define the outline of a shape.
#' @section Available Attribute Values:
#' The value is a path-data description and is expressed in either one of the following ways.
#' \describe{
#' \item{<path-data-list>}{Specifies the path-data used to create a \emph{path}.}
#' }
#' 
#' @section Path-Data Details:
#' Path-data is a description consisting of a collection of pairs of path commands and values.  
#' Path-data is be represented in one of two ways, either as an named list or as a vector.
#' In the named list representation, the names are letters-tokens for commands and the corresponding values play the role of the parameters for those commands.
#' \code{list(M=c(100,100), L=c(200,200), h=10, Z=NULL)}
#' In the vector representation, each name is a letter-token (of class character) followed by the corresponding values, again playing the role of the parameters for those commands. 
#' \code{c('M', c(100,100), 'L', c(200,200), 'h', 10, 'Z')}
#' In the following we write pt for a point c(x,y).
#' 
#' \strong{Path Data Command Table}
#' \tabular{lll}{
#' Name  \tab Values   \tab    Interpetion \cr
#' 'M','m'   \tab pt+   \tab    Move the current point to a new location (without drawing) \cr
#' 'L','l'   \tab pt+   \tab    Draw a line from the current point to pt \cr
#' 'H','h'   \tab (x)+     \tab    Draw a horizontal line from the current point \cr
#' 'V','v'   \tab (y)+     \tab    Draw a vertical line from the current\cr
#' 'C','c'   \tab c(pt1,pt2,pt)+  \tab  Draw a cubic Bezier curve to pt with control points pt1,pt2, (x2,y2)\cr
#' 'S','s'   \tab c(pt2,pt))+  \tab  Draw a cubic Bezier to pt using pt2 as the second control pt (inheriting the first control point from a preceding Bezier)\cr
#' 'Q','q'   \tab c(pt1,pt))+  \tab  Draw a quadratic Bezier to pt using pt1 as the control pt \cr     
#' 'T','t'   \tab pt+ \tab Draw a quadratic Bezier curve to pt (inheriting the control from a preceding Bezier)\cr
#' 'A','a'  \tab c(rxy, theta, LargeArc, SweepRight, pt) \tab   Draw an arc the current point to the point pt, based on an ellipse of radii rxy, rotated by \eqn{\theta} degrees. \cr
#'       \tab                 \tab   Use 1 or 0 for TRUE or FALSE in the LargeArc, SweepRigh flags \cr
#' 'Z','z'     \tab \tab Closes the Path
#' }
#' 
#' \strong{Note:}
#' \itemize{
#' \item{Each name is denoted by a single letter}
#' \item{Names can be repeated in the list (or vector)}
#' \item{Names with upper-case letters indicate the coordinate values are interpreted to be absolute.}
#' \item{Names with lower-case letters indicate the coordinate values are interpreted to be relative.}
#' \item{Z (or z), the command that closes the path, takes no value in the vector form, and in list form the value is ignored.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=path]{path}}}
#' }
#' @keywords internal
NULL


#' @name DurAttribute
#' @title dur
#' @description 
#' Governs the simple duration.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{<clock-value>}{Specifies the length of the simple duration in presentation time. This value must be greater than 0. (The default unis is in seconds)}
#' \item{\emph{'media'}}{Specifies the simple duration as the intrinsic media duration.}
#' \item{\emph{'indefinite'}}{Specifies the simple duration as \emph{indefinite}, that is the animation is to continue indefinitely.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementCXAttribute
#' @title cx
#' @description 
#' Sets the x-coordinate of the center of the ellipse.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x- coordinate, \eqn{c_x} of the center of the \strong{ellipse}. Default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementCYAttribute
#' @title cy
#' @description 
#' Sets the y-coordinate of the center of the ellipse.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y- coordinate, \eqn{c_y} of the center of the\strong{ellipse}. Default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementRXAttribute
#' @title rx
#' @description 
#' Sets the x-radius of the ellipse.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the x-axis radius, \eqn{r_x} of the \strong{ellipse}. Note \eqn{r_x \geq 0} is required.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementRYAttribute
#' @title ry
#' @description 
#' Sets the y-radius of the ellipse.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the y-axis radius, \eqn{r_y} of the \strong{ellipse}. Note \eqn{r_y \geq 0} is required.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name EndAttribute
#' @title end
#' @description 
#' Governs the ending constraint for active duration.
#' @section Available Attribute Values:
#' The value is a vector composed of one or more of the following:
#' \describe{
#' \item{<offset-value>}{Specifies when to end the animation, based upon an offset (+ or - ) from the implicit \emph{synbase} (without units the default is seconds)}
#' \item{<syncbase-value>}{Specifies when to end the animation, based upon an offset (+ or - ) from the explicit \emph{synbase} given by the begin or end of the element referenced by id-value.}
#' \item{<event-value>}{Specifies when to end the animation, based upon an offset (+ or - ) relative to when the event referenced occurs.}
#' \item{<repeat-value>}{Specifies when to end the animation, based upon an offset (+ or - ) relative to a repeating event.}
#' \item{<accessKey-value>}{Specifies when to end the animation, based upon an offset (+ or - ) relative to an access key event of the specified character.}
#' \item{<wallclock-sync-value>}{Specifies when to end the animation, base on wall clock time.}
#' \item{\emph{'indefinite'}}{Specifies when to end the animation, using a \emph{endElement()} method call or a hyperlink targeted to the element to trigger the end.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name ExternalResourcesRequiredAttribute
#' @title externalResourcesRequired
#' @description 
#' Governs whether or not resources external to the current document are required.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'false'}}{Specifies that resources external to the current document are considered optional, (Default)}
#' \item{\emph{'true'}}{Specifies that resources external to the current document are NOT considered optional. Thus if any external resource is not available, rendering is suspended and an error document error state occurs.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}, \code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name FillAttribute
#' @title fill
#' @description 
#' Governs whether to freeze or to remove the animation upon completion.  Freeze means stop in place, remove means to return to the state prior to the beginning of the animation.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'freeze'}}{Specifies upon completing the animation to freeze in place, there by keeping the last value for that animation frozen.}
#' \item{\emph{'remove'}}{Specifies upon completing the animation to return to the initial state, that being what value the attribute had prior to the start of the animation.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementFilterResAttribute
#' @title filterRes
#' @description 
#' Sets the width and height of the intermediate filtered  images in pixels.
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1or2]}{Specifies an intermediate \emph{width} and \emph{height} in pixels. If not specified, the user agent will try to insure high quality with a good guess.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementFilterUnitsAttribute
#' @title filterUnits
#' @description 
#' Set the  units to be used to interpret  the x, y, width, height  attributes within  the filter effects region.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies to interpret \emph{x, y, width, height ( or xy, wh)} as current user coordinates.}
#' \item{\emph{'objectBoundingBox'}}{Specifies to interpret \emph{x, y, width, height ( or xy, wh)} as fractions (or percentages)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the filter effects region.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{bounding box height} of the filter in terms of the filterUnits. (The default is 1.20).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to different filter element within this svg fragment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a reference to another filter element residing in the same SVG fragment.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementPrimitiveUnitsAttribute
#' @title primitiveUnits
#' @description 
#' Governs the units for coordinate system of the filter primitive subregion.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies to interpret \emph{x, y, width, height} ( or \emph{xy, wh}) as current user coordinates.}
#' \item{\emph{'objectBoundingBox'}}{Specifies to interpret \emph{x, y, width, height} ( or \emph{xy, wh}) as fractions (or percentages)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementWidthAttribute
#' @title width
#' @description 
#' Sets the width of the filter region.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the bounding box width of the \strong{filter} in terms of the \emph{filterUnits}. (default is 1.20 )}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the left-hand side of the filter effects region.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the left edge of the \strong{filter element} region.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate of the top side of the filter effects region.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the top edge of the \strong{filter element} region.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveHeightAttribute
#' @title height
#' @description 
#' Sets the height of the filter primitive subregion. (Default is the height of the filter)
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{height} of \emph{filter primitive subregion}. The filter primitive subregion is a rectangular region over which both filter primitive calculations and rendering occurs.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveIn1Attribute
#' @title in1
#' @description 
#' Sets the primary graphics input to be used for the given filter primitive.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'SourceGraphic'}}{Specifies taking as the first graphics input argument, \emph{in1}, the original graphic source.}
#' \item{\emph{'SourceAlpha'}}{Specifies taking as the first graphics input argument, \emph{in1}, taking the alpha channel of the original graphic source.}
#' \item{\emph{'BackgroundImage'}}{Specifies taking as the first graphics input argument, \emph{in1}, the image snapshot of the filter region in effect at the time filter was invoked.}
#' \item{\emph{'BackgroundAlpha'}}{Specifies taking as the first graphics input argument, \emph{in1}, the \emph{alpha channel} of the filter region image.}
#' \item{\emph{'FillPaint'}}{Specifies taking as the first graphics input argument, \emph{in1}, the \emph{fill} property on the target element.}
#' \item{\emph{'StrokePaint'}}{Specifies taking as the first graphics input argument, \emph{in1}, the \emph{stroke} property on the target element.}
#' \item{<filter-primitive-reference>}{Specifies taking as the first graphics input argument, \emph{in1}, the results of the referenced filter primitive.}
#' \item{<filterPrimitveElement>}{Specifies taking as the first graphics input argument, \emph{in1}, the results of the given filter primitive.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feMergeNode]{feMergeNode}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveIn2Attribute
#' @title in2
#' @description 
#' Sets the secondary graphics input to be used for the given filter primitive.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'SourceGraphic'}}{Specifies taking as the second graphics input argument, \emph{in2}, the original graphic source.}
#' \item{\emph{'SourceAlpha'}}{Specifies taking as the second graphics input argument, \emph{in2}, taking the alpha channel of the original graphic source.}
#' \item{\emph{'BackgroundImage'}}{Specifies taking as the second  graphics input argument, \emph{in2}, the image snapshot of the filter region in effect at the time filter was invoked.}
#' \item{\emph{'BackgroundAlpha'}}{Specifies taking as the second  graphics input argument, \emph{in2}, the \emph{alpha channel} of the filter region image.}
#' \item{\emph{'FillPaint'}}{Specifies taking as the second  graphics input argument, \emph{in2}, the \emph{fill} property on the target element.}
#' \item{\emph{'StrokePaint'}}{Specifies taking as the second  graphics input argument, \emph{in2}, the \emph{stroke} property on the target element.}
#' \item{<filter-primitive-reference>}{Specifies taking as the second  graphics input argument, \emph{in2}, the results of the referenced filter primitive.}
#' \item{<filterPrimitveElement>}{Specifies taking as the second  graphics input argument, \emph{in2}, the results of the given filter primitive.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveResultAttribute
#' @title result
#' @description 
#' Sets a name to assign to the filter primitive.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<filter-primitive-reference>}{Specifies a name that can be used to reference the result of this \emph{filter primitive} by another \emph{filter primitive} using \emph{in1} or \emph{in2}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveWidthAttribute
#' @title width
#' @description 
#' Sets the width of the filter primitive subregion. The processing of a filter primitive is restricted to the filter primitive subregion.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{width} of filter primitive subregion, The filter primitive subregion is a rectangular region over which both filter primitive calculations and rendering occurs.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the filter primitive subregion. The processing of a filter primitive is restricted to the filter primitive subregion.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of filter primitive subregion, The filter primitive subregion is a rectangular region over which both filter primitive calculations and rendering occurs.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate of the filter primitive subregion. The processing of a filter primitive is restricted to the filter primitive subregion.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of filter primitive subregion, The filter primitive subregion is a rectangular region over which both filter primitive calculations and rendering occurs.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name FontElementHorizAdvXAttribute
#' @title horiz.adv.x
#' @description 
#' Sets the amount of horizontal advance to after rendering the given horizontally orientated glyph.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies what the default horizontal advance should be after rendering in a horizontal orientation. Needs to be non-negative.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontElementHorizOriginXAttribute
#' @title horiz.origin.x
#' @description 
#' Sets the x-coordinate of the origin to be used when rendering the horizontally oriented text.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the glyph origin relative to the font coordinate system in horizontal text mode. Default=0.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontElementHorizOriginYAttribute
#' @title horiz.origin.y
#' @description 
#' Sets the y-coordinate of the origin to be used when rendering the horizontally oriented text.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the glyph origin relative to the font coordinate system in horizontal text mode. Default=0.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontElementVertAdvYAttribute
#' @title vert.adv.y
#' @description 
#' Sets the amount to advance to occur after rendering this glyph, where both the orientation and the direction of advance are vertical.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies what the default vertical advance should be after rendering in a vertical orientation. Needs to be non-negative.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontElementVertOriginXAttribute
#' @title vert.origin.x
#' @description 
#' Sets the x-coordinate of the glyphs origin to be applied to a vertically orientented text. This value is to be interpreted within the fonts coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the default x-coordinate of the origin for a \emph{glyph} relative to coordinate system when in text orientation is vertical. Default is half of 'horiz.adv.x.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontElementVertOriginYAttribute
#' @title vert.origin.y
#' @description 
#' Sets the y-coordinate of the glyphs origin to be applied to a vertically orientented text. This value is to be interpreted within the fonts coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the default y-coordinate of the origin for a \emph{glyph} relative to coordinate system when in text orientation is vertical. Default is ascent height attribute.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementAccentHeightAttribute
#' @title accent.height
#' @description 
#' Sets the distance from the font origin to the top of the accent characters.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the distance from the font origin to the top of the accent characters, given in the units of the font coordinate system.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementAlphabeticAttribute
#' @title alphabetic
#' @description 
#' Sets the alignment coordinate for glyphs to achieve an alphabetic baseline alignment
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies an amount of alignment to be used to produce an ideographic baseline alignment, given that the \emph{glyphs} are  horizontally orientated.  The units of this value is the same as the units given by the font coordinate system.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementAscentAttribute
#' @title ascent
#' @description 
#' Sets the maximum unaccented height of the font, as measured within the font coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the maximum height for an unaccented \emph{glyph} where the height is given in the same units of the font coordinate system.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementBboxAttribute
#' @title bbox
#' @description 
#' Sets the maximal bounding box of the font.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>[4] (=c(left-x, lower-y, right-x, upper-y))}{Specifies the maximal bounding box of the font. This is represented as a vector c(lower-left-x, lower-left-y, upper-right-x, upper-right-y).}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementCapHeightAttribute
#' @title cap.height
#' @description 
#' Sets the height of the uppercase glyphs of the fon. The height is measured in terms of the font coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the height of uppercase \emph{glyphs} of the font using \emph{units per em}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementDescentAttribute
#' @title descent
#' @description 
#' Sets the maximum unaccented depth of the font. Measurements to be  expressed in terms of  the font coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies an maximum unaccented font depth with respect to the font coordinate system.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontFamilyAttribute
#' @title font.family
#' @description 
#' Sets a prioritized list of font families.  This instructs the user agent to use  first available font in the list.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<character>[N]}{Specifies, as a character vector, one or more font family names.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontSizeAttribute
#' @title font.size
#' @description 
#' Governs the font size.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{\emph{'all'}}{Specifies all size (suitable for scalable fonts)}
#' \item{<length>}{Specifies the font size (suitable for bitmap fonts)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontStretchAttribute
#' @title font.stretch
#' @description 
#' Governs the width or narrowness, of the font face relative to others within the same font family.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'all'}}{Specifies to apply all font factors.}
#' \item{\emph{'normal'}}{Specifies no stretching and no condensing of the \emph{glyphs}.}
#' \item{\emph{'ultra-condensed'}}{Specifies maximum condensing (ultra) of the \emph{glyphs}.}
#' \item{\emph{'extra-condensed'}}{Specifies a slightly more condensed than \emph{condensed}.}
#' \item{\emph{'condensed'}}{Specifies a slightly more condensed than \emph{semi-condensed}.}
#' \item{\emph{'semi-condensed'}}{Specifies a slightly more condensed than \emph{normal}.}
#' \item{\emph{'semi-expanded'}}{Specifies a slightly more expanded than \emph{normal}.}
#' \item{\emph{'expanded'}}{Specifies a slightly more expanded than the \emph{semi-expanded}  amount of stretching.}
#' \item{\emph{'extra-expanded'}}{Specifies a slightly more expanded than \emph{expanded}  amount of stretching.}
#' \item{\emph{'ultra-expanded'}}{Specifies the maximum amount of stretching.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontStyleAttribute
#' @title font.style
#' @description 
#' Governs the font style ( for example, italic, bold, )
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'all'}}{Specifies all three font styles.}
#' \item{\emph{'normal'}}{Specifies a \emph{normal} font style.}
#' \item{\emph{'italic'}}{Specifies an \emph{italic} font style}
#' \item{\emph{'oblique'}}{Specifies an \emph{oblique} font style.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontVariantAttribute
#' @title font.variant
#' @description 
#' Governs whether or not to use a small-caps font variant for bicameral fonts.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'normal'}}{Specifies the \emph{normal} font variant.}
#' \item{\emph{'small-caps'}}{Specifies \emph{small-caps} variant of the font.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontWeightAttribute
#' @title font.weight
#' @description 
#' Governs the weight of the font (ie. Bold, etc)
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'all'}}{Specifies to match all possible weights.}
#' \item{\emph{'normal'}}{Specifies a \emph{normal} weight (i.e. 400)}
#' \item{\emph{'bold'}}{Specifies a \emph{bold} weight (i.e. 700)}
#' \item{\emph{'100'}}{Specifies a 100 font weight (lightest)}
#' \item{\emph{'200'}}{Specifies a 200 font weight.}
#' \item{\emph{'300'}}{Specifies a 300 font weight.}
#' \item{\emph{'400'}}{Specifies a 400 font weight. (Normal.)}
#' \item{\emph{'500'}}{Specifies a 500 font weight.}
#' \item{\emph{'600'}}{Specifies a 600 font weight}
#' \item{\emph{'700'}}{Specifies a 700 font weight}
#' \item{\emph{'800'}}{Specifies a 800 font weight}
#' \item{\emph{'900'}}{Specifies a 900 font weight. (Boldest)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementHangingAttribute
#' @title hanging
#' @description 
#' Sets the alignment coordinate offset for a horizontally oriented glyph layout in order to achieve a hanging baseline alignment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the vaule of the alignment amount to use to to produce an ideographic baseline alignment. This amount is given in the same units as in the font coordinate system. This alignment is applicable for horizontally orientated \emph{glyphs}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementIdeographicAttribute
#' @title ideographic
#' @description 
#' Sets an offset within the font coordinate system to provide an alignment of a horizontally oriented glyph layout, with the goal of achieving an ideographic baseline alignment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies, in font coordinates, for horizontally orientated \emph{glyphs}, the alignment to produce an ideographic baseline alignment.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementMathematicalAttribute
#' @title mathematical
#' @description 
#' Sets an offset within the font coordinate system to provide an alignment of a horizontally oriented glyph layout, with the goal of achieving an mathematical baseline alignment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, for horizontally orientated \emph{glyphs}, the alignment to produce an \emph{ideographic} baseline alignment.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementOverlinePositionAttribute
#' @title overline.position
#' @description 
#' Sets the desired overline position, as measured within the font-coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, the intended \emph{overline position}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementOverlineThicknessAttribute
#' @title overline.thickness
#' @description 
#' Sets the desired overline thickness, as measured within the font-coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, the intended \emph{overline thickness}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementPanose1Attribute
#' @title panose.1
#' @description 
#' Set panrose-1 numbers (for True-type font matching and classification)
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{[<integer>]{10}}{Specifies \emph{panrose} using vector of length 10. (Default=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0)). Used by Latin fonts}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementSlopeAttribute
#' @title slope
#' @description 
#' Sets the vertical stroke angle of the font.
#' @section Available Attribute Values:
#' The value is a numeric representing an angle in degrees.
#' \describe{
#' \item{<angle>}{Specifies an angle in degrees from the vertical of the dominant vertical strokes of the font. (Default=0)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStemhAttribute
#' @title stemh
#' @description 
#' Sets the horizontal stem width.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies dominant stem width if the font via \emph{units per em}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStemvAttribute
#' @title stemv
#' @description 
#' Sets the vertical stem width.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies dominant vertical stem width of the \emph{glyphs} via \emph{units per em}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStrikeThroughPositionAttribute
#' @title strikethrough.position
#' @description 
#' Sets the preferred positioning within the font-coordinate system for rendering a strikethrough.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies, in font coordinates, the intended \emph{strikethrough} position.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStrikeThroughThicknessAttribute
#' @title strikethrough.thickness
#' @description 
#' Sets the preferred thickness using units from the font-coordinate system tp render a strikethrough.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies, in font coordinates, the intended \emph{strikethrough} thickness.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnderlinePositionAttribute
#' @title underline.position
#' @description 
#' Sets the preferred positioning using  the font-coordinates for rendering an underline.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, the intended \emph{underline position}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnderlineThicknessAttribute
#' @title underline.thickness
#' @description 
#' Sets the preferred thickness using the seame units as the font-coordinates to render a underline.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, the intended \emph{underline thickness}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnicodeRangeAttribute
#' @title unicode.range
#' @description 
#' Sets the range of ISO 10646 characters [UNICODE] to be covered by the glyphs in the font.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<urange>[N] (vector-of-uranges)}{Specifies range of ISO 10646 characters covered by the \emph{font}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnitsPerEmAttribute
#' @title units.per.em
#' @description 
#' Sets the the number of coordinate units along the sides the em square of the glyph design grid
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the number of coordinate units on an em square. (Default = 1000)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertAlphabeticAttribute
#' @title v.alphabetic
#' @description 
#' Sets an alignment coordinate adjustment for a vertically oriented glyph layout to aid in achieving an  alphabetic baseline alignment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, for vertically orientated \emph{glyphs}, the alignment to produce an \emph{alphabetic baseline alignment}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertHangingAttribute
#' @title v.hanging
#' @description 
#' Sets an alignment coordinate adjustment for a vertically oriented glyph layout to aid in achieving an  hanging baseline alignment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, for vertically orientated \emph{glyphs}, the alignment to produce an \emph{hanging baseline alignment}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertIdeographicAttribute
#' @title v.ideographic
#' @description 
#' Sets an alignment coordinate adjustment for a vertically oriented glyph layout to aid in achieving an  ideographic  baseline alignment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, for vertically orientated \emph{glyphs}, the alignment to produce an \emph{ideographic baseline alignment}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertMathematicalAttribute
#' @title v.mathematical
#' @description 
#' Sets an alignment coordinate adjustment for a vertically oriented glyph layout to aid in achieving an  mathematical baseline alignment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies, in font coordinates, for vertically orientated \emph{glyphs}, the alignment to produce an \emph{mathematical baseline alignment}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementWidthsAttribute
#' @title widths
#' @description 
#' Sets the glyphs widths for each individual glyph in terms of the design grid.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<named-list-of-widths>}{Specifies \emph{glyphs} widths, given a \emph{urange} an a number representing the \emph{width.} The format is a list with names as \emph{uranges} and values as width.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementXHeightAttribute
#' @title x.height
#' @description 
#' Sets the height of the lowercase glyphs of the given font, where the value of the height is in terms of the units used by the font coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the height of lowercase \emph{glyphs} of the font using \emph{units per em}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceFormatElementStringAttribute
#' @title string
#' @description 
#' Sets which  formats are supported by the given font.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<character>[N]}{Specifies a list of formats supported by the referenced font. Examples are \emph{truedoc-pfr}, or \emph{opentype}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face-format]{font.face.format}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceNameElementNameAttribute
#' @title name
#' @description 
#' Sets the name of the local font.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<name>}{Specifies a name of a local font.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face-name]{font.face.name}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceUriElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference for the location of a font.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies the location of the referenced font}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=font-face-uri]{font.face.uri}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the rectangular region into which the referenced document is placed.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{height} of the rectangular region into which into which the \emph{'foreignObject'} will be rendered. Requires \eqn{height \\geq 0}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementWidthAttribute
#' @title width
#' @description 
#' Set the width of the region into which the  foreign object is to be placed.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{width} of the rectangular region into which into which the \emph{'foreignObject'} will be rendered. Requires \eqn{width \\geq 0}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the left side of rectangular region where the foreign object is to be placed.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the left side of the rectangular region into which the \emph{'foreignObject'} will be rendered. Default=0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementYAttribute
#' @title y
#' @description 
#' Sets the y-coord of the top side of rectangular region into which the referenced document is placed.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the top side of the rectangular region into which the \emph{'foreignObject'} will be rendered. Default=0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name FromAttribute
#' @title from
#' @description 
#' Sets the starting value of the animation.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<attribute-value>}{Specifies the initial value of the attribute chosen for animation.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementArabicFormAttribute
#' @title arabic.form
#' @description 
#' Governs which of the four possible forms for an arabic glyph
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'initial'}}{Specifies the initial \emph{Arabic} \emph{glyph} form.}
#' \item{\emph{'medial'}}{Specifies the medial \emph{Arabic} \emph{glyph} form.}
#' \item{\emph{'terminal'}}{Specifies the terminal \emph{Arabic} \emph{glyph} form.}
#' \item{\emph{'isolated'}}{Specifies the isolated \emph{Arabic} \emph{glyph} form.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementDAttribute
#' @title d
#' @description 
#' Sets the path-data points used to create a glyph outline.
#' @section Available Attribute Values:
#' The value is a path-data description and is expressed in either one of the following ways.
#' \describe{
#' \item{<path-data-vector>}{Specifies the outline of the glyph path as a vector, built from both \emph{path commands} (M, m, Z, z, L, l, H, h, V, v) and the points those commands are to operate on.}
#' \item{<path-data-list>}{Specifies the outline of the glyph path as a named list, with names originating from the \emph{path commands}: M, m, Z, z, L, l, H, h, V, v.}
#' }
#' 
#' @section Path-Data Details:
#' Path-data is a description consisting of a collection of pairs of path commands and values.  
#' Path-data is be represented in one of two ways, either as an named list or as a vector.
#' In the named list representation, the names are letters-tokens for commands and the corresponding values play the role of the parameters for those commands.
#' \code{list(M=c(100,100), L=c(200,200), h=10, Z=NULL)}
#' In the vector representation, each name is a letter-token (of class character) followed by the corresponding values, again playing the role of the parameters for those commands. 
#' \code{c('M', c(100,100), 'L', c(200,200), 'h', 10, 'Z')}
#' In the following we write pt for a point c(x,y).
#' 
#' \strong{Path Data Command Table}
#' \tabular{lll}{
#' Name  \tab Values   \tab    Interpetion \cr
#' 'M','m'   \tab pt+   \tab    Move the current point to a new location (without drawing) \cr
#' 'L','l'   \tab pt+   \tab    Draw a line from the current point to pt \cr
#' 'H','h'   \tab (x)+     \tab    Draw a horizontal line from the current point \cr
#' 'V','v'   \tab (y)+     \tab    Draw a vertical line from the current\cr
#' 'C','c'   \tab c(pt1,pt2,pt)+  \tab  Draw a cubic Bezier curve to pt with control points pt1,pt2, (x2,y2)\cr
#' 'S','s'   \tab c(pt2,pt))+  \tab  Draw a cubic Bezier to pt using pt2 as the second control pt (inheriting the first control point from a preceding Bezier)\cr
#' 'Q','q'   \tab c(pt1,pt))+  \tab  Draw a quadratic Bezier to pt using pt1 as the control pt \cr     
#' 'T','t'   \tab pt+ \tab Draw a quadratic Bezier curve to pt (inheriting the control from a preceding Bezier)\cr
#' 'A','a'  \tab c(rxy, theta, LargeArc, SweepRight, pt) \tab   Draw an arc the current point to the point pt, based on an ellipse of radii rxy, rotated by \eqn{\theta} degrees. \cr
#'       \tab                 \tab   Use 1 or 0 for TRUE or FALSE in the LargeArc, SweepRigh flags \cr
#' 'Z','z'     \tab \tab Closes the Path
#' }
#' 
#' \strong{Note:}
#' \itemize{
#' \item{Each name is denoted by a single letter}
#' \item{Names can be repeated in the list (or vector)}
#' \item{Names with upper-case letters indicate the coordinate values are interpreted to be absolute.}
#' \item{Names with lower-case letters indicate the coordinate values are interpreted to be relative.}
#' \item{Z (or z), the command that closes the path, takes no value in the vector form, and in list form the value is ignored.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementGlyphNameAttribute
#' @title glyph.name
#' @description 
#' Sets a name for a glyph
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<glyph-names>[N]}{Specifies a vector of one or more glyph names}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementHorizAdvXAttribute
#' @title horiz.adv.x
#' @description 
#' Sets the amount of horizontal advance to after rendering the given horizontally orientated glyph.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies what the default horizontal advance should be after rendering in a horizontal orientation. Needs to be non-negative.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementLangAttribute
#' @title lang
#' @description 
#' Provides a set of languages ot the user agent considered to be supported by this glyph.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<language-codes>}{Specifies a language code name as defined in BCP 47.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementOrientationAttribute
#' @title orientation
#' @description 
#' Governs the orientation of the the glyph with respect to the inline-progression-direction.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'h'}}{Specifies that the \strong{glyph element} is to be exclusively rendered in a horizontal inline progression.}
#' \item{\emph{'v'}}{Specifies that the \strong{glyph element} is to be exclusively rendered in a  vertical inline progression.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementUnicodeAttribute
#' @title unicode
#' @description 
#' Sets a string of Unicode characters that are to correspond to this glyph.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<string>}{Specifies one or more Unicode characters indicating the sequence of Unicode characters which corresponds to this \emph{glyph.}}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementVertAdvYAttribute
#' @title vert.adv.y
#' @description 
#' Sets the amount to advance to occur after rendering this glyph, where both the orientation and the direction of advance are vertical.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies what the default vertical advance should be after rendering in a vertical orientation. Needs to be non-negative. Default is vert-adv-y of font.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementVertOriginXAttribute
#' @title vert.origin.x
#' @description 
#' Sets the x-coordinate of the glyphs origin to be applied to a vertically orientented text. This value is to be interpreted within the fonts coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the default x-coordinate of the origin for a \emph{glyph} relative to coordinate system when in text orientation is vertical. Default is value of vert-origin-x of font.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementVertOriginYAttribute
#' @title vert.origin.y
#' @description 
#' Sets the y-coordinate of the glyphs origin to be applied to a vertically orientented text. This value is to be interpreted within the fonts coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the default y-coordinate of the origin for a \emph{glyph} relative to coordinate system when in text orientation is vertical. Default is value of vert-origin-y of font.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementDXAttribute
#' @title dx
#' @description 
#' Set shifts in the current x-position prior to rendering.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies an x-shift for this glyph using the font's coordinate system for this glyph.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementDYAttribute
#' @title dy
#' @description 
#' Set shifts in the current y-position prior to rendering.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies a y-shift for this \emph{glyph} using the font's coordinate system for this glyph.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementFormatAttribute
#' @title format
#' @description 
#' Sets the fonts glyph font.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<glyph-format>}{Specifies a \emph{Glyph} format.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementGlyphRefAttribute
#' @title glyphRef
#' @description 
#' Sets the glyph reference identifier.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<string>}{Specifies a \emph{glyph} identifier.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to a glyph element in this svg fragment..
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a refernce to an alternative glyph.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the glyph, the whose value is interpreted within the fonts coordinate system.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the x-coordinate for the \emph{glyph} in terms of the fonts coordinate system.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementYAttribute
#' @title y
#' @description 
#' Sets the y-coordinates for the alternative glyphs..
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the y-coordinate for the \emph{glyph} in terms of the fonts coordinate system.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementG1Attribute
#' @title g1
#' @description 
#' Sets a collection of names to be used as  candiates for the first glyph  in the kerning pair.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<glyph-names>[N]}{Specifies a set of candiate 1st \emph{glyphs} in the kerning pair using a vector of glyph names.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementG2Attribute
#' @title g2
#' @description 
#' Sets a collection of names to be used as candiates for the second glyph in the kerning pair.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<glyph-names>[N]}{Specifies a set of candiate 2nd \emph{glyphs} in the kerning pair using a vector of glyph names.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementKAttribute
#' @title k
#' @description 
#' Sets an how much to  decrease the spacing between the two glyphs in the kerning pair
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies an reduction in the spacing, relative to the font coordinate system, between the two \emph{glyphs} of the kerning pair. ( Required.)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementU1Attribute
#' @title u1
#' @description 
#' Sets the  first glyphs candidates.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<glyph-unicode>[N]}{Specifies possible 1st \emph{glyphs} in the \emph{kerning pair} using a vector of Unicode characters or Unicode ranges.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementU2Attribute
#' @title u2
#' @description 
#' Sets the  second glyphs candidates.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<glyph-unicode>[N]}{Specifies possible 2nd \emph{glyphs} in the \emph{kerning pair} using a vector of Unicode characters or Unicode ranges.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name HrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to the animations target element.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies animation target via an \emph{IRI} reference}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name IDAttribute
#' @title id
#' @description 
#' Sets a unique id of this element.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<name>}{Specifies name to assign to an element. Should be unique.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Light Source Elements}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the rectangular region into which the referenced document is placed.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{height} of the rectangular region into which the image element is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to a source image.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies an image by way of an \emph{IRI} reference.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementWidthAttribute
#' @title width
#' @description 
#' Set the width of the region into which the image is to be placed.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{width} of the rectangular region into which the \strong{image} element is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the left side of the rectangular region where the image is to be placed.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the left hand side rectangular region into which the image element is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementYAttribute
#' @title y
#' @description 
#' Sets y-coordinate of the top side of the rectangular region where the image is to be placed.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the top side rectangular region into which the image element is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name KeyPointsAttribute
#' @title keyPoints
#' @description 
#' Sets the points corresponding to the keyTime values. The keyTime and keyPoints together form a contraint that at each specific keyTime, the object should be located at the corresponding key point. This constaint may cause the object to move faster or slower along the path between the intervals defined by the keytimes/keypoints. Another of saying this is that keyTime-keyPoints are used to control the pacing of the motion along the path.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric-in-the-[0,1]-range>[N]}{Specifies points as a numeric vector with values in the (0-1) range, with 0 being the start, and 1 being the end. The length of this value should match in length of the keytimes attribute value.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name KeySplinesAttribute
#' @title keySplines
#' @description 
#' Sets a set of Bzier control points associated with the keyTimes attribute.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<coordinates>[[N]][4]}{A list of Bezier control points associated with the \emph{'keyTimes'} list. Each pt has 4 values, \emph{x1, y1, x2, y2} with values in the range between 0 and 1.}
#' \item{<coordinates>[4,N]}{A 4xN matrix whose columns are the Bezier control points associated with the \emph{'keyTimes'} list. Each pt has 4 values, x1, y1, x2, y2 with values in the range between 0 and 1.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name KeyTimesAttribute
#' @title keyTimes
#' @description 
#' Sets the time values  corresponding to the keyPoint values. The keyTime and keyPoints together form a contraint that at each specific keyTime, the object should be located at the corresponding key point. This constaint may cause the object to move faster or slower along the path between the intervals defined by the keytimes/keypoints. Another of saying this is that keyTime-keyPoints are used to control the pacing of the motion along the path.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<numeric>[N]}{A list of time values used to control the pacing of the animation. Each time in the list corresponds to a value in the values attribute list}
#' \item{<numeric>}{A vector of time values used to control the pacing of the animation. Each time in the list corresponds to a value in the values attribute list}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name LineElementX1Attribute
#' @title x1
#' @description 
#' Sets the x-coordinate of the first point of the line.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-axis coordinate of the starting point of the \strong{line}. Default is zero.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name LineElementX2Attribute
#' @title x2
#' @description 
#' Sets the x-coordinate of the second point of the line
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-axis coordinate of the ending point of the \strong{line}. Default is zero.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name LineElementY1Attribute
#' @title y1
#' @description 
#' Sets the y-coordinate of the first point of the line
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-axis coordinate of the starting point of the \strong{line} element. Default is zero.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name LineElementY2Attribute
#' @title y2
#' @description 
#' Sets the y-coordinate of the second point of the line
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-axis coordinate of the ending point of the \strong{line} element. Default is zero.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementGradientTransformAttribute
#' @title gradientTransform
#' @description 
#' Sets a coordinate transformation to be applied to the linear gradient. This coordinate transformation can constructed as the composition of a sequence of the simpler basic linear transformations.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<transform-list>}{Specifies sequence transforms of the gradient. Exotic effects, such as skewing can be made using these additional transforms. The default is the identity.}
#' }
#' 
#' @section Details:
#' A \strong{transform-list} is named list of coordinate transforms to be applied in the order in which they appear. 
#' For example:
#' \code{ list(translate=c(100,20), scale=1.2, rotate=c(30,100,20))}
#' The list names and 
#' corresponding values (all numeric)
#' are summarized in the following table
#' \strong{Transforms}
#' \tabular{lll}{
#' name     \tab value  \tab action \cr
#' matrix   \tab  a 2x3 matrix m. \tab Transforms coordinates x,y to x'y' by c(x',y',1)<-m \%*\% c(x,y,1), where m'<-rbind(m,c(0,0,1). \cr
#' translate \tab x or c(x,y) \tab Translates by c(x, y). If only x is specified, y is set to 0. \cr
#' scale     \tab sx or c(sx, sy) \tab Scales by sx, sy. If only sx is specified, sy=sx. \cr
#' rotate    \tab \eqn{\theta} or c( \eqn{\theta},x,y). \tab Rotates by theta degrees about the point c(x,y). If only the  \eqn{\theta} is specified, then x=y=0. \cr
#' skewX    \tab \eqn{\theta_x} \tab Skews along the x-axis by an angle of \eqn{\theta_x} , where \eqn{\theta_x} is interpreted in units of degrees.\cr
#' skewY    \tab \eqn{\theta_y}  \tab Skews along the y-axis by an angle of \eqn{\theta_y} , where \eqn{\theta_y} is interpreted in units of degrees.\cr
#' }
#' @section Animatable:
#' Using:  \code{\link[=animateTransform]{animateTransform}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementGradientUnitsAttribute
#' @title gradientUnits
#' @description 
#' Governs whether to interpret the coordinates of x1, y1, x2, y2 as either objectBoundingBox or userSpaceOnUse.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that the gradient values for \emph{'x1'}, \emph{'y1'}, \emph{'x2'} and \emph{'y2'} are given in terms of the user coordinate system in effect at the time when the gradient element is referenced.}
#' \item{\emph{'objectBoundingBox'}}{Specifies that the gradient values for \emph{'x1'}, \emph{'y1'}, \emph{'x2'} and \emph{'y2'} are given in terms fractions (or percentages) of the bounding box of the target element to which the gradient is applied. In this case c(0, 0) is the coordinates of the upper left-hand corner of the bounding, and c(1, 0) is the coordinates of the lower right-hand corner of the bounding box.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to a linearGradient element.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifes an \emph{IRI} reference to \emph{'linearGradient'} or \emph{'radialGradient'}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementSpreadMethodAttribute
#' @title spreadMethod
#' @description 
#' Governs the behaviour that should occur if the gradient starts or ends inside the bounds of the target rectangle.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'pad'}}{Specifies to extend the painting beyond the \emph{gradient} vector of the \strong{linearGradient}, by using terminal colors found at the end points. (Default)}
#' \item{\emph{'reflect'}}{Specifies to extend the painting beyond the \emph{gradient} vector of the \strong{linearGradient}, by reflecting the gradient pattern. The reflections are continued until the entire gradient region is filled. For example, we might have a pattern of red white and blue (red at the start of the gradient vector, blue at the end), and then observe: red white blue blue white red red white blue.}
#' \item{\emph{'repeat'}}{Specifies to extend the painting beyound the \emph{gradient} vector of the \strong{linearGradient}, by repeating the gradient pattern until the region is filled. For example, For example, we might have a pattern of red white and blue (red at the start of the gradient vector, blue at the end), and then observe: red white blue red white blue red white blue.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementX1Attribute
#' @title x1
#' @description 
#' Sets the x-coordinate of the starting point for a linear gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the starting point of the \emph{gradient} vector. Can be numeric or percentage.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementX2Attribute
#' @title x2
#' @description 
#' Sets the x-coordinate of the ending point for a linear gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the ending point of the \emph{gradient} vector. Can be numeric or percentage.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementY1Attribute
#' @title y1
#' @description 
#' Sets the y-coordinate of the starting point for a linear gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the starting point of the \emph{gradient-vector} of a \strong{linearGradient element}. Can be numeric or percentage.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementY2Attribute
#' @title y2
#' @description 
#' Sets the y-coordinate of the ending point for a linear gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the ending point of the gradient-vector* of a \strong{linearGradient element}. Can be numeric or percentage.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name MPathElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to the path element that is used the path motion for animateMotion.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies an \emph{IRI} reference to the path element to be used to define the path motion.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=mpath]{mpath}}}
#' }
#' @keywords internal
NULL


#' @name MarkerElementRefXAttribute
#' @title refX
#' @description 
#' Sets the x-coordinate of the marker reference point within the marker coordinate system.  Upon rendering, the marker reference point coincides with the point on the curve where the marker is to be attached.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the \strong{marker} position. Default=0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerElementRefYAttribute
#' @title refY
#' @description 
#' Sets the y-coordinate of the marker reference point within the marker coordinate system.  Upon rendering, the marker reference point coincides with the point on the curve where the marker is to be attached.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the \strong{marker} position. Default=0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerHeightAttribute
#' @title markerHeight
#' @description 
#' Sets the height of the marker viewport.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the height of the marker viewport. Must be non-negative. The default is 3.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerUnitsAttribute
#' @title markerUnits
#' @description 
#' Determines how to interpret marker coordinates, the choices being either using the stroke width as 1 unit (strokeWidthst), or using the units inherited from current user coordinate system ( userSpaceOnUse).
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that \emph{'markerWidth'}, \emph{'markerHeight'} and any coordinate values of marker contents are in terms of the user coordinate system in effect at the time when this marker is referenced.}
#' \item{\emph{'strokeWidth'}}{Specifies that \emph{'markerWidth'}, \emph{'markerHeight'} and any-coordinate values of the marker contents are given in terms of a coordinate system which has been scaled in such a way that the current stroke has a width of 1 in that system.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerWidthAttribute
#' @title markerWidth
#' @description 
#' Sets the width of the viewport into which the marker is to be fitted
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the width of the marker. Default=3.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the largest possible offscreen buffer.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>[1 or 2]}{Specifies the \emph{height} of the rectangle defining the offscreen buffer used in computing the masked image. The resulting masked image is the intersection of the mask and that buffer. The default is y=.1, height=1.2, maskUnits=\emph{'objectBoundingBox'}. Note: \eqn{height geq 0}.s if a value of \emph{'120'} were specified.Animatable. yes.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementMaskContentUnitsAttribute
#' @title maskContentUnits
#' @description 
#' Governs whether to interpret the units for coordinates of the contents of mask either as  as fractions of the bounding box (objectBoundingBox) or using the units inherited from current user coordinate system ( userSpaceOnUse).
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that the coordinate system for contents is given terms of the user coordinate system in effect at the time of \strong{mask} referencing.}
#' \item{\emph{'objectBoundingBox'}}{Specifies that the coordinate system for contents is given terms of the bounding box of the object to which the \strong{mask} is applied.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementMaskUnitsAttribute
#' @title maskUnits
#' @description 
#' Governs whether to interpret the coordinates x,y,width, height as objectBoundingBox or userSpaceOnUse
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that the coordinate system for the mask attributes \emph{'x'}, \emph{'y'}, \emph{'width'} and \emph{'height'} represent values are given in terms of the user coordinate system effective at the time of mask referencing.}
#' \item{\emph{'objectBoundingBox'}}{Specifies that the coordinate system for the mask attributes \emph{'x'}, \emph{'y'}, \emph{'width'} and \emph{'height'} are given in terms of fractions or percentages of the bounding box of the object to which the mask is applied. (Default)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementWidthAttribute
#' @title width
#' @description 
#' Sets the width of the largest possible offscreen buffer.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{width} of the rectangle defining the offscreen buffer used in computing the masked image. The resulting masked image is the intersection of the mask and that buffer. The default width=1.2 when maskUnits=\emph{'objectBoundingBox'}. Note: \eqn{width geq 0}}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the left-side of the rectangular region defining the largest possible offscreen buffer.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of left side of a rectangle defining the offscreen buffer used in computing the masked image. The resulting masked imageis the intersection of the mask and that buffer. The default is x=.1, maskUnits=\emph{'objectBoundingBox'}).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementYAttribute
#' @title y
#' @description 
#' Sets y coordinate of the top-side of the rectangular region defining the largest possible offscreen buffer.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of top side of a rectangle defining the offscreen buffer used in computing the masked image. The resulting masked imageis the intersection of the mask and that buffer. The default is y=.1, maskUnits=\emph{'objectBoundingBox'}).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaxAttribute
#' @title max
#' @description 
#' Governs the maximum length of time that the animation remains active..
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<clock.value>}{Specifies the length of the maximum value of the active duration}
#' \item{\emph{'media'}}{Specifies the maximum value of the active duration as the intrinsic media duration.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name MinAttribute
#' @title min
#' @description 
#' Governs the minimum length of time that the animation remains active.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<clock.value>}{Specifies the length of the minimum value of the active duration}
#' \item{\emph{'media'}}{Specifies the minimum value of the active duration as the intrinsic media duration.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OnAbortEventAttribute
#' @title onabort
#' @description 
#' Sets the script to be executed when an abort event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when an \emph{SVGAbort} event is fired. \emph{SvgAbort} occurs when page loading stops before an element has been allowed to be completely loaded.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnActivateEventAttribute
#' @title onactivate
#' @description 
#' Sets the script to execute when an activate event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{activate} event has fired and has bubbled/targeted this element. \emph{Activate} occurs through a mouse click or keypress.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnBeginEventAttribute
#' @title onbegin
#' @description 
#' Sets the script to execute when an begin event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{beginEvent} event is fired. A \emph{beginEvent} occurs at the start of an animation.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OnClickEventAttribute
#' @title onclick
#' @description 
#' Sets the script to execute when an click event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{click} event has fired and has bubbled/targeted this element. \emph{Click} is a mousedown and mouseup on the same location.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnEndEventAttribute
#' @title onend
#' @description 
#' Sets the script to execute when an end event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{endEvent} event is fired. An \emph{endEvent} occurs at the end of an animation.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OnErrorEventAttribute
#' @title onerror
#' @description 
#' Sets the script to execute when an error event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when an \emph{SVGError} event is fired. \emph{SvgErrpr} occurs when either a script error occurs or an element fails to load properly.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnFocusInEventAttribute
#' @title onfocusin
#' @description 
#' Sets the script to execute when an focusin event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{focusin} event has fired and has bubbled/targeted this element. \emph{Focusoin} occurs when gaining focus.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnFocusOutEventAttribute
#' @title onfocusout
#' @description 
#' Sets the script to execute when an focusout event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{focusout} event has fired and has bubbled/targeted this element. \emph{Focusout} occurs when losing focus.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnLoadEventAttribute
#' @title onload
#' @description 
#' Sets the script to execute when an load event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when an \emph{SVGLoad} event is fired.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseDownEventAttribute
#' @title onmousedown
#' @description 
#' Sets the script to execute when an mousedown event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{mousedown} event has fired and has bubbled/targeted this element. \emph{Mousedown} occurs when the pointing device is pressed over the element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseMoveEventAttribute
#' @title onmousemove
#' @description 
#' Sets the script to execute when an mousemove event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{mousemove} event has fired and has bubbled/targeted this element. \emph{Mousemove} occurs when the pointing device ismoved over an element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseOutEventAttribute
#' @title onmouseout
#' @description 
#' Sets the script to execute when an mouseout event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{mouseout} event has fired and has bubbled/targeted this element. \emph{Mouseout} occurs when the pointing device is moved off an element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseOverEventAttribute
#' @title onmouseover
#' @description 
#' Sets the script to execute when an mouseover event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{mouseover} event has fired and has bubbled/targeted this element. \emph{Mouseover} occurs when the pointing device is onto an element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseUpEventAttribute
#' @title onmouseup
#' @description 
#' Sets the script to execute when an mouseup event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{mouseup} event has fired and has bubbled/targeted this element. \emph{Mouseup} occurs when the pointing device is released over the element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name OnRepeatEventAttribute
#' @title onrepeat
#' @description 
#' Sets the script to execute when an repeat event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when a \emph{repeatEvent} event is fired. A \emph{repeatEvent} occurs at the repeat of an animation.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OnResizeEventAttribute
#' @title onresize
#' @description 
#' Sets the script to execute when an resize event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when an \emph{SVGResize} event is fired. \emph{SvgResize} event occurs after a resizing and applies only to the outermost svg element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnScrollEventAttribute
#' @title onscroll
#' @description 
#' Sets the script to execute when an scroll event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when an \emph{SVGScroll} event is fired. \emph{SVGScroll} event occurs whenever the view is shifted. This occurs in one of two ways: direct user intervention or a change on the \emph{currentTranslate} property. The \emph{SVGScroll} event applies only to the \emph{outermost svg element}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnUnloadEventAttribute
#' @title onunload
#' @description 
#' Sets the script to execute when an unload event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when an \emph{SVGUnload} event is fired. \emph{SvgUnload} occurs when the svg document is removed from the window or frame.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnZoomEventAttribute
#' @title onzoom
#' @description 
#' Sets the script to execute when an zoom event is received
#' @section Available Attribute Values:
#' The value is a script, likely ecmascript (i.e.  javascript).
#' \describe{
#' \item{<script>}{Specifies what to execute when an \emph{SVGZoom} event is fired. The \emph{SVGZoom} event occurs if zoom level of the document changes. This occurs for one of two reasons: the direct interaction by the user orchange to the \emph{currentScale Property. The }SVGZoom* event applies only to the outermost svg element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OrientAttribute
#' @title orient
#' @description 
#' Governs the orientation of the marker,
#' @section Available Attribute Values:
#' The value is a numeric representing an angle in degrees.
#' \describe{
#' \item{\emph{'auto'}}{Specifies to rotate the \strong{marker} in such a way that the orientation automatically follows the path.}
#' \item{<angle>}{Specifies the value of much to rotate (in degrees) the \strong{marker}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name OriginAttribute
#' @title origin
#' @description 
#' Sets the origin, but has no effect in SVG, but howerver may be applicable when using CSS for positioning.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<default-value>}{Specifies the origin as defined in the \emph{SMIL} specification.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name PathAttribute
#' @title path
#' @description 
#' Governs the path of the animated motion.
#' @section Available Attribute Values:
#' The value is a path-data description and is expressed in either one of the following ways.
#' \describe{
#' \item{<path-data-list>}{Specifies the path of motion as a named list, using the \emph{path-data format} with  list names drawn from the path commands \emph{(M, m, Z, z, L, l, H, h, V, v)} and values being the points for which those commands are to operate on.}
#' \item{<path-data-vector>}{Specifies the path of the motion as a vector; using the \emph{path-data format built} from path commands \emph{(M, m, Z, z, L, l, H, h, V, v)} and values being the points for which those commands are to operate on.}
#' }
#' 
#' @section Path-Data Details:
#' Path-data is a description consisting of a collection of pairs of path commands and values.  
#' Path-data is be represented in one of two ways, either as an named list or as a vector.
#' In the named list representation, the names are letters-tokens for commands and the corresponding values play the role of the parameters for those commands.
#' \code{list(M=c(100,100), L=c(200,200), h=10, Z=NULL)}
#' In the vector representation, each name is a letter-token (of class character) followed by the corresponding values, again playing the role of the parameters for those commands. 
#' \code{c('M', c(100,100), 'L', c(200,200), 'h', 10, 'Z')}
#' In the following we write pt for a point c(x,y).
#' 
#' \strong{Path Data Command Table}
#' \tabular{lll}{
#' Name  \tab Values   \tab    Interpetion \cr
#' 'M','m'   \tab pt+   \tab    Move the current point to a new location (without drawing) \cr
#' 'L','l'   \tab pt+   \tab    Draw a line from the current point to pt \cr
#' 'H','h'   \tab (x)+     \tab    Draw a horizontal line from the current point \cr
#' 'V','v'   \tab (y)+     \tab    Draw a vertical line from the current\cr
#' 'C','c'   \tab c(pt1,pt2,pt)+  \tab  Draw a cubic Bezier curve to pt with control points pt1,pt2, (x2,y2)\cr
#' 'S','s'   \tab c(pt2,pt))+  \tab  Draw a cubic Bezier to pt using pt2 as the second control pt (inheriting the first control point from a preceding Bezier)\cr
#' 'Q','q'   \tab c(pt1,pt))+  \tab  Draw a quadratic Bezier to pt using pt1 as the control pt \cr     
#' 'T','t'   \tab pt+ \tab Draw a quadratic Bezier curve to pt (inheriting the control from a preceding Bezier)\cr
#' 'A','a'  \tab c(rxy, theta, LargeArc, SweepRight, pt) \tab   Draw an arc the current point to the point pt, based on an ellipse of radii rxy, rotated by \eqn{\theta} degrees. \cr
#'       \tab                 \tab   Use 1 or 0 for TRUE or FALSE in the LargeArc, SweepRigh flags \cr
#' 'Z','z'     \tab \tab Closes the Path
#' }
#' 
#' \strong{Note:}
#' \itemize{
#' \item{Each name is denoted by a single letter}
#' \item{Names can be repeated in the list (or vector)}
#' \item{Names with upper-case letters indicate the coordinate values are interpreted to be absolute.}
#' \item{Names with lower-case letters indicate the coordinate values are interpreted to be relative.}
#' \item{Z (or z), the command that closes the path, takes no value in the vector form, and in list form the value is ignored.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name PathLengthAttribute
#' @title pathLength
#' @description 
#' Sets the desired length of the path in user units.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies a path length, in user units, given to the user agent whose goal is to attempt to match that value by using an appropriate amount of scaling. This can affect the rendering of text along that path, or path stroke operations and possibly even animation along the path.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=path]{path}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the pattern element
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies a tile \emph{height.} (Must be non-negative).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to another pattern element residing in the current fragment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a reference to a pattern element.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementPatternContentUnitsAttribute
#' @title patternContentUnits
#' @description 
#' Governs whether to interpret the coordinate of the contents as fractions of the of the pattern bounding box (objectBoundingBox), or to simply inherit (userSpaceOnUse).
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that the coordinate system for the contents of the \strong{pattern element} is the user coordinate system at the time of the \strong{pattern element} referencing. Thus the measurement units \emph{patternContentUnits} coincides with the \emph{userSpaceUnits}.}
#' \item{\emph{'objectBoundingBox'}}{Specifies that the coordinate system for contents of the \strong{pattern element} is given terms of the bounding box of the object to which the pattern \strong{pattern element} is applied.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementPatternTransformAttribute
#' @title patternTransform
#' @description 
#' Sets an optional coordinate transformation to be applied prior to rendering the pattern.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<transform-list>}{Specifies sequence transforms of the \strong{pattern element}. Exotic effects, such as skewing can be made using these additional transforms. The default is the identity.}
#' }
#' 
#' @section Details:
#' A \strong{transform-list} is named list of coordinate transforms to be applied in the order in which they appear. 
#' For example:
#' \code{ list(translate=c(100,20), scale=1.2, rotate=c(30,100,20))}
#' The list names and 
#' corresponding values (all numeric)
#' are summarized in the following table
#' \strong{Transforms}
#' \tabular{lll}{
#' name     \tab value  \tab action \cr
#' matrix   \tab  a 2x3 matrix m. \tab Transforms coordinates x,y to x'y' by c(x',y',1)<-m \%*\% c(x,y,1), where m'<-rbind(m,c(0,0,1). \cr
#' translate \tab x or c(x,y) \tab Translates by c(x, y). If only x is specified, y is set to 0. \cr
#' scale     \tab sx or c(sx, sy) \tab Scales by sx, sy. If only sx is specified, sy=sx. \cr
#' rotate    \tab \eqn{\theta} or c( \eqn{\theta},x,y). \tab Rotates by theta degrees about the point c(x,y). If only the  \eqn{\theta} is specified, then x=y=0. \cr
#' skewX    \tab \eqn{\theta_x} \tab Skews along the x-axis by an angle of \eqn{\theta_x} , where \eqn{\theta_x} is interpreted in units of degrees.\cr
#' skewY    \tab \eqn{\theta_y}  \tab Skews along the y-axis by an angle of \eqn{\theta_y} , where \eqn{\theta_y} is interpreted in units of degrees.\cr
#' }
#' @section Animatable:
#' Using:  \code{\link[=animateTransform]{animateTransform}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementPatternUnitsAttribute
#' @title patternUnits
#' @description 
#' Governs whether the pattern coordinate for x, y, width, and height are to be interpreted as fractions of the bounding box or to be inherited from the user space. objectBoundingBox or userSpaceOnUse.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that the units for \strong{pattern element} attribute values for \emph{'x'}, \emph{'y'}, \emph{'width'} and \emph{'height'} are derived from user coordinate system effective at the time of the \strong{pattern element} referencing.}
#' \item{\emph{'objectBoundingBox'}}{Specifies that the units for \strong{pattern element} attribute values for \emph{'x'}, \emph{'y'}, \emph{'width'} and \emph{'height'} are given in terms of fractions or percentages of the bounding box of the object to which the pattern is being applied. (Default)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementWidthAttribute
#' @title width
#' @description 
#' Sets the width of the tile of a pattern element
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the title \emph{width.} (Must be non-negative)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate (left) of the tile of the pattern element
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the left-hand side of a tile}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate (top) of the tile of the pattern element.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the top side of a tile}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PolygonElementPointsAttribute
#' @title points
#' @description 
#' Sets the points corresponding to the vertices of the polygon.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<coordinates>[2,N]}{Specifies the vertices of the \strong{polygon} (closed \emph{polyline}) by taking the points defined by the columns of this matrix, with adjacent columns corresponding to adjacent vertices. The points are interpreted in the user coordinate system.}
#' \item{<coordinates>[[N]][2]}{Specifies the vertices of the \strong{polygon} (closed polyine) by taking the points given in by this unnamed list, with adjacent list entries corresponding to adjacent vertices. The points are interpreted in the user coordinate system.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=polygon]{polygon}}}
#' }
#' @keywords internal
NULL


#' @name PolylineElementPointsAttribute
#' @title points
#' @description 
#' Sets the points corresponding to the vertices of the polyline.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<coordinates>[2,N]}{Specifies the vertices of the \strong{polyline} by taking the points defined by the columns of this matrix, with adjacent columns corresponding to adjacent vertices. The points are interpreted in the user coordinate system.}
#' \item{<coordinates>[[N]][2]}{Specifies the vertices of the \strong{polyline} by taking the points given in by this unnamed list, with adjacent list entries corresponding to adjacent vertices. The points are interpreted in the user coordinate system.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=polyline]{polyline}}}
#' }
#' @keywords internal
NULL


#' @name PreserveAspectRatioAttribute
#' @title preserveAspectRatio
#' @description 
#' Governs the aspect ration preservation  and alignment of an image when scaling.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{\emph{'<align>'}}{Specities the \emph{alignment directive} (See details below)}
#' \item{\emph{'c( <defer>, <align>)'}}{Specifies both a \emph{defer directive} and an \emph{alignment directive}. (See details below)}
#' \item{\emph{'c(<align> <meet-or-Slice>)'}}{Specifies both an \emph{alignment directive} and a \emph{meet-or-slice directive}. (See details below)}
#' \item{\emph{'c( defer <align> <meet-or-Slice>)'}}{Specifies a \emph{defer}, an \emph{alignment directive} and a \emph{meet-or-slice directive}. (See details below)}
#' }
#' 
#' @section Details: 
#' A preserveAspectRatio value is a vector, which consists of mandatory alignment directive, possibly prepended with an optional defer directive and possibly
#' postpended with an optional meet-or-slice directive.
#' 
#' \strong{The Align Directives} (mandatory, pick one)
#' \tabular{ll}{
#' xMinYMin  \tab Place the viewBox in the top-left hand corner of the viewport, and force uniform scaling. \cr
#' xMidYMin  \tab Place the viewBox at the top of the viewport and center it horizontally with respect to the viewport, and force uniform scaling. \cr
#' xMaxYMin  \tab Place the viewBox at the top-left hand corner of the viewport, and force uniform scaling. \cr
#' xMinYMid   \tab Place the viewBox to be centered at the left edge of the viewport, and force uniform scaling. \cr
#' xMidYMid   \tab Place the viewBox to be centered at the center of the viewport, and force uniform scaling. This is the default. \cr
#' xMaxYMid  \tab Place the viewBox to be centered at the right edge of the viewport, and force uniform scaling. \cr
#' xMinYMax  \tab Place the viewBox at the lower-left hand corner of the viewport, and force uniform scaling. \cr
#' xMidYMax  \tab Place the viewBox at the center of the bottom edge of the viewport, and force uniform scaling. \cr
#' xMaxYMax  \tab Place the viewBox at the lower-lright hand corner of the viewport, and force uniform scaling.\cr
#' none  \tab Scale the graphics so that the viewBox coinsides with the viewport and ignore any meet or slice directives. 
#' }
#' (Note: if <align> is none, then the optional <meetOrSlice> value is ignored.)
#' 
#' \strong{The Meet-o-Slice Directives} (optional)
#' \tabular{ll}{
#' meet \tab Directive to scale up the graphic  as  such that the resulting viewBox is still contained within the viewPort, while still maintaining the original the aspect ratio. \cr
#' slice \tab Directive to scale up the graphic as  such that the resulting viewBox just covers the viewPort, while still maintaining the original the aspect ratio. 
#' }	
#' 
#' \strong{The Defer Directive} (optional):
#' \tabular{ll}{
#' defer \tab Directive to instruct that any 'peserveAspectRation' value set in the content takes precedence.
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementCXAttribute
#' @title cx
#' @description 
#' Sets the x-coordinate of the center of the ending-stop  circle of the radial gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the center of outermost circle of the radial gradient. (The outermost circle being the location of the final gradient stop.) Default is 0.50  .}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementCYAttribute
#' @title cy
#' @description 
#' Sets the y-coordinate of the ending-stop circle of the radial gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the center of outermost circle of the radial gradient. (The outermost circle being the location of the final gradient stop.) Default is 0.50 .}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementFXAttribute
#' @title fx
#' @description 
#' Sets the x-coordinate of the focal point of the radial gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the focal point of the radial gradient. (The focal point being the location of the initial gradient stop.) Default is 0.50  .}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementFYAttribute
#' @title fy
#' @description 
#' Sets the y-coordinate of the focal point of the radial gradient.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the focal point of the radial gradient. (The focal point being the location of the initial gradient stop.) Default is 0.50 .}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementGradientTransformAttribute
#' @title gradientTransform
#' @description 
#' Sets a coordinate transformation to be applied to the radial gradient.  This coordinate transformation can constructed as the composition of a sequence of the simpler basic linear transformations.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<transform-list>}{Specifies sequence transforms of the gradient. Exotic effects, such as skewing can be made using these additional transforms. The default is the identity.}
#' }
#' 
#' @section Details:
#' A \strong{transform-list} is named list of coordinate transforms to be applied in the order in which they appear. 
#' For example:
#' \code{ list(translate=c(100,20), scale=1.2, rotate=c(30,100,20))}
#' The list names and 
#' corresponding values (all numeric)
#' are summarized in the following table
#' \strong{Transforms}
#' \tabular{lll}{
#' name     \tab value  \tab action \cr
#' matrix   \tab  a 2x3 matrix m. \tab Transforms coordinates x,y to x'y' by c(x',y',1)<-m \%*\% c(x,y,1), where m'<-rbind(m,c(0,0,1). \cr
#' translate \tab x or c(x,y) \tab Translates by c(x, y). If only x is specified, y is set to 0. \cr
#' scale     \tab sx or c(sx, sy) \tab Scales by sx, sy. If only sx is specified, sy=sx. \cr
#' rotate    \tab \eqn{\theta} or c( \eqn{\theta},x,y). \tab Rotates by theta degrees about the point c(x,y). If only the  \eqn{\theta} is specified, then x=y=0. \cr
#' skewX    \tab \eqn{\theta_x} \tab Skews along the x-axis by an angle of \eqn{\theta_x} , where \eqn{\theta_x} is interpreted in units of degrees.\cr
#' skewY    \tab \eqn{\theta_y}  \tab Skews along the y-axis by an angle of \eqn{\theta_y} , where \eqn{\theta_y} is interpreted in units of degrees.\cr
#' }
#' @section Animatable:
#' Using:  \code{\link[=animateTransform]{animateTransform}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementGradientUnitsAttribute
#' @title gradientUnits
#' @description 
#' Governs whether to interpret the coordinates of cx, cy, r, fx, fy as either objectBoundingBox or userSpaceOnUse.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'userSpaceOnUse'}}{Specifies that \emph{'cx'}, \emph{'cy'}, \emph{'r'}, \emph{'fx'} and \emph{'fy'} represent values in the user coordinate system in effect when the radial gradient element is referenced.}
#' \item{\emph{'objectBoundingBox'}}{Specifies that the user coordinate system for attributes \emph{'cx'}, \emph{'cy'}, \emph{'r'}, \emph{'fx'} and \emph{'fy'} are given in terms of fractions (or percentages) of the bounding box of the target element to which the gradient is applied. In this case c(0, 0) is the coordinates of the upper left-hand corner of the bounding, and c(1, 0) is the coordinates of the lower right-hand corner of the bounding box. Default.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to a another radialGradient element residing in the same fragment.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a reference to a gradient element (either a linearGradient or radialGradine) using an \emph{IRI} reference.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementRAttribute
#' @title r
#' @description 
#' Sets the radius of the outer circle of the radial gradient.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the radius outermost circle of the \strong{radialGradient}. (The outermost circle being the location of the final gradient \emph{stop}.) Default is 0.50 .}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementSpreadMethodAttribute
#' @title spreadMethod
#' @description 
#' Governs the behaviour that should occur if the gradient starts or ends inside the bounds of the target rectangle.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'pad'}}{Specifies to extend the painting beyond the \emph{outermost-circle} of the \strong{radialGradient}, by using terminal color of the outermost circle. (Default)}
#' \item{\emph{'reflect'}}{Specifes to extend the painting beyond the \emph{outermost-circle} of the \strong{radialGradient}, by reflecting the gradient pattern. The reflections are continued until the entire gradient region is filled. For example, we might have a pattern of red white blue (red at the \emph{focus}, blue at the \emph{outermost-circle}) and then observe: red white blue blue white red red white blue.}
#' \item{\emph{'repeat'}}{Specifes to extend the painting beyond the \emph{outermost-circle} of the \strong{radialGradient}, by repeating the gradient pattern. The repetitions are continued until the entire gradient region is filled. For example, we might have a pattern of red white blue (red at the \emph{focus}, blue at the \emph{outermost-circle}) and then observe: red white blue red white blue red white blue.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RectElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the rectangle.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{height} of the rectangle (the distance between the top and bottom.)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RectElementRXAttribute
#' @title rx
#' @description 
#' Sets the x-radius of the rounded corner.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies an x-radius \eqn{r_x} radius of an ellipse to be used to round off the corners of the rectangle. Note \eqn{r_x>0}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RectElementRYAttribute
#' @title ry
#' @description 
#' Sets the y-radius of the rounded corner.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies a y-radius \eqn{r_y} radius of an ellipse to be used to round off the corners of the rectangle. Note \eqn{r_y>0}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RectElementWidthAttribute
#' @title width
#' @description 
#' Sets the width of the rectangle.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{width} of a rectangle (distance between the left and right sides).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RectElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the left side of the rectangle.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the left-hand side of the rectangle.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RectElementYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate of the top of the rectangle.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the top side of the rectangle.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RepeatCountAttribute
#' @title repeatCount
#' @description 
#' Governs the number of iterations of the animation.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<numeric>}{Specifies the total number of cycles through the anaimation.  (can be fraction).}
#' \item{\emph{'indefinite'}}{Specifies to repeat indefinitely.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name RepeatDurAttribute
#' @title repeatDur
#' @description 
#' Governs the total amount of time that the animation can continue (including repeats)
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<clock.value>}{Specifies a duration during which the animation is repeated.}
#' \item{\emph{'indefinite'}}{Specifies to repeat indefinitely.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name RequiredExtensionsAttribute
#' @title requiredExtensions
#' @description 
#' Sets a check-list of IRI references to required extensions. The user agent will check against the entries, return true only if all entries are supported.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<extensions>[N]}{Specifies as a character vector, a list of \emph{IRI} references which identify the required extensions, Evaluates to true provide if all of the given extensions are supported, false otherwise. If false, element and all children are skipped. Often used with \strong{switch} element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name RequiredFeaturesAttribute
#' @title requiredFeatures
#' @description 
#' Sets a check-list of required features, used to determine whether an given element is renderable.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<features>[N]}{Specifies a list of features. If all features are supported by the user agent, returns true, else false. Intended to be used in conjunction of \strong{switch} element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name RestartAttribute
#' @title restart
#' @description 
#' Provides the conditions for a restart of an animation.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'always'}}{Specifies the animation can be restarted at any time. (Default).}
#' \item{\emph{'whenNotActive'}}{Specifies the animation can only be restarted when it is not active.}
#' \item{\emph{'never'}}{Specifies the animation cannot be restarted for the duration of the parent container.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name RotateAttribute
#' @title rotate
#' @description 
#' Governs the rotation of an object along a path.
#' @section Available Attribute Values:
#' The value is a numeric representing an angle in degrees.
#' \describe{
#' \item{\emph{'auto'}}{Specifies that as the target element moves along the path, its orientation is to be continously adjusted by an \eqn{\theta(t)}, such that at any time \eqn{t} the vector \eqn{(cos(\theta(t)), sin(\theta(t))} lies in the direction of the objects trajectory. Since, at any given moment, the direction of the trajectory is a vector tangent to the path in the direction of the motion, the orientation of the element with respect to the path is continously maintained.}
#' \item{\emph{'auto-reverse'}}{Specifies that as the target element moves along the path, its orientation is to be continously adjusted by an \eqn{\theta(t)}, such that at any time \eqn{t} the vector \eqn{(-cos(\theta(t)), -sin(\theta(t))} lies in the direction of the objects trajectory.  Both \emph{auto} and \emph{auto-reverse}  maintain the orientation of the element with respect to the path, but the \emph{auto-reverse} image is a contionus reflection of the \emph{auto} image through a moving reference point on the path corresponding to the origin in the targets coordinate system.}
#' \item{<angle>}{Specifies to apply a constant rotational transformation on target element, where the rotational angle is the specified number of degrees.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementBaseProfileAttribute
#' @title baseProfile
#' @description 
#' Sets a minimal SVG language profile which considered to be necessary for proper rendering.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<profile-name>}{Specifies a minimum SVG language profile considered necessary for correct content rendering.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the svg.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{height} of an \emph{svg}. This can be  applied to both for an embedded \strong{svg} and an outer-most \strong{svg} (i.e. svgR).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementVersionAttribute
#' @title version
#' @description 
#' Sets the svg version number which this  fragment is based upon.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the \emph{SVG} language version.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementWidthAttribute
#' @title width
#' @description 
#' Sets the width of the svg.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{width} of the \strong{svg}. This applies to both for an embedded \strong{svg} and an outer-most \strong{svg} (i.e. \strong{svgR}).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the left side of an embedded svg. (Revelant only for embedded svg elements)
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the left hand side of an embedded \strong{svg}. This has no effect on the outer most \strong{svg}(i.e. \strong{svgR}). The default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementYAttribute
#' @title y
#' @description 
#' Sets y-coordinate of the top side of an embedded svg.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the top side of an embedded \emph{svg}. This has no effect on the outer most \emph{svg}(i.e. \emph{svgR}). The default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name ScriptElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to  the scripting code.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies an \emph{IRI} reference the script code.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name ScriptElementTypeAttribute
#' @title type
#' @description 
#' Sets which scripting language to use.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<content-type>[N]}{Specifies the scripting language for the given \emph{'script'} element. Default is \emph{""""""""""""""""application/ecmascript""""""""""""""""}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name SetElementToAttribute
#' @title to
#' @description 
#' Sets the value for the attribute to be assign and  maintained for  the duration of the set element.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<value>}{Specifies a new attribute value to be set to.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name StopElementOffsetAttribute
#' @title offset
#' @description 
#' Governs the placement of the gradient stop.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric | percentage>}{Specifies a fraction (or percentage) determining location of the \strong{stop} element. For \strong{linearGradient} elements this fraction is given by distance from start to stop over the distance from start to end. Here start is the point c(x1, y1) or xy1 and end is the point c(x2, y2) or xy2. For \strong{radialGradient} elements the fraction is computed using the outermost circle and the focal point.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=stop]{stop}}}
#' }
#' @keywords internal
NULL


#' @name StyleAttribute
#' @title style
#' @description 
#' Sets the style information for the current element.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<character>}{Specifies style information for this single element.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=stop]{stop}}}
#' }
#' @keywords internal
NULL


#' @name StyleElementMediaAttribute
#' @title media
#' @description 
#' Sets a set of one or more media descriptors used to indicate intended destination medium for the style information.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<media-descriptors>[N]}{Specifies the intended destination medium for style information Default is \emph{all} .}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=style]{style}}}
#' }
#' @keywords internal
NULL


#' @name StyleElementTitleAttribute
#' @title title
#' @description 
#' Sets an advisory title for the style element.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{\emph{'advisory-title'}}{Specifies an advisory title for the style element (HTML 4)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=style]{style}}}
#' }
#' @keywords internal
NULL


#' @name StyleElementTypeAttribute
#' @title type
#' @description 
#' Sets the style sheet language of the element's contents.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{\emph{'content-type'}}{Specifies the style sheet language of the element's contents, such as \emph{""""""""""""""""text/css""""""""""""""""}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=style]{style}}}
#' }
#' @keywords internal
NULL


#' @name SystemLanguageAttribute
#' @title systemLanguage
#' @description 
#' Sets which  languages to match against user preferences.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<character>[N]}{Specifies system languages.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name TRefElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to chararcter data for this tref..
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies an \emph{IRI} reference to an element containing the content character data to be used.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=tref]{tref}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementDXAttribute
#' @title dx
#' @description 
#' Set shifts in the current x-position prior to rendering.
#' @section Available Attribute Values:
#' The value  represents one or more lengths, given as a vector.
#' \describe{
#' \item{<length>[N]}{Specifies a sequence of x-shifts starting with the current text position for the characters within this \strong{tspan} or any of its descendants.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementDYAttribute
#' @title dy
#' @description 
#' Set shifts in the current y-position prior to rendering.
#' @section Available Attribute Values:
#' The value  represents one or more lengths, given as a vector.
#' \describe{
#' \item{<length>[N]}{Specifies a sequence of y-shifts starting with the current text position for the characters within this \strong{tspan} or any of its descendants}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementRotateAttribute
#' @title rotate
#' @description 
#' Sets a sequence of  one or more rotations to be applied to consecutive glyphs upon rendering.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<angle>[N]}{Specifies an additional rotation (in degrees) to be applied sequentiolly to each character within this \strong{tspan}. If the number of characters exceeds the number of rotations, the extra character receive the last rotation.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementTextLengthAttribute
#' @title textLength
#' @description 
#' Sets the intended text length.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies a presumed total sum of all of the advance values that correspond to character data within this element to assist by the user agent to in achieving exact alignment. The presumed total sum should include the advance value on the \emph{glyph} (horizontal or vertical), the effect of properties \emph{'kerning'}, \emph{'letter.spacing'} and \emph{'word.spacing'} and any adjustments due to attributes \emph{'dx'} and \emph{'dy'} on \emph{'tspan'} elements.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementXAttribute
#' @title x
#' @description 
#' Sets the tspan x-coordinate(s)
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>[N]}{Specifies the absolute x-coordinate for the first n characters where n is the length of the vector x. (default is 0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementYAttribute
#' @title y
#' @description 
#' Set tspan y-coordinate(s).
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{Specifies the absolute y-coordinate for the first n characters where n is the length of the vector x. (default is 0.)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TextElementDXAttribute
#' @title dx
#' @description 
#' Set shifts in the current x-position prior to rendering.
#' @section Available Attribute Values:
#' The value  represents one or more lengths, given as a vector.
#' \describe{
#' \item{<length>[N]}{Specifies a sequence of x-shifts starting with the current text position for the characters within this \strong{text} element or any of its descendants.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TextElementDYAttribute
#' @title dy
#' @description 
#' Set shifts in the current y-position prior to rendering.
#' @section Available Attribute Values:
#' The value  represents one or more lengths, given as a vector.
#' \describe{
#' \item{<length>[N]}{Specifies a sequence of y-shifts starting with the current text position for the characters within this element or any of its descendants}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TextElementLengthAdjustAttribute
#' @title lengthAdjust
#' @description 
#' Governs the adjustments to employ to try to render the text with a length matching that specified by the textLength attribute. More specifically, indicates whether to use just spacing or a combination of spacing and glyphs compression or stretching to match the rendered text length match with the value specified by the attribute  textLength.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'spacing'}}{Specifies to the user agent, that when attempting to match the rendered text length with the value specified by the \emph{'textLength'} attribute, only spacing adjustments are allowed.}
#' \item{\emph{'spacingAndGlyphs'}}{Specifies to the user agent, that when attempting to match the rendered text length with the value specified by the \emph{textLength} attribute, both spacing and compressing/stretching of the \emph{glyphs} are allowed.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TextElementRotateAttribute
#' @title rotate
#' @description 
#' Sets a sequence of  one or more rotations to be applied to consecutive glyphs upon rendering.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<angle>[N]}{Specifies an additional rotation (in degrees) to be applied sequentiolly to each character. If the number of characters exceeds the number of rotations, the extra character receive the last rotation.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TextElementTextLengthAttribute
#' @title textLength
#' @description 
#' Sets the intended text length.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies a presumed total sum of all of the advance values that correspond to character data within this element to assist by the user agent to in achieving exact alignment. The presumed total sum should include the advance value on the \emph{glyph} (horizontal or vertical), the effect of properties \emph{'kerning'}, \emph{'letter.spacing'} and \emph{'word.spacing'} and any adjustments due to attributes \emph{'dx'} and \emph{'dy'} on \emph{'tspan'} elements.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TextElementXAttribute
#' @title x
#' @description 
#' Sets the text x-coordinate(s).
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>[N]}{Specifies the absolute x-coordinate for the first n characters where n is the length of the vector x. (default is 0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TextElementYAttribute
#' @title y
#' @description 
#' Set text y-coordinate(s).
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{Specifies the absolute y-coordinate for the first n characters where n is the length of the vector x. (default is 0.)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to path element which defines the path along which the text will be rendered.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a reference to a path element along which the \emph{glyphs} should be placed.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementMethodAttribute
#' @title method
#' @description 
#' Governs whether to allow stretching and warping of theglyphs along the given path..
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'align'}}{Specifies for rendering that uses simple 2x3 transformations with no stretching/warping of the \emph{glyphs}.}
#' \item{\emph{'stretch'}}{Specifies that rendering will convert glyph outlines to paths with endpoints and control points adjusted to be normal to the path producing possible stetching and warping. This approach is taken to insure connected \emph{glyphs} remain connect along the path.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementSpacingAttribute
#' @title spacing
#' @description 
#' Governs the spacing of individual glyphs when rendering along a given path.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'exact'}}{Specifies to the user agent the spacing between _glyphs_ that are to be rendered along a path to be rendered exactly without any adjustment along the path.}
#' \item{\emph{'auto'}}{Specifies for the user agent to adjust the spacing between \emph{glyphs} using a \emph{text-on-a-path layout algorithm}. The intension is to create a better visual apeal.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementStartOffsetAttribute
#' @title startOffset
#' @description 
#' Sets the offset from the start of the path to the initial text position,
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies an offset measured from the starting point of the \emph{'path'} to the initial position for the current text. The offset distance is measured either in percent or in the current user coordinate system and is calculated using the user agent's distance along the path algorithm. If measured in percent, then the total distance of the path is defined to be 100 percent.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name ToAttribute
#' @title to
#' @description 
#' Sets the value to be attained by the end of the animation.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<value>}{Specifies the ending attribute value of the animation.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name TransformAttribute
#' @title transform
#' @description 
#' Sets an orderd list of transform definitions to be applied prior to rendering..
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<tranform-list>}{Specifies a named list of coordinate transforms. The order in which the transforms are applied is given by the order in the list.}
#' }
#' 
#' @section Details:
#' A \strong{transform-list} is named list of coordinate transforms to be applied in the order in which they appear. 
#' For example:
#' \code{ list(translate=c(100,20), scale=1.2, rotate=c(30,100,20))}
#' The list names and 
#' corresponding values (all numeric)
#' are summarized in the following table
#' \strong{Transforms}
#' \tabular{lll}{
#' name     \tab value  \tab action \cr
#' matrix   \tab  a 2x3 matrix m. \tab Transforms coordinates x,y to x'y' by c(x',y',1)<-m \%*\% c(x,y,1), where m'<-rbind(m,c(0,0,1). \cr
#' translate \tab x or c(x,y) \tab Translates by c(x, y). If only x is specified, y is set to 0. \cr
#' scale     \tab sx or c(sx, sy) \tab Scales by sx, sy. If only sx is specified, sy=sx. \cr
#' rotate    \tab \eqn{\theta} or c( \eqn{\theta},x,y). \tab Rotates by theta degrees about the point c(x,y). If only the  \eqn{\theta} is specified, then x=y=0. \cr
#' skewX    \tab \eqn{\theta_x} \tab Skews along the x-axis by an angle of \eqn{\theta_x} , where \eqn{\theta_x} is interpreted in units of degrees.\cr
#' skewY    \tab \eqn{\theta_y}  \tab Skews along the y-axis by an angle of \eqn{\theta_y} , where \eqn{\theta_y} is interpreted in units of degrees.\cr
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}, \code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name UseElementHeightAttribute
#' @title height
#' @description 
#' Sets the height of the rectangular region into which the referenced element is to be placed.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{height} of the rectangular region into which the referenced element by use is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name UseElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to an element within this fragment to be used.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies an element or fragment to use by way of an \emph{IRI} reference. \emph{IRI} should be contained within the same document.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name UseElementWidthAttribute
#' @title width
#' @description 
#' Sets the width of the rectangular region where the element referenced by use is to be placed.
#' @section Available Attribute Values:
#' The value represents a length.
#' \describe{
#' \item{<length>}{Specifies the \emph{width} of the rectangular region into which the referenced element by use is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name UseElementXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the left side of the region where an element referenced by use is to be placed.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of the left hand side rectangular region into which the referenced element by use is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name UseElementYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate of the top edge of the region where an element referenced by use is to be placed.
#' @section Available Attribute Values:
#' The value represents a coordinate.
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of the top side rectangular region into which the referenced element by use is to be placed.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name ValuesAttribute
#' @title values
#' @description 
#' Sets thef animation values to be used for the given animation type.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<values>[[N]] (list-of-values)}{Specifies an unamed list attributes values over which to iterate.}
#' \item{<values>[N,M] (matrix-of-values)}{A matrix with columns corresponding to the attribute values. Obviously assumes that the length of each attribute value is the same. Thisos useful for defining animations involving points.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name ViewBoxAttribute
#' @title viewBox
#' @description 
#' Sets the size and placement of the viewBox. The viewBox is a rectangular region into which the viewport is mapped.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>[4] ( =c(x,y,w,h))}{Specifies the \emph{viewbox} with c( x, y) being upper left hand corner and c(w, h) being the \emph{width} and \emph{height.}}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name ViewElementViewTargetAttribute
#' @title viewTarget
#' @description 
#' Sets the target object to be for this view.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<names>}{Specifies one or more targets to be associated with this view.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name XLinkActuateAttribute
#' @title xlink.actuate
#' @description 
#' For XLink-aware processors, governs the conditions of loading the linked resource.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{\emph{'onLoad'}}{Specifies onLoad for Xlink-aware processors.This attribute is provided for backwards compatibility with \emph{SVG 1.1.}}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=pattern]{pattern}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkArcRoleAttribute
#' @title xlink.arcrole
#' @description 
#' Sets an IRI reference which is to identify some resource that describes the intended property.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies \emph{IRI} an optional reference to resource that describes an intended role.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkRoleAttribute
#' @title xlink.role
#' @description 
#' Sets an IRI reference that identifies some resource that describes the intended property.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies \emph{IRI} an optional reference to resource that describes an intended role.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkShowAttribute
#' @title xlink.show
#' @description 
#' Sets the display context in which target is intended to be placed, This applies only to Xlink aware processors.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'new'}}{Specifies \emph{new} to Xlink-aware processors. This attribute is provided for backwards compatibility with \emph{SVG 1.1}.}
#' \item{\emph{'replace'}}{Specifies \emph{replace} to Xlink-aware processors. This attribute is provided for backwards compatibility with \emph{SVG 1.1}.}
#' \item{\emph{'embed'}}{Specifies \emph{embed} to Xlink-aware processors. This attribute is provided for backwards compatibility with \emph{SVG 1.1}.}
#' \item{\emph{'other'}}{Specifies \emph{other} to Xlink-aware processors. This attribute is provided for backwards compatibility with \emph{SVG 1.1}.}
#' \item{\emph{'none'}}{Specifies \emph{none} to Xlink-aware processors. This attribute is provided for backwards compatibility with \emph{SVG 1.1}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkTitleAttribute
#' @title xlink.title
#' @description 
#' Sets a textual description which is intended to convey the meaning of this link.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<character>}{Specifies the title attribute which is used to provide an optional description of the meaning of a link or resource for humans.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkTypeAttribute
#' @title xlink.type
#' @description 
#' Sets the type of link being used.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{\emph{'simple'}}{Only simple is available in \emph{svg1.1}.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XMLBaseAttribute
#' @title xml.base
#' @description 
#' Sets a base IRI that may differ from the the current base IRI.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies a base \emph{IRI} other than the base \emph{IRI} of the document or external entity.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Light Source Elements}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name XMLLangAttribute
#' @title xml.lang
#' @description 
#' Sets the language (such as, English) to be used.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<languageID>}{Specifies the language (e.g., English) to be used in the contents and/or attribute values of specific elements.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Light Source Elements}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name XMLSpaceAttribute
#' @title xml.space
#' @description 
#' Governs whether or not white space is preserved in character data.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'default'}}{Specifies to eat additional white space in character data.}
#' \item{\emph{'preserve'}}{Specifies to preserved additional white space in character data.}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Light Source Elements}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=mpath]{mpath}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name ZoomAndPanAttribute
#' @title zoomAndPan
#' @description 
#' Governs whether or not the outermost svg can zoom and pan.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'disable'}}{disables zooming}
#' \item{\emph{'magnify'}}{enables zooming (applies only to the for outermost \emph{svg}, typically arrising from an \emph{svgR} call)}
#' }
#' @section Animatable:
#' Not Animatable
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name feBlendModeAttribute
#' @title mode
#' @description 
#' Governs which algorithm to used for blending of the two image sources.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'normal'}}{Specifies the \emph{normal blending mode} See below.}
#' \item{\emph{'multiply'}}{Specifies the \emph{multiply blending mode} See below.}
#' \item{\emph{'screen'}}{Specifies the \emph{screen blending mode} See below.}
#' \item{\emph{'darken'}}{Specifies the \emph{darken blending mode} See below.}
#' \item{\emph{'lighten'}}{Specifies the \emph{lighten blending mode} See below.}
#' }
#' 
#' @section feBlend Mode Details:
#' feBlend Modes are defned as follows
#' 
#' \strong{normal mode (no blending)}
#' 
#' \deqn{ \alpha_{out} = 1 - (1- \alpha_{in1})  (1- \alpha_{in2}) }
#' \deqn{ \alpha_{out}  \times C_{out} =(1-\alpha_{in2})  \alpha_{in1} C_{in1} + \alpha_{in1}  C_{in1} }
#' 
#' \strong{multiply blend mode}
#' 
#' \deqn{ \alpha_{out} = 1 - (1- \alpha_{in1}) \times (1- \alpha_{in2)} }
#' \deqn{\alpha_{out}  \times C_{out} = (1-\alpha_{in2})  \alpha_{in1} C_{in1} + (1-\alpha_{in1})  \alpha_{in2} C_{in2} + \alpha_{in1} \alpha_{in2}  C_{in1}   C_{in2} }
#' 
#' \strong{screen blend mode}
#' 
#' \deqn{ \alpha_{out} = 1 - (1- \alpha_{in1}) \times (1- \alpha_{in2)} }
#' \deqn{ \alpha_{out}  \times C_{out} = \alpha_{in1} C_{in1} + \alpha_{in2} C_{in2} + \alpha_{in1} \alpha_{in2}  C_{in1}   C_{in2} }
#' 
#' \strong{darken blend mode}
#' 
#' \deqn{ \alpha_{out} = 1 - (1- \alpha_{in1}) \times (1- \alpha_{in2)} }
#' \deqn{\alpha_{out}  \times C_{out} = min( (1-\alpha_{in1})  \alpha_{in2} C_{in2} + \alpha_{in1}C_{in1}, (1-\alpha_{in2})  \alpha_{in1} C_{in1} + \alpha_{in2}C_{in2} )}
#' 
#' \strong{lighten blend mode}
#' 
#' \deqn{ \alpha_{out} = 1 - (1- \alpha_{in1}) \times (1- \alpha_{in2)}}
#' \deqn{ \alpha_{out}  \times C_{out} = max((1-\alpha_{in1}) \times \alpha_{in2} C_{in2} + \alpha_{in1}C_{in1},(1-\alpha_{in2}) \times \alpha_{in1} C_{in1} + \alpha_{in2}C_{in2})}#'
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}}
#' }
#' @keywords internal
NULL


#' @name feColorMatrixTypeAttribute
#' @title type
#' @description 
#' Governs the type of matrix operation that the feColorMatrix represents.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'matrix'}}{Specifies to interpret the \strong{feColorMatrix} values parameter as a 4x5 matrix . The result color transformation is given by premultiplying this with c(R, G.B, A, 1) Default.}
#' \item{\emph{'saturate'}}{Specifies that the values parameter is a single numeric between 0 and 1. used to perform color saturation.}
#' \item{\emph{'hueRotate'}}{Specifies that the values parameter is a single numeric representing degrees between 0 and 360, and is . used to perform hue rotation.}
#' \item{\emph{'luminanceToAlpha'}}{Specifies to produce a \emph{luminance} to \emph{alpha} effect, and does not use values}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feColorMatrix]{feColorMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feColorMatrixValuesAttribute
#' @title values
#' @description 
#' Sets the values the feColorMatrix that is to be used in the RGBA color transformation.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Depends on the value for type.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feColorMatrix]{feColorMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferAmplitudeAttribute
#' @title amplitude
#' @description 
#' Sets the amplitude of the gamma function to be used when transfer type=gamma.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numericr>}{Specifies the amplitude to be used to construct the transfer function when the type is \emph{gamma.}}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferExponentAttribute
#' @title exponent
#' @description 
#' Sets the exponent of the gamma function that is to be used when the component transfer type=gamma
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the exponent to be used to construct the transfer function when the type is \eqn{\gamma}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferInterceptAttribute
#' @title intercept
#' @description 
#' Sets the intercept to be used when the component transfer type is linear
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the intercept to be used to construct the transfer function when the type is \emph{linear}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferOffsetAttribute
#' @title offset
#' @description 
#' Sets the offset of the gamma function to be used when the component transfer type is gamma.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the \emph{offset} to be used to construct the transfer function when the type is \emph{gamma}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferSlopeAttribute
#' @title slope
#' @description 
#' Sets the slope to be used when the transfer type is linear
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the slope to be used to construct the \emph{transfer} function when the type is \emph{linear}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferTableValuesAttribute
#' @title tableValues
#' @description 
#' Sets the lookup table to be used when the transfer type is table
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>[N]}{Specifies a numerical vector to be used to the construction of the \emph{transfer function} when the type is either \emph{""""""""""""""""table""""""""""""""""} or \emph{""""""""""""""""step""""""""""""""""}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferTypeAttribute
#' @title type
#' @description 
#' Governs the model of the component transfer. (linear, table, discrete, identity, gamma)
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'identity'}}{Specifies the identify component transform (i.e. no transform).}
#' \item{\emph{'table'}}{Specifies to use a \emph{linear} interpolation of the given tableValues for the \emph{transfer function}.}
#' \item{\emph{'discrete'}}{Specifies to use a \emph{step} function produced by the tableValues for the \emph{transfer function}.}
#' \item{\emph{'linear'}}{Specifies to use a \emph{simple linear interpolation} for the \emph{transfer function}.}
#' \item{\emph{'gamma'}}{Specifies to use an \emph{exponential} for the \emph{transfer function}.}
#' }
#' 
#' @section Component Mapping Algorithm Details:
#' The compononet Mappin Algoritms are as follows:
#' 
#' \itemize{
#' \item {\strong{identity}:
#' \itemize{
#'    \item{ To use specify 
#'       \itemize{
#'           \item{type='identity'}
#'       }
#'    } 
#'    \item{ Provides no mapping. In terms of color components, for each color component C, we have:
#'     \deqn{ C^{out}= C^{in}}
#'    } 
#' }}
#' \item{\strong{linear}
#'   \itemize{ Specified by
#'      \itemize{
#'         \item{type='linear'}
#'         \item{slope=<NUMERIC>} (default=1)
#'         \item{intercept=<NUMERIC>} (default=0)
#'      }
#'      \item{Maps the colors components using a linear function with the given slope and intercept.
#'       In terms of color components 
#'      \deqn{ C^{out}= m \times C^{in} + b} where \eqn{m} is given by the value of the slope attribute and
#'      \eqn{b} is given by the value of the intercept attribute.
#'       }
#'   }
#' }
#' \item{\strong{gamma}
#'   \itemize{ Specified by
#'     \itemize{
#'        \item{type='gamma'}
#'        \item{exponent=<NUMERIC>} (default=1)
#'        \item{amplitude=<NUMERIC>} (default=1)
#'        \item{offset=<NUMERIC>} (default=0)
#'     }
#'   }
#'   \item{ Maps the colors components non-linearly using a exponential function
#'    In terms of color components 
#'    \deqn{ C_{out}= A \times C_{in}^B +C} where,  
#'    A is given by the \emph{amplitute} attribute, B by the \emph{exponent} attribute and C but the \emph{offset} attribute.
#'   }}
#' \item {\strong{table}
#' \itemize{
#'     \item{Specified by
#'        \itemize{
#'           \item{type='table'}
#'           \item{table=<NUMERIC VECTOR>}
#'        }
#'     }
#'     \item Maps the colors components using a continous piece-wise linear function 
#'       defined by the \emph{valueTable} attribute. In terms of color components and a \emph{valueTable} attribute, v=c(v1,...,vn)
#'       for each color component \eqn{C^{in}}, we have:
#'       \deqn{C^{out}= v_k + m_k \times (v_{k+1}- v_k)}
#'       when \eqn{C^{in}<1} and where \eqn{k} and \eqn{m_k} are given by
#'       \deqn{k=floor(C^{in} \times n)}
#'       and 
#'       \deqn{m_k= C^{in} \times n mod(k) }
#'       In the case that  \eqn{C^{in}=1}, then we set \eqn{C^out=v_n}
#' }}
#' \item {\strong{discrete}
#' \itemize{
#'    \item{Specified by 
#'        \itemize{
#'           \item{type='table'}
#'           \item{table=<NUMERIC VECTOR>}
#'        }
#'     }
#'     \item {Maps the colors components using a  step function 
#'       defined by the \emph{valueTable} attribute. In terms of color components and a \emph{valueTable} attribute, v=c(v1,...,vn)
#'       for each color component \eqn{C^{in}}, we have:
#'       \deqn{C^{out}= v_k}
#'       when \eqn{C^{in}<1} and where k is given by
#'       \deqn{k=floor(C^{in} \times n)}
#'       In the case that  \eqn{C^{in}=1}, then we set \eqn{C^out=v_n}
#'       }
#' } }
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK1Attribute
#' @title k1
#' @description 
#' Sets the value to be used for k1 when the composite operator is arithmetic.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the \emph{k1} coefficient for the \emph{arithmetic composite operator}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK2Attribute
#' @title k2
#' @description 
#' Sets the value to be used for k2 when the composite operator is arithmetic.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the \emph{k2} coefficient for the \emph{arithmetic composite operator}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK3Attribute
#' @title k3
#' @description 
#' Sets the value to be used for k3 when the composite operator is arithmetic.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the \emph{k3} coefficient for the \emph{arithmetic composite operator}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK4Attribute
#' @title k4
#' @description 
#' Sets the value to be used for k4 when the composite operator is arithmetic.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the \emph{k4} coefficient for the \emph{arithmetic composite operator}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeOperatorAttribute
#' @title operator
#' @description 
#' Governs the behaviour of the composite operation.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'over'}}{Specifies to apply the \emph{over} operator (aka Painters algorithm) Used to display both \emph{in1} and \emph{in2} but places \emph{in1} over \emph{in2.} (aka. Painters algorithm)}
#' \item{\emph{'in'}}{Specifies to apply the \emph{Porter/Duff in} operator.  Used to  display only  the portion of \emph{in1}  intersecting \emph{in2}  without displaying any portion of \emph{in2}.}
#' \item{\emph{'out'}}{Specifies to apply the \emph{Porter/Duff out} operator, Used to display only the portion of \emph{in1} outside \emph{in2} and without displaying any portion of  \emph{in2}.}
#' \item{\emph{'atop'}}{Specifies to apply the \emph{Porter/Duff atop} operator. Used to display the portion of  \emph{in1}  inside \emph{in2}, and the portion of  \emph{in2} outside \emph{in1}.}
#' \item{\emph{'xor'}}{Specifies to apply the \emph{Porter/Duff xor} operator. Used to display  those portions  \emph{in1} and \emph{in2} that do not intersect.}
#' \item{\emph{'arithmetic'}}{Specifies the \emph{arithmetic} operator, which is linear in \emph{in1}, \emph{in2} and \eqn{in1 \times in2}.}
#' }
#' 
#'  @section Composite Operator Details: 
#'  The following defines each \emph{composite operator}. In particular, how the resulting output alpha channel (\eqn{\alpha_{out}}) and
#'  the resulting color channels \eqn{\C_{out}}) are computed from the input channels of \emph{in1} and \emph{in2}.
#'  
#'  \strong{over operator}
#'  \deqn{ \alpha_{out} = \alpha_{in1}  + \alpha_{in2}  (1-\alpha_{in1})  }
#'  \deqn{ \alpha_{out}  \times C_{out}  = \alpha_{in1}  C_{in1} + \alpha_{in2} (1-\alpha_{in1}) C_{in2} }
#'  
#'  \strong{in operator}
#'  \deqn{ \alpha_{out} = \alpha_{in1}  \alpha_{in2}   }
#'  \deqn{ \alpha_{out}  \times C_{out} = \alpha_{in1}  \alpha_{in2}  C_{in1}  }
#'  
#'  \strong{out operator}
#'  \deqn{ \alpha_{out} = \alpha_{in1} (1- \alpha_{in2}) )  }
#'  \deqn{ \alpha_{out}  \times C_{out} = \alpha_{in1} (1- \alpha_{in2})  C_{in1}  }
#'  
#'  \strong{atop operato}r
#'  \deqn{ \alpha_{out} = \alpha_{in1} \alpha_{in2} + (1-\alpha_{in1}) \alpha_{in2}  }
#'  \deqn{ \alpha_{out}  \times C_{out} = \alpha_{in1} \alpha_{in2} C_{in1} + \alpha_{in2} (1-\alpha_{in1}) C_{in2} }
#'  
#'  \strong{xor operator}
#'  \deqn{ \alpha_{out} = \alpha_{in1} ( 1- \alpha_{in2}) + (1-\alpha_{in1}) \alpha_{in2}  }
#'   \deqn{ \alpha_{out}  \times C_{out} = \alpha_{in1}( 1- \alpha_{in2})  C_{in1} + \alpha_{in2} (1-\alpha_{in1}) C_{in2} }
#'  
#'  \strong{arithemetic operator}
#'  \deqn{ \alpha_{out} = max(0,min(1,k1 \alpha_{in1} \alpha_{in2} + k2 \alpha_{in1}+ k3 \alpha_{in2} +k4))}
#'  \deqn{ C_{out}= k1  C_{in1}  C_{in2}  +   k2  C_{in1} + k3  C_{in2} + k4 }#'
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementBiasAttribute
#' @title bias
#' @description 
#' Sets a bias shift which is to be applied, component-wise,  to the result of the convolution.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the value to be added to each image component after applying the \emph{kernelMatrix} and \emph{divisor.}}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementDivisorAttribute
#' @title divisor
#' @description 
#' Sets a divisor to be  applied  to the results of the convolution. This is generally used  for evening out the color values.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies a divisor to scale down the resulting image component values obtained by multiply by the \emph{kernelMatrix}.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementEdgeModeAttribute
#' @title edgeMode
#' @description 
#' Governs how the convolution is computed along the edges.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'duplicate'}}{Specifies to extended the input image along the borders by duplication color values.}
#' \item{\emph{'wrap'}}{Specifies to extended the input image along the borders by using a wrap around of the color values.}
#' \item{\emph{'none'}}{Specifies to extended the input image along the borders by using a zero color value.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementKernelMatrixAttribute
#' @title kernelMatrix
#' @description 
#' Sets the kernelMatrix to be used in the convolution filter.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{<numeric>[N]}{Specifies the entries of the \emph{kernelMatrix}.}
#' \item{matrix[N.M]}{Specifies the  \emph{kernelMatrix} using a matrix.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementKernelUnitLengthAttribute
#' @title kernelUnitLength
#' @description 
#' Governs the spacing between successive rows and columns in the kernel matrix, That spacing, dx dy ,is interpreted in the current filter units
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1 or 2]}{Specifies a dx, (dy) distance(s) in current filter units between successive rows and columns. Default for dx is 1 pixel, default for dy is dx.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementOrderAttribute
#' @title order
#' @description 
#' Sets the number of cells in each dimension of the kernel matrix to be used in a convolution.
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1 or 2]}{Specifies the number of columns and rows to use for the \emph{kernelMatrix.} Typically usage is c(3, 3).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementPreserveAlphaAttribute
#' @title preserveAlpha
#' @description 
#' Governs whether or not  to apply the convolution to the alpha channel.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'FALSE'}}{Specifies to apply the \emph{convolution} to all channels, including the \emph{alpha channel}.}
#' \item{\emph{'TRUE'}}{Specifies to apply the \emph{convolution} to only the colors channels. (Not the \emph{alpha channel}!)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementTargetXAttribute
#' @title targetX
#' @description 
#' Sets the x-position of the target pixel relative to the convolution matrix.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<integer>}{Specifies the placement of the \emph{convolution matrix} implied by specifying the target x-coordinate relative to the \emph{convolution} origin. By default, the \emph{convolution matrix} is centered about the target.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementTargetYAttribute
#' @title targetY
#' @description 
#' Sets the y-position of the target pixel relative to the convolution matrix.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<integer>}{Specifies the placement of the \emph{convolution matrix} implied by specifying the target y-coordinate relative to the \emph{convolution} origin. By default, the \emph{convolution matrix} is centered about the target.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feDiffuseLightingDiffuseConstantAttribute
#' @title diffuseConstant
#' @description 
#' Sets the kd term of the phong lighting model.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies a scaling factor for the resulting RGB components, It is the \eqn{kd} in \emph{Phong lighting model}. Default=1.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}}
#' }
#' @keywords internal
NULL


#' @name feDiffuseLightingKernelUnitLengthAttribute
#' @title kernelUnitLength
#' @description 
#' Sets the dx dy values to be used in the surface normal calculations.
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1 or 2]}{Specifies the dx, (dy), to be used to build the implicit pixel grid for the filter. By default, dx is 1 pixel, dy is the value of dx.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}}
#' }
#' @keywords internal
NULL


#' @name feDiffuseLightingSurfaceScaleAttribute
#' @title surfaceScale
#' @description 
#' Sets the A_in scale factor used to produce the height of the surface.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies scaling factor to be used to scale the \emph{alpha channel} to produce the height of surface. Thus it is the maximum possible height of the surface and realized when the \emph{alpha channel} =1. The default is 1.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}}
#' }
#' @keywords internal
NULL


#' @name feDisplacementMapScaleAttribute
#' @title scale
#' @description 
#' Sets the displacement scaling factor to be applied.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the displacement scale factor, as given in the by the \strong{feDisplacement} Map equations. Note: a value of 0 results in no displacement.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name feDisplacementMapXChannelSelectorAttribute
#' @title xChannelSelector
#' @description 
#' Governs which channel (R|G|B|A) of the image given by in2 to be used for the computing the amount of displacement of of the image given by in1 in the x direction.
#' @section Available Attribute Values:
#' The value can be any one of the following:
#' \describe{
#' \item{\emph{'R'}}{Specifies to use the R channel from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the x-axis.}
#' \item{\emph{'G'}}{Specifies to use the G channel from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the x-axis.}
#' \item{\emph{'B'}}{Specifies to use the B channel from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the x-axis.}
#' \item{\emph{'A'}}{Specifies to use the A channel from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the x-axis. (The default.)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name feDisplacementMapYChannelSelectorAttribute
#' @title yChannelSelector
#' @description 
#' Governs which channel (R|G|B|A) of the image given by in2 to be used for the computing the amount of displacement of of the image given by in1 in the y direction.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{\emph{'R'}}{Specifies to use the \emph{R-channel} from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the y-axis.}
#' \item{\emph{'G'}}{Specifies to use the \emph{G-channel} from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the y-axis.}
#' \item{\emph{'B'}}{Specifies to use the \emph{B-channel} from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the y-axis.}
#' \item{\emph{'A'}}{Specifies to use the \emph{A-channel} from \emph{'in2'} to calculate a displacement of the pixels in \emph{'in1'} along the y-axis. (The default.)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name feDistantLightAzimuthAttribute
#' @title azimuth
#' @description 
#' Sets the angle between the x-axis and the projection into the xy-plane of the vector from the origin to the light source.
#' @section Available Attribute Values:
#' The value is a numeric representing an angle in degrees.
#' \describe{
#' \item{<angle>}{Specifies the azimuth angle (in degrees). The azimuth angle is defined as the angle between the x-axis and the projection into the xy-plane of vector from the origin to the light source. This angle is measured clockwise.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feDistantLight]{feDistantLight}}}
#' }
#' @keywords internal
NULL


#' @name feDistantLightElevationAttribute
#' @title elevation
#' @description 
#' Sets the angle between the xy-plane and the vector from the origin to the light source.
#' @section Available Attribute Values:
#' The value is a numeric representing an angle in degrees.
#' \describe{
#' \item{<angle>}{Specifies the elevation angle (in degrees). The elevation angle is defined as the between the z-axis and the vector from the origin to the light source.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feDistantLight]{feDistantLight}}}
#' }
#' @keywords internal
NULL


#' @name feGaussianBlurStdDeviationAttribute
#' @title stdDeviation
#' @description 
#' Sets the x and y standard deviations to be used by the Gaussian Blur algorithm..
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1 or 2]}{Specifies the standard deviations \eqn{\sigma_x}, \eqn{\sigma_y} for the blur operation along the x and y axis respectively. The default for \eqn{\sigma_x} is 1, the default for \eqn{\sigma_y} is \eqn{\sigma_x}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feGaussianBlur]{feGaussianBlur}}}
#' }
#' @keywords internal
NULL


#' @name feImageElementHrefAttribute
#' @title xlink.href
#' @description 
#' Sets an IRI reference to a source image of the feImage element.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<IRI>}{Specifies an \emph{IRI} reference to the image source.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: No .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' }
#' @keywords internal
NULL


#' @name feMorphologyOperatorAttribute
#' @title operator
#' @description 
#' Governs whether to erode (make thin) or dilate (make fatter).
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'erode'}}{Specifies to \emph{erode} (to thin)}
#' \item{\emph{'dilate'}}{Specifies to \emph{dilate} (to fatten)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feMorphology]{feMorphology}}}
#' }
#' @keywords internal
NULL


#' @name feMorphologyRadiusAttribute
#' @title radius
#' @description 
#' Governs the amount of  dilation or erodion in the x and y directions..
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1 or 2]}{Specifies the radii \eqn{r_x}, \eqn{r_y}, used in the x, y-directions to produce the \emph{erosion/dilation} effects. The default for \eqn{r_x} is 0, the default for \eqn{r_y} is \eqn{r_x}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feMorphology]{feMorphology}}}
#' }
#' @keywords internal
NULL


#' @name feOffsetDxAttribute
#' @title dx
#' @description 
#' Sets how much  of an  offset, the input graphics should have along the x-axis.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies to offset the input graphic by the amount dx along the x-axis, where dx is is given in the \emph{primitiveUnits} terms of the \strong{filter}. Default for dx is dx=0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feOffset]{feOffset}}}
#' }
#' @keywords internal
NULL


#' @name feOffsetDyAttribute
#' @title dy
#' @description 
#' Sets how much  of an  offset, the input graphics should have along the y-axis.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies to offset the input graphic by the amount dy along the y-axis, where dy is is given in the \emph{primitiveUnits} terms of the \emph{filter}. Default is dy=0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feOffset]{feOffset}}}
#' }
#' @keywords internal
NULL


#' @name fePointLightXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the point light source.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the x-coordinate of the light source location with respect to the coordinates system on the \strong{filter} produce by \emph{primitiveUnits}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=fePointLight]{fePointLight}}}
#' }
#' @keywords internal
NULL


#' @name fePointLightYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate of the point light source.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the y-coordinate of the light source location with respect to the coordinates system on the filter produce by \emph{primitiveUnits}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=fePointLight]{fePointLight}}}
#' }
#' @keywords internal
NULL


#' @name fePointLightZAttribute
#' @title z
#' @description 
#' Sets the z-coordinate of the point light source.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the z-coordinate of the light source location with respect to the coordinates system on the filter produce by \emph{primitiveUnits}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=fePointLight]{fePointLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingKernelUnitLengthAttribute
#' @title kernelUnitLength
#' @description 
#' Sets the dx dy values to be used in the surface normal calculations.
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1 or 2]}{Specifies the dx, (dy) to be used in calculating the unit normal vector. The default for dx is a small distance, the default for dy is dx. It is advised that at minimal, one should specifies filterRes or kernelUnitLength to assure consistency across displays.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingSpecularConstantAttribute
#' @title specularConstant
#' @description 
#' Sets the  ks term in the Phong lighting model.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies a scaling factor for the resulting RGB components, It is the \emph{kd} in \emph{Phong lighting model}. Default=1.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingSpecularExponentAttribute
#' @title specularExponent
#' @description 
#' Sets the  specular term (the exponent)  in the specular lighting.  This  controls how shiny the object appears.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the \emph{exponent} for \emph{specular} term, used to control how shiny the object appears . Typical values should range from 1.0 to 128.0. (128 being very shiny.) Default=1.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingSurfaceScaleAttribute
#' @title surfaceScale
#' @description 
#' Sets the A_in scale factor used to produce the height of the surface.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies scaling factor to be used to scale the \emph{alpha channel} to produce the height of surface. Thus it is the maximum possible height of the surface and realized when the \emph{alpha channel} =1. The default is 1.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightLimitingConeAngleAttribute
#' @title limitingConeAngle
#' @description 
#' Sets the angle in degrees between the spot light axis and the spot light cone.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies an angle (in degrees) that defines a cone of light emulating a spot light. Default is no cone.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightPointsAtXAttribute
#' @title pointsAtX
#' @description 
#' Sets the X-location of where the spot light is pointing.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<coordinate>}{Specifies the x-coordinate of where light source is point to. The coordinate is given in terms of the \emph{primitiveUnits} of the coordinate system  established on the \strong{filter element}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightPointsAtYAttribute
#' @title pointsAtY
#' @description 
#' Sets the Y-location of where the spot light is pointing.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<coordinate>}{Specifies the y-coordinate of where light source is point to. The coordinate is given in terms of the \emph{primitiveUnits} of the coordinate system  established on the \strong{filter element}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightPointsAtZAttribute
#' @title pointsAtZ
#' @description 
#' Sets the Z-location of where the spot light is pointing.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<coordinate>}{Specifies the z-coordinate of where light source is point to. The coordinate is given in terms of the \emph{primitiveUnits} of the coordinate system  established on the \strong{filter element}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightSpecularExponentAttribute
#' @title specularExponent
#' @description 
#' Sets the exponent controlling the focus of the spot light.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the \emph{specular exponent}, which controls the shininess 0 is essentially ambient light, infinity approaching a mirror like surface. (Default=1).}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightXAttribute
#' @title x
#' @description 
#' Sets the x-coordinate of the spot light source.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<numeric>}{Specifies the x-coordinate of the light source location with respect to the coordinates system on the \strong{filter} produced by \emph{primitiveUnits}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightYAttribute
#' @title y
#' @description 
#' Sets the y-coordinate of the spot light source.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the y-coordinate of the light source location with respect to the coordinates system on the filter produce by \emph{primitiveUnits}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightZAttribute
#' @title z
#' @description 
#' Sets the z-coordinate of the spot light source.
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<number>}{Specifies the z-coordinate of the light source location with respect to the coordinates system on the filter produce by \emph{primitiveUnits}. (Default=0)}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Light Source Elements}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceBaseFrequencyAttribute
#' @title baseFrequency
#' @description 
#' Sets the base frequency for the noise function.
#' @section Available Attribute Values:
#' The value is a numeric vector having length 1 or 2.
#' \describe{
#' \item{<numeric>[1 or 2] (=fx or c(fx,fy))}{Specifies the base frequency parameter, \eqn{f_x}, \eqn{f_y}, used to generate the noise function in the X, Y directions respectively. The default for \eqn{f_x} is 0 (no effect), the default for \eqn{f_y} is \eqn{f_x}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceNumOctavesAttribute
#' @title numOctaves
#' @description 
#' Sets the numOctaves parameter to be used by the noise generation function for feTurbulence
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<integer>}{Specifies \emph{numOctaves} parameter to be used in noise function. The default is 1.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceSeedAttribute
#' @title seed
#' @description 
#' Sets the seed for the pseudo random number generator used in creating the turbulence effect..
#' @section Available Attribute Values:
#' The value is defined as follows:
#' \describe{
#' \item{<non-negative integer>}{Specifies the seed for pseudo random number generator to be used in the \emph{noise} generation. Default is 0.}
#' }
#' @section Animatable:
#' Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
#' Supports Additive: Yes .
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceStitchTilesAttribute
#' @title stitchTiles
#' @description 
#' Governs whether or not to stitch the tiles together when performing the turbulence operation..
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'stitch'}}{Specifies to the user agent to adjust  \emph{x-baseFrequency} \eqn{f_x} and \emph{y-baseFrequency} \eqn{f_y} values in such a way as to maintain a smooth transition at the border of the tiles containing the turbulence.}
#' \item{\emph{'noStitch'}}{Specifies to the user agent to make no attempt to achieve smooth transitions at the borders of the tiles which contain a turbulence function. (Default)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceTypeAttribute
#' @title type
#' @description 
#' Governs which model of turbublence to use.
#' @section Available Attribute Values:
#' The value can be either of the one of the following:
#' \describe{
#' \item{\emph{'fractalNoise'}}{Specifies to the filter primitive to use the \emph{noise} function.}
#' \item{\emph{'turbulence'}}{Specifies to the filter primitive to use the \emph{turbulence} function.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL

