#' @name alignment-baseline-presentationAttribute
#' @title alignment.baseline
#' @description 
#' Governs baseline alignment with parent, that is which baseline of this element is to be aligned with the corresponding baseline of the parent.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'after-edge'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's \emph{alignment} baseline.}
#' \item{\emph{'\emph{'alphabetic'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's  \emph{alphabetic}  baseline.}
#' \item{\emph{'\emph{'auto'}'}}{Specifies to set the alignment point to be the dominant-baseline of the parent.}
#' \item{\emph{'\emph{'baseline'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's  \emph{dominant}  baseline}
#' \item{\emph{'\emph{'before-edge'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's  \emph{before-edge} baseline}
#' \item{\emph{'\emph{'central'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's  \emph{central} baseline}
#' \item{\emph{'\emph{'hanging'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's  \emph{hanging} baseline}
#' \item{\emph{'\emph{'ideographic'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's \emph{ideographic}  baseline}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit \emph{alignment-baseline} value from the parent text content element..}
#' \item{\emph{'\emph{'mathematical'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's  \emph{mathematical}  baseline}
#' \item{\emph{'\emph{'middle'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's \emph{middle} baseline}
#' \item{\emph{'\emph{'text-after-edge'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's \emph{text-after-edge} baseline}
#' \item{\emph{'\emph{'text-before-edge'}'}}{Specifies to set the alignment point to be aligned with the parent text content element 's \emph{text-before-edge} baseline}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name baseline-shift-presentationAttribute
#' @title baseline.shift
#' @description 
#' Governs shifing of the base-line relative to the dominant baseline of the parent.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Specifies to shift the baseline by the given amount of length.}
#' \item{<percentage>}{Specifies to shift the baseline by the amount given as  percentage of the line-height of text.}
#' \item{\emph{'\emph{'baseline'}'}}{Specifies a zero baseline shift, than is no shifting of the baseline.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to Inherit the \emph{baseline-shift} from the parent of this element..}
#' \item{\emph{'\emph{'sub'}'}}{Specifies to shift the baseline to the subscript position}
#' \item{\emph{'\emph{'super'}'}}{Specifies to shift the baseline to the superscript position}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name clip-presentationAttribute
#' @title clip
#' @description 
#' Governs clipping along the bounds of the elements viewport.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<shape>}{Specifies the rectangle to clip to.}
#' \item{\emph{'\emph{'auto'}'}}{Specifies to clip  this element by the boundry of its viewport.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies that the clipping region for this element should be inherited from its parent,}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name clip-path-presentationAttribute
#' @title clip.path
#' @description 
#' Specifies path for clipping.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<clipPath-Element>}{Specifies a \strong{clipPath} element to be used for clipping}
#' \item{<funciri>}{Specifies a reference to the \strong{clipPath} to be used for clipping by using the functional IRI notation.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies that the clip-path to be applied to  this element should  be inherited from this elements parents.}
#' \item{\emph{'\emph{'none'}'}}{Specifies no clipping to occur.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=clipPath]{clipPath}}}
#' }
#' @keywords internal
NULL


#' @name clip-rule-presentationAttribute
#' @title clip.rule
#' @description 
#' Specifies whether to use an even-odd rule for clipping
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'evenodd'}'}}{Specifies the use of the even-odd rule to determine the interior.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to use the same rule as the parent for the determination of the interior.]}
#' \item{\emph{'\emph{'nonzero'}'}}{Specifies to use the \emph{non-zero rule} to determine the interior.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name color-presentationAttribute
#' @title color
#' @description 
#' Defines *currentColor*, which is may be used indirectly as fall-back color for the properties:  *fill*, *stroke*, *stop-color*, *flood-color* and *lighting-color*
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<color>}{Sets the color. The color may be expressed in one of three ways: name (i.e. red),  or  numeric (#f00 or #ff0000) or  rgb (rgb(255,0,0)). An optional ICC color may also be specified as a 2nd component of the color vector.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies the color is to be inherited from the ancestor..}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=stop]{stop}}}
#' }
#' @keywords internal
NULL


#' @name color-interpolation-presentationAttribute
#' @title color.interpolation
#' @description 
#' Governs the optimization strategy for color-interpolation.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'auto'}'}}{Specifies an auto selection of the color interpolation.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the method of color interpolation from the parents.}
#' \item{\emph{'\emph{'linearRGB'}'}}{Specifies to use a  linearized RGB color space for color interpolation}
#' \item{\emph{'\emph{'sRGB'}'}}{Specifies to use sRGB color space for color interpolation}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name color-interpolation-filters-presentationAttribute
#' @title color.interpolation.filters
#' @description 
#' Governs the color space for imaging operations performed via filter effects.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'auto'}'}}{Specifies to auto select the color-interpolation filter}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the color-interpolation methodology from the parent.}
#' \item{\emph{'\emph{'linearRGB'}'}}{Specifies to use the linearized RGB color space for the filter effects color operations .}
#' \item{\emph{'\emph{'sRGB'}'}}{Specifies to use the sRGB color space for the filter effects color operations .}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name color-profile-presentationAttribute
#' @title color.profile
#' @description 
#' Governs what color profile to use.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{Specifies an IRI reference to the color profile to be used}
#' \item{<name>}{Specifies the color profile by name}
#' \item{\emph{'\emph{'auto'}'}}{Specifies to auto select the color profile}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the color profiel from the parents color profile.}
#' \item{\emph{'\emph{'sRGB'}'}}{Specifies to use the sRGB  color profile}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name color-rendering-presentationAttribute
#' @title color.rendering
#' @description 
#' Governs the color space for gradient interpolations, color animations and alpha compositing.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'auto'}'}}{Specifies to employ a trade-off strategy of optimization of color-rending  which balances speed vs quality.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the color-rendering optimzation from the parent.}
#' \item{\emph{'\emph{'optimizeQuality'}'}}{Specifies to optimize the color-rendiering  for quality.}
#' \item{\emph{'\emph{'optimizeSpeed'}'}}{Specifies to optimize the color-rendiering  for speed}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}}
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name cursor-presentationAttribute
#' @title cursor
#' @description 
#' Governs the type of cursor to display.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<funciri>}{Specifies a reference to the image for \strong{cursor} by using  functional IRI notation.}
#' \item{\emph{'\emph{'auto'}'}}{Specifies to automatically select cursor based on current context.}
#' \item{\emph{'\emph{'crosshair'}'}}{Specifies that cursor is to  be a \emph{crosshair} cursor.}
#' \item{\emph{'\emph{'default'}'}}{Specifies that cursor is to  be the \emph{default} cursor.   This will most likely appear to be an arrow.}
#' \item{\emph{'\emph{'e-resize'}'}}{Specifies that the right edge of the cursor is to move.}
#' \item{\emph{'\emph{'help ] ]'}'}}{Specifies that the cursor is to be a help cursor ( question mark or balloon)}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies that the cursor is inherited from parent.}
#' \item{\emph{'\emph{'move'}'}}{Specifies a move (drag) of the cursor.}
#' \item{\emph{'\emph{'n-resize'}'}}{Specifies that the top edge of the cursor is to move.}
#' \item{\emph{'\emph{'ne-resize'}'}}{Specifies that the top-right corner of the cursor is to move.}
#' \item{\emph{'\emph{'nw-resize'}'}}{Specifies that the top-left corner of the cursor is to move.}
#' \item{\emph{'\emph{'pointer'}'}}{Specifies that the cursor is a linking cursor. (often a small hand)}
#' \item{\emph{'\emph{'s-resize'}'}}{Specifies that the bottom edge of the cursor is to move.}
#' \item{\emph{'\emph{'se-resize'}'}}{Specifies that the bottom-right corner of the cursor is to move.}
#' \item{\emph{'\emph{'sw-resize'}'}}{Specifies that the bottom-left corner of the cursor is to move.}
#' \item{\emph{'\emph{'text'}'}}{Specifies that the cursor is a text select cursor (usually an I beam)}
#' \item{\emph{'\emph{'w-resize'}'}}{Specifies that the left edge of the cursor is to move.}
#' \item{\emph{'\emph{'wait'}'}}{Specifies that the cursor is a wait cursor ( often a watch or hour-class)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name direction-presentationAttribute
#' @title direction
#' @description 
#' Controls the base writing direction of text
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit tne direction from an ancestor.}
#' \item{\emph{'\emph{'ltr'}'}}{Specifies a left to right direction.}
#' \item{\emph{'\emph{'rtl'}'}}{Specifies a right to left direction.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name display-presentationAttribute
#' @title display
#' @description 
#' Governs whether an element or container will be rendered.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'block'}'}}{Specifies a block display.}
#' \item{\emph{'\emph{'compact'}'}}{Specifies a compack display.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the display from the parent.}
#' \item{\emph{'\emph{'inline'}'}}{Specifies  the display to be \emph{inline}.}
#' \item{\emph{'\emph{'inline-table'}'}}{Specifies  the display to be \emph{inline-table}.}
#' \item{\emph{'\emph{'list-item'}'}}{Specifies  the display to be \emph{list-item}.}
#' \item{\emph{'\emph{'marker'}'}}{Specifies  the display to be \emph{marker}.}
#' \item{\emph{'\emph{'none'}'}}{Specifies not to render this element or its children.}
#' \item{\emph{'\emph{'run-in'}'}}{Specifies  the display to be \emph{run-in}.}
#' \item{\emph{'\emph{'table'}'}}{Specifies  the display to be \emph{table}.}
#' \item{\emph{'\emph{'table-caption'}'}}{Specifies  the display to be \emph{table-caption}.}
#' \item{\emph{'\emph{'table-cell'}'}}{Specifies  the display to be \emph{table-cell}.}
#' \item{\emph{'\emph{'table-column'}'}}{Specifies  the display to be \emph{table-column}.}
#' \item{\emph{'\emph{'table-column-group'}'}}{Specifies  the display to be \emph{table-column-group}.}
#' \item{\emph{'\emph{'table-footer-group'}'}}{Specifies  the display to be \emph{table-footer-group}.}
#' \item{\emph{'\emph{'table-header-group'}'}}{Specifies  the display to be \emph{table-header-group}.}
#' \item{\emph{'\emph{'table-row'}'}}{Specifies  the display to be \emph{table-row}.}
#' \item{\emph{'\emph{'table-row-group'}'}}{Specifies  the display to be \emph{table-row-group}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=g]{g}}, \code{\link[=svg]{svg}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name dominant-baseline-presentationAttribute
#' @title dominant.baseline
#' @description 
#' Govnerns the dominant baseline of a text element.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'alphabetic'}'}}{Specifies to use an \emph{alphabetic} baseline.}
#' \item{\emph{'\emph{'auto'}'}}{Specifies to pick a baseline depending on element, writing mode, font-size, base-line shift.}
#' \item{\emph{'\emph{'central'}'}}{Specifies to use a baseline halfway between the two baselines:  \emph{text-before-edge} and \emph{text-after-edge}.}
#' \item{\emph{'\emph{'hanging'}'}}{Specifies to use the  \emph{hanging}  baseline-table of the nominal font}
#' \item{\emph{'\emph{'ideographic'}'}}{Specifies to use an  \emph{ideographic} baseline-table of the nominal font}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the balseline from an ancestor.}
#' \item{\emph{'\emph{'mathematical'}'}}{Specifies to use  the \emph{mathematical}  baseline-table of the nominal font}
#' \item{\emph{'\emph{'middle'}'}}{Specifies to use a baseline which is offset from alphabetic baseline by 1/2  x-height of this  font.}
#' \item{\emph{'\emph{'no-change'}'}}{Specifies to use the baseline of the parent.}
#' \item{\emph{'\emph{'reset-size'}'}}{Specifies to rescale baselines for current font-size.}
#' \item{\emph{'\emph{'text-after-edge'}'}}{Specifies to position the baseline around top of the acenders.}
#' \item{\emph{'\emph{'text-before-edge'}'}}{Specifies to position the baseline around the bottom of the  descenders.}
#' \item{\emph{'\emph{'use-script'}'}}{Specifies to compute the baseline using the predominant script of the character data content.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name enable-background-presentationAttribute
#' @title enable.background
#' @description 
#' Governs the accumulation of background images of container elements.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'accumulate'}'}}{Directive to render to a 'background image canvas' if one exists ( previously created by an ancestor invoking enable-background=new ).  This is in addition to the rendering to the target device.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies the to inherit the background enable status from the parent.}
#' \item{\emph{'\emph{'new [ <x> <y> <width> <height> ]'}'}}{Specifies the creation of  a new  'background image canvas'  to overlay any existing one ( exists by way of an ancestor) and render to that. This is in addition to the rendering to the target device.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' }
#' @keywords internal
NULL


#' @name fill-presentationAttribute
#' @title fill
#' @description 
#' Defines the paints used to fill the interior of a given graphical element.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'none'}'}}{Specifies not to paint the interior of the element.}
#' \item{\emph{'\emph{'currentColor'}'}}{Specifies to use the \emph{currentColor} to paint the interior. The current color is the value of the color specified by the \emph{color} property.}
#' \item{<color>}{Specifies a paint color to fill either a shape element or at text content element. The color may be given in any one of 3 ways: name (i.e. red), numeric (#f00 or #ff0000) or as ab rgb (rgb(255,0,0)).}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to use the fill from the parent element.}
#' \item{<funciri>}{Specifies to fill using this reference to a paint server, a paint server being a \emph{pattern} or a \emph{gradient}, or a custom paint extension}
#' \item{<linearGradient>}{Specifies to fill using this \strong{linearGradient} element}
#' \item{<pattern>}{Specifies to fill using this \strong{pattern} element}
#' \item{<radialGradient>}{Specifies to fill using this \strong{radialGradient} element}
#' \item{\emph{'\emph{'currentColor'}'}}{Specifies to use the \emph{currentColor} to paint the interior. The current color is the value of the color specified by the \emph{color} property.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name fill-opacity-presentationAttribute
#' @title fill.opacity
#' @description 
#' Defines the opacity of the painting operation used to paint the interior the current object.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<opacity-value>}{Specifies the opacity value, a  number between 0 and 1 indicating the opacity to be used as fill , with 1 being opaque and 0 being transparent.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the opacity value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name fill-rule-presentationAttribute
#' @title fill.rule
#' @description 
#' Governs which algorithm to use for determination of  the  interior of the shape. When rendering a shape, this algorithm will be used to perform a  fill operation.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'evenodd'}'}}{Specifies to use even-odd rule to determine the what is inside}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to use the same \emph{fill-rule} as the parent.}
#' \item{\emph{'\emph{'nonzero'}'}}{Specifies to use the  non-zero rule to determine the what is the interior.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name filter-presentationAttribute
#' @title filter
#' @description 
#' Defines which filter is to be applied to this element. (This element being a graphical element or a container such as **svg** or **g**).
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<filter>}{Specifies  a \strong{filter} element as the value of the  \emph{filter} attribute.}
#' \item{<funciri>}{Specifies  a  reference to a \strong{filter} element given by functional IRI.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the filter from parent.}
#' \item{\emph{'\emph{'none'}'}}{Specifies that there is no  filter to be applied.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name flood-color-presentationAttribute
#' @title flood.color
#' @description 
#' Defines what color to use to flood the current filter primitive subregion.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<color>}{Sets the flood color. The color may be expressed in one of three ways: name (i.e. red),  or  numeric (#f00 or #ff0000) or  rgb (rgb(255,0,0)). An optional ICC color may also be specified as a 2nd component of the color vector.}
#' \item{c(<color>, <icccolor>)}{Specifies a vector with  color name followed by an ICC color.}
#' \item{\emph{'\emph{'currentColor'}'}}{Specifies to use the \emph{currentColor} as the flood color. The current color is the value of the color specified by the \emph{color} property.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the flood color from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feFlood]{feFlood}}}
#' }
#' @keywords internal
NULL


#' @name flood-opacity-presentationAttribute
#' @title flood.opacity
#' @description 
#' Defines the opacity value to be used across the entire filter primitive subregion.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<opacity-value>}{Specifies the opacity value, a  number between 0 and 1 indicating the opacity to be used as fill , with 1 being opaque and 0 being transparent.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the opacity value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feFlood]{feFlood}}}
#' }
#' @keywords internal
NULL


#' @name font-family-presentationAttribute
#' @title font.family
#' @description 
#' Governs the candidiates of  font families to be used in text rendering.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<family-name | generica-family>+}{Specifies a vector of consisting of  font-family names or a generic-font-family names.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the font family from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name font-size-presentationAttribute
#' @title font.size
#' @description 
#' Governs the size of the font .
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Specify font size. If no units are provided, the value is interpreted as a height in the current user coordinate system.}
#' \item{<percentage>}{Specifies the  font size as a percentage of parent font-size}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit font-size from parent element.}
#' \item{\emph{'\emph{'large'}'}}{Specifies to set the font size to be \emph{large}.}
#' \item{\emph{'\emph{'larger'}'}}{Specifies to set  font-size to be larger than parent font-size}
#' \item{\emph{'\emph{'medium'}'}}{Specifies to set font size to be \emph{normal}.}
#' \item{\emph{'\emph{'small'}'}}{Specifies to set the font size to be \emph{'small'}.}
#' \item{\emph{'\emph{'smaller'}'}}{Specify the font-size to be smaller  than parent font-size}
#' \item{\emph{'\emph{'x-large'}'}}{Specifies to set the font size to be \emph{'x-large'}.}
#' \item{\emph{'\emph{'x-small'}'}}{Specifies to set the font size to be \emph{'x-small'}.}
#' \item{\emph{'\emph{'xx-large'}'}}{Specifies to set the font size to be \emph{'xx-large'}.}
#' \item{\emph{'\emph{'xx-small'}'}}{Specifies to set the font size to be  \emph{'xx-small'}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name font-size-adjust-presentationAttribute
#' @title font.size.adjust
#' @description 
#' Govern the aspect values to preserve the when using a substitute font.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Specifies the aspect ratio value(font-size divide by x-height) to preserve the x-height for the first font candidate substitution.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies the to inherit the aspect ratio value from the parent.}
#' \item{\emph{'\emph{'none'}'}}{Specifies to make no aspect ratio adjustment.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name font-stretch-presentationAttribute
#' @title font.stretch
#' @description 
#' Governs the amount of condensing or expansion in the glyphs used to render the text.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'condensed'}'}}{Specifies the font stretch rank=3}
#' \item{\emph{'\emph{'expanded'}'}}{Specifies the font stretch rank=7}
#' \item{\emph{'\emph{'extra-condensed'}'}}{Specifies the font stretch rank=2}
#' \item{\emph{'\emph{'extra-expanded'}'}}{Specifies the font stretch rank=8}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies the font  to inhert font-stretch from parent}
#' \item{\emph{'\emph{'narrower'}'}}{Specifies the font stretch rank=-1+stretch rank of parent}
#' \item{\emph{'\emph{'normal'}'}}{Specifies the font stretch rank=5 (default)}
#' \item{\emph{'\emph{'semi-condensed'}'}}{Specifies the font stretch rank=4}
#' \item{\emph{'\emph{'semi-expanded'}'}}{Specifies the font stretch rank=6}
#' \item{\emph{'\emph{'ultra-condensed'}'}}{Specifies the font stretch rank=1}
#' \item{\emph{'\emph{'ultra-expanded'}'}}{Specifies the font stretch rank=9}
#' \item{\emph{'\emph{'wider'}'}}{Specifies the font stretch rank=1+stretch rank of parent}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name font-style-presentationAttribute
#' @title font.style
#' @description 
#' Governs which font face to use:  normal, italic or oblique face.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to Inherit the font style from the parent.}
#' \item{\emph{'\emph{'italic'}'}}{Specifies to use an italicl style}
#' \item{\emph{'\emph{'normal'}'}}{Specifies to use a normal style}
#' \item{\emph{'\emph{'oblique'}'}}{Specifies to use an oblique style}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name font-variant-presentationAttribute
#' @title font.variant
#' @description 
#' Governs the which font-variant to use for lower case characters:  normal glyphs or small-caps glyphs.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'inherit'}'}}{Inherit font-variant from the parent.}
#' \item{\emph{'\emph{'normal'}'}}{Specifies to use a normal variant style.}
#' \item{\emph{'\emph{'small-caps'}'}}{Specifies to use a small-caps  variant style.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name font-weight-presentationAttribute
#' @title font.weight
#' @description 
#' Governs the boldness or lightness of the glyphs used to render the text
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'100'}'}}{Sets the font-weight to be 100.}
#' \item{\emph{'\emph{'200'}'}}{Sets the font-weight to be 200.}
#' \item{\emph{'\emph{'300'}'}}{Sets the font-weight to be 300.}
#' \item{\emph{'\emph{'400'}'}}{Sets the font-weight to be 400.}
#' \item{\emph{'\emph{'500'}'}}{Sets the font-weight to be 500.}
#' \item{\emph{'\emph{'600'}'}}{Sets the font-weight to be 600.}
#' \item{\emph{'\emph{'700'}'}}{Sets the font-weight to be 700.}
#' \item{\emph{'\emph{'800'}'}}{Sets the font-weight to be 800.}
#' \item{\emph{'\emph{'900'}'}}{Sets the font-weight to be 900.}
#' \item{\emph{'\emph{'bold'}'}}{Sets the font-weight to be 700.}
#' \item{\emph{'\emph{'bolder'}'}}{Sets  the font-weight to be darker than inherited font-weight}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to use the  font-weight of parent.}
#' \item{\emph{'\emph{'lighter'}'}}{Sets the font-weight to be lighter than inherited font-weight}
#' \item{\emph{'\emph{'normal'}'}}{Sets the font-weight to be 400}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name glyph-orientation-horizontal-presentationAttribute
#' @title glyph.orientation.horizontal
#' @description 
#' Controls glyph orientation when the inline-progression-direction is horizontal
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<angle>}{Sets the angle of orientation (restricted to 0, 90, 180, and 270 degrees).}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the glyph orientation  from the  parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name glyph-orientation-vertical-presentationAttribute
#' @title glyph.orientation.vertical
#' @description 
#' Controls glyph orientation when the inline-progression-direction is vertical
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<angle>}{Sets the angle of orientation (restricted to 0, 90, 180, and 270 degrees).}
#' \item{\emph{'\emph{'auto'}'}}{Specifies to set orientation to 0 degrees if full-width full width,  else 90 degrees.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the glyph orientation  from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name image-rendering-presentationAttribute
#' @title image.rendering
#' @description 
#' Governs the optimization strategy of rendering images.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'auto'}'}}{Specifies to employ a trade-off strategy of image-rendering optimization which balances speed vs quality.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the image-rendering optimzation from the parent.}
#' \item{\emph{'\emph{'optimizeQuality'}'}}{Specifies to optimize the image-rendiering  for quality.}
#' \item{\emph{'\emph{'optimizeSpeed'}'}}{Specifies to optimize the image-rendiering  for speed}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name kerning-presentationAttribute
#' @title kerning
#' @description 
#' Governs kerning:  inter-glyph spacing adjustments.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Sets a value for the length for the inter-character spacing. Setting to 0, essentially diables auto kerning.}
#' \item{\emph{'\emph{'auto'}'}}{Specifies to auto adjust adjust inter-glyph spacing by using kerning tables includess with the font.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the inter-character spacing adjustment from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name letter-spacing-presentationAttribute
#' @title letter.spacing
#' @description 
#' Governs supplemental to kerning spacing between letters.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Sets a value for the amount of supplemental (to kerning) spacing between text characters.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit  the value of letter-spacing adjustment from the parent.}
#' \item{\emph{'\emph{'normal'}'}}{Specifies no supplemental (to kerning) spacing between text characters.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name lighting-color-presentationAttribute
#' @title lighting.color
#' @description 
#' Governs the color of the light source for filter primitives feDiffuseLighting and feSpecularLighting.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<color> [<icccolor>]}{Sets the color of the lighting. The color may be given in any one of 3 ways: name (i.e. red), numeric (#f00 or #ff0000) or as ab rgb (rgb(255,0,0)).}
#' \item{\emph{'\emph{'currentColor'}'}}{Specifes to use the \emph{currentColor} for the light color. The current color is the value of the color specified by the \emph{color} property.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies inheriting the lighting color from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name marker-end-presentationAttribute
#' @title marker.end
#' @description 
#' Defines the marker that is to be rendered at every vertex other that the first and final vertices for the given path element or basic shape.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'none'}'}}{Specifies for no \emph{marker} symbol to be rendered.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{marker} symbol from the parent.}
#' \item{<funciri>}{Sets a functional IRI reference to a \strong{marker element} to be used..}
#' \item{<marker-element>}{Sets the \strong{marker element} to be used.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}}
#' }
#' @keywords internal
NULL


#' @name marker-mid-presentationAttribute
#' @title marker.mid
#' @description 
#' Defines the marker  that is to be rendered at the final vertex of the given **path** element or basic shape.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'none'}'}}{Specifies for no \emph{marker} symbol to be rendered.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{marker} symbol from the parent.}
#' \item{<funciri>}{Sets a functional IRI reference to a \strong{marker element} to be used..}
#' \item{<marker-element>}{Sets the \strong{marker element} to be used.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}}
#' }
#' @keywords internal
NULL


#' @name marker-start-presentationAttribute
#' @title marker.start
#' @description 
#' Defines the marker that is to be rendered at the first vertex of the given **path** element or basic shape.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'none'}'}}{Specifies for no marker symbol to be rendered.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the marker symbol from the parent.}
#' \item{<funciri>}{Sets a functional IRI reference to a marker element to be used..}
#' \item{<marker-element>}{Sets the \strong{marker element} to be used.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}}
#' }
#' @keywords internal
NULL


#' @name mask-presentationAttribute
#' @title mask
#' @description 
#' Governs what to use for masking
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<funciri>}{Sets a functional IRI reference to a mask element to be used for masking.}
#' \item{<mask>}{Sets the given mask element as the element to be used for masking.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to Inherit the maks from the parent.}
#' \item{\emph{'\emph{'none'}'}}{Specifies not to mask.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name opacity-presentationAttribute
#' @title opacity
#' @description 
#' Governs the  opacity.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<opacity-value>}{Specifies the opacity value, a  number between 0 and 1 indicating the opacity to be used as fill , with 1 being opaque and 0 being transparent.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the opacity value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}, \code{\link[=glyph]{glyph}}, \code{\link[=marker]{marker}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name overflow-presentationAttribute
#' @title overflow
#' @description 
#' Governs the behaviour of an element when it overflows its viewport.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'auto'}'}}{Signals to the user agent to  provide scrolling for overflowing boxes}
#' \item{\emph{'\emph{'hidden'}'}}{Specifies to clip or hide overflow (default for inner svgs, pattern and markers)}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the overflow property from the parent.}
#' \item{\emph{'\emph{'scroll'}'}}{Specifies to clip over flow but to provide scrollbar for scrolling.}
#' \item{\emph{'\emph{'visible'}'}}{Specifies to show overflow (default for outer most svg, i.e. svgR)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=marker]{marker}}, \code{\link[=pattern]{pattern}}}
#' \item{\emph{Structural Container Elements}}{\code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Uncategorized Elements}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name pointer-events-presentationAttribute
#' @title pointer.events
#' @description 
#' Governs the under what conditions this  graphics element can be the targetof a pointer event.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'all'}'}}{Specifies that this element can be targeted for a pointer event provided  pointer is over either the interior or border of this element.}
#' \item{\emph{'\emph{'fill'}'}}{Specifies that this element can be targeted for a pointer event provided the pointer is over the interior of this element.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{pointer-events} property from the parent.}
#' \item{\emph{'\emph{'none'}'}}{Specifies that this element cannot be targeted  for a pointer event}
#' \item{\emph{'\emph{'painted'}'}}{Specifies that this element can be targeted for a pointer event provided the  pointer is over a painted area. (Area being either interior or border).}
#' \item{\emph{'\emph{'stroke'}'}}{Specifies that this element can be targeted for a pointer event provided and pointer is over the border.}
#' \item{\emph{'\emph{'visible'}'}}{Specifies that element can be targeted for a pointer event provided visibilty='visible' and pointer is over either the interior or border.}
#' \item{\emph{'\emph{'visibleFill'}'}}{Speciries that this element can be targeted for a pointer event provided visibilty='visible' and pointer is over a painted interior. (thus fill!='none').}
#' \item{\emph{'\emph{'visiblePainted'}'}}{Specifies that this element can be targeted for a pointer event provided visibilty='visible' and pointer is over a painted area (area being either the interior or border).}
#' \item{\emph{'\emph{'visibleStroke'}'}}{Specifies that this element can be targeted for a pointer event provided visibilty='visible' and pointer is over a painted border. (thus stroke!='none').}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name shape-rendering-presentationAttribute
#' @title shape.rendering
#' @description 
#' Governs the optimization strategy of rendering shapes.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'auto'}'}}{Specifies to apply  a shape-rendering algorithm that balances the trade offs  that occur between optimizing for speed vs crispEdges vs geometric precision.}
#' \item{\emph{'\emph{'crispEdges'}'}}{Specifies to optimize the shape-rendering algorithm for crisp edges.}
#' \item{\emph{'\emph{'geometricPrecision'}'}}{Specifies to optimize the shape-rendering algorithm for geometric precision.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the shape-rendering optimization critera from the parent.}
#' \item{\emph{'\emph{'optimizeSpeed'}'}}{Specifies to optimize the shape-rendering algorithm for speed.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name stop-color-presentationAttribute
#' @title stop.color
#' @description 
#' Defines the color to achieve at the gradient stop position.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<color> <icccolor>}{Sets the stop color. The color may be expressed in one of three ways: name (i.e. red),  or  numeric (#f00 or #ff0000) or  rgb (rgb(255,0,0)). An optional ICC color may also be specified as a 2nd component of the color vector.}
#' \item{\emph{'\emph{'currentColor'}'}}{Specifies to use the \emph{currentColor} as the stop-colorr. The current color is the value of the color specified by the \emph{color} property.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stop-color} value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=stop]{stop}}}
#' }
#' @keywords internal
NULL


#' @name stop-opacity-presentationAttribute
#' @title stop.opacity
#' @description 
#' Defines the opacity  to achieve at the gradient stop position.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<opacity-value>}{Specifies the opacity value, a  number between 0 and 1 indicating the opacity to be used as fill , with 1 being opaque and 0 being transparent.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stop-opacity} value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Uncategorized Elements}}{\code{\link[=stop]{stop}}}
#' }
#' @keywords internal
NULL


#' @name stroke-presentationAttribute
#' @title stroke
#' @description 
#' Defines the paint used for the outline of the given graphical element
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'none'}'}}{Specifies no stroke (no border outline)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name stroke-dasharray-presentationAttribute
#' @title stroke.dasharray
#' @description 
#' Defines the pattern of dashes and gaps used to stroke paths.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<dasharray>}{Sets the stoke-dasharray pattern using a vector of lengths (with optional unit identifier)}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stroke-dasharray} value from the parent.}
#' \item{\emph{'\emph{'none'}'}}{Specifies no dash array.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name stroke-dashoffset-presentationAttribute
#' @title stroke.dashoffset
#' @description 
#' Defines the distance into the dash pattern to start the dash.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Sets distance from dash pattern to dash start given in non-percent units}
#' \item{<percentage>}{Sets distance from dash pattern to dash start given as a percentage of current viewport}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stroke-dashoffset} value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name stroke-linecap-presentationAttribute
#' @title stroke.linecap
#' @description 
#' Defines the shape to be used at the end of open subpaths when they are stroked.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'butt'}'}}{Specifies the \emph{stroke-linecap} to be a \emph{butt style cap}.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stroke-linecap} value from the parent.}
#' \item{\emph{'\emph{'round'}'}}{Specifies the \emph{stroke-linecap} to be a \emph{round style cap}.}
#' \item{\emph{'\emph{'square'}'}}{Specifies the \emph{stroke-linecap} to be a \emph{square style cap}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name stroke-linejoin-presentationAttribute
#' @title stroke.linejoin
#' @description 
#' Defines the shape to be used at the corners of paths or basic shapes when they are stroked.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'bevel'}'}}{Specifies the \emph{stroke-linejoin} to be a \emph{bevel style join}.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stroke-linejoin} value from the parent.}
#' \item{\emph{'\emph{'miter'}'}}{Specifies the \emph{stroke-linejoin} to be a \emph{mitre style join}.}
#' \item{\emph{'\emph{'round'}'}}{Specifies the \emph{stroke-linejoin} to be a \emph{round style join}.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name stroke-miterlimit-presentationAttribute
#' @title stroke.miterlimit
#' @description 
#' Defines a limit on the ratio of the miter length to the stroke-width.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<miterlimit>}{Sets the miterlimit , a number greater than 1 which is used to limit the ratio of \emph{mitreLength} to \emph{stroke-width}.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stroke-miterlimit} value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name stroke-opacity-presentationAttribute
#' @title stroke.opacity
#' @description 
#' Defines the opacity of the painting operation used to stroke the current object.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<opacity-value>}{Specifies the opacity value, a  number between 0 and 1 indicating the opacity to be used as fill , with 1 being opaque and 0 being transparent.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stroke-opacity} value from the parent.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name stroke-width-presentationAttribute
#' @title stroke.width
#' @description 
#' Defines the width of the stroke on the current object.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{stroke-width} value from the parent.}
#' \item{<percentage>}{Sets the stroke-width value as a precentage of the current viewport.}
#' \item{<length>}{Sets the \emph{stroke-width} value using non-percentate units.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name text-anchor-presentationAttribute
#' @title text.anchor
#' @description 
#' Governs positioning a string of text relative to a given point
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'end'}'}}{Specifies that the text is to be rendered such that it ends at the current (text) position.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{text-anchor} value from the parent.}
#' \item{\emph{'\emph{'middle'}'}}{Specifies that the text is to be rendered such that it is centered  at the current (text) position.}
#' \item{\emph{'\emph{'start'}'}}{Specifies that the text is to be rendered such that it begins at the current (text) position.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name text-decoration-presentationAttribute
#' @title text.decoration
#' @description 
#' Governs the application text decorations. (Such as blinking)
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{text-decoration} value from the parent.}
#' \item{\emph{'\emph{'line-through'}'}}{Specifies to decorate the text by placing  a line through the text.}
#' \item{\emph{'\emph{'none'}'}}{Specifies no text decoration}
#' \item{\emph{'\emph{'underline'}'}}{Specifies to decorate the text by underlining  the text.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name text-rendering-presentationAttribute
#' @title text.rendering
#' @description 
#' Governs the optimization strategy of rendering text.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'auto'}'}}{Specifies to apply a \emph{text-rendering} algorithm that balances the trade offs  that occur between optimizing for speed vs legibility vs geometric precision, with emphasis on legibility.}
#' \item{\emph{'\emph{'geometricPrecision'}'}}{Specifies to optimize  \emph{text-rendering} for geometric precision.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{text-rendering} value from the parent.}
#' \item{\emph{'\emph{'optimizeLegibility'}'}}{Specifies to optimize  \emph{text-rendering} for legibility.}
#' \item{\emph{'\emph{'optimizeSpeed'}'}}{Specifies to optimize  \emph{text-rendering} for speed.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name unicode-bidi-presentationAttribute
#' @title unicode.bidi
#' @description 
#' Governs mixing directionalit for  text in a single line.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'bidi-override'}'}}{Specifies to override the implicit aspect of biddirectional algorithm and use a strict sequence given by the direction. This applies only to the cases of inline or block-level composed of inline:}
#' \item{\emph{'\emph{'embed'}'}}{Specifes an embedding to override of the biddirectional algorithm using the direction given by the \emph{direction} attribute.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{unicode-bidi} value from the parent.}
#' \item{\emph{'\emph{'normal'}'}}{Specifies to use the  implicit ordering of the biddirectional algorithm.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name visibility-presentationAttribute
#' @title visibility
#' @description 
#' Governs whether the current graphics element will be visible.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'collapse'}'}}{For non-tables, this has the same effect as hidden.}
#' \item{\emph{'\emph{'hidden'}'}}{Sets the element invisible, but element may still receive pointer events.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{visibility} value from the parent.}
#' \item{\emph{'\emph{'visible'}'}}{Sets the element visible.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Graphics Referencing Elements}}{\code{\link[=image]{image}}, \code{\link[=use]{use}}}
#' \item{\emph{Non-structural Container Elements}}{\code{\link[=a]{a}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name word-spacing-presentationAttribute
#' @title word.spacing
#' @description 
#' Governs the  spacing behavior between words.
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Sets a value for the amount of  spacing between words.}
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{word-spacing} value from the parent.}
#' \item{\emph{'\emph{'normal'}'}}{Specifies to use the default \emph{word-spacing} value.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=text]{text}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name writing-mode-presentationAttribute
#' @title writing.mode
#' @description 
#' Governs the initial inline-progression-direction
#' @section Available Attribute Values:
#' @section Available Attribute Values:
#' \describe{
#' \item{\emph{'\emph{'inherit'}'}}{Specifies to inherit the \emph{writing-mode} value from the parent.}
#' \item{\emph{'\emph{'lr'}'}}{Specifies \emph{writing-mode} is to be left to right.}
#' \item{\emph{'\emph{'lr-tb'}'}}{Specifies \emph{writing-mode} is to be left to right and  top to bottom.}
#' \item{\emph{'\emph{'rl'}'}}{Specifies \emph{writing-mode} is to be  right to left.}
#' \item{\emph{'\emph{'rl-tb'}'}}{Specifies \emph{writing-mode} is to be right to left, top to bottom.}
#' \item{\emph{'\emph{'tb'}'}}{Specifies \emph{writing-mode} is to be top to bottom.}
#' \item{\emph{'\emph{'tb-rl'}'}}{Specifies \emph{writing-mode} is to be top to bottom, right to left.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Elements}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL

