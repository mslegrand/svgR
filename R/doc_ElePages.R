#' @name a
#' @title Element used to indicate web links
#' @description 
#' Container element used to create web links
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=AElementTargetAttribute]{target}}, \code{\link[=TransformAttribute]{transform}}}
#' \item{\emph{xlink attributes}}{\code{\link[=AElementXLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=AElementXLinkHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name view
#' @title Element used to change the appearance of the content of an svg element it contains
#' @description 
#' A view is a defined way to view the image, like a zoom level or a detail view.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PreserveAspectRatioAttribute]{preserveAspectRatio}}, \code{\link[=ViewBoxAttribute]{viewBox}}, \code{\link[=ViewElementViewTargetAttribute]{viewTarget}}, \code{\link[=ZoomAndPanAttribute]{zoomAndPan}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name text
#' @title An element used to create text
#' @description 
#' The text element defines a graphics element consisting of text. Note that it is possible to apply a gradient, pattern, clipping path, mask or filter to text
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=TextElementDXYAttribute]{dxy}}, \code{\link[=TextElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=TextElementXAttribute]{x}}, \code{\link[=TextElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=direction-presentationAttribute]{direction}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=dominant-baseline-presentationAttribute]{dominant.baseline}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=font-presentationAttribute]{font}}, \code{\link[=font-family-presentationAttribute]{font.family}}, \code{\link[=font-size-presentationAttribute]{font.size}}, \code{\link[=font-size-adjust-presentationAttribute]{font.size.adjust}}, \code{\link[=font-stretch-presentationAttribute]{font.stretch}}, \code{\link[=font-style-presentationAttribute]{font.style}}, \code{\link[=font-variant-presentationAttribute]{font.variant}}, \code{\link[=font-weight-presentationAttribute]{font.weight}}, \code{\link[=glyph-orientation-horizontal-presentationAttribute]{glyph.orientation.horizontal}}, \code{\link[=glyph-orientation-vertical-presentationAttribute]{glyph.orientation.vertical}}, \code{\link[=kerning-presentationAttribute]{kerning}}, \code{\link[=letter-spacing-presentationAttribute]{letter.spacing}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=text-anchor-presentationAttribute]{text.anchor}}, \code{\link[=text-decoration-presentationAttribute]{text.decoration}}, \code{\link[=text-rendering-presentationAttribute]{text.rendering}}, \code{\link[=unicode-bidi-presentationAttribute]{unicode.bidi}}, \code{\link[=visibility-presentationAttribute]{visibility}}, \code{\link[=visibility-presentationAttribute]{visibility}}, \code{\link[=word-spacing-presentationAttribute]{word.spacing}}, \code{\link[=writing-mode-presentationAttribute]{writing.mode}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=TextElementDXAttribute]{dx}}, \code{\link[=TextElementDYAttribute]{dy}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=TextElementLengthAdjustAttribute]{lengthAdjust}}, \code{\link[=TextElementRotateAttribute]{rotate}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TextElementTextLengthAttribute]{textLength}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}}
#' }
#' @keywords element
NULL


#' @name tspan
#' @title Element used to control sections of text data within a text element
#' @description 
#' Within a <text> element, text and font properties and the current text position can be adjusted with absolute or relative coordinate values by including a tspan element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=TSpanElementDXYAttribute]{dxy}}, \code{\link[=TSpanElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=TSpanElementXAttribute]{x}}, \code{\link[=TSpanElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=alignment-baseline-presentationAttribute]{alignment.baseline}}, \code{\link[=baseline-shift-presentationAttribute]{baseline.shift}}, \code{\link[=direction-presentationAttribute]{direction}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=dominant-baseline-presentationAttribute]{dominant.baseline}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=font-presentationAttribute]{font}}, \code{\link[=font-family-presentationAttribute]{font.family}}, \code{\link[=font-size-presentationAttribute]{font.size}}, \code{\link[=font-size-adjust-presentationAttribute]{font.size.adjust}}, \code{\link[=font-stretch-presentationAttribute]{font.stretch}}, \code{\link[=font-style-presentationAttribute]{font.style}}, \code{\link[=font-variant-presentationAttribute]{font.variant}}, \code{\link[=font-weight-presentationAttribute]{font.weight}}, \code{\link[=glyph-orientation-horizontal-presentationAttribute]{glyph.orientation.horizontal}}, \code{\link[=glyph-orientation-vertical-presentationAttribute]{glyph.orientation.vertical}}, \code{\link[=kerning-presentationAttribute]{kerning}}, \code{\link[=letter-spacing-presentationAttribute]{letter.spacing}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=text-anchor-presentationAttribute]{text.anchor}}, \code{\link[=text-decoration-presentationAttribute]{text.decoration}}, \code{\link[=unicode-bidi-presentationAttribute]{unicode.bidi}}, \code{\link[=visibility-presentationAttribute]{visibility}}, \code{\link[=word-spacing-presentationAttribute]{word.spacing}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=TSpanElementDXAttribute]{dx}}, \code{\link[=TSpanElementDYAttribute]{dy}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=TextElementLengthAdjustAttribute]{lengthAdjust}}, \code{\link[=TSpanElementRotateAttribute]{rotate}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TSpanElementTextLengthAttribute]{textLength}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}}
#' }
#' @keywords element
NULL


#' @name tref
#' @title Element used to provide a reference to text content data
#' @description 
#' The textual content for a <text> can be either character data directly embedded within the <text> element or the character data content of a referenced element, where the referencing is specified with a tref element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=TSpanElementDXYAttribute]{dxy}}, \code{\link[=TSpanElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=TSpanElementXAttribute]{x}}, \code{\link[=TSpanElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=alignment-baseline-presentationAttribute]{alignment.baseline}}, \code{\link[=baseline-shift-presentationAttribute]{baseline.shift}}, \code{\link[=direction-presentationAttribute]{direction}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=dominant-baseline-presentationAttribute]{dominant.baseline}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=font-presentationAttribute]{font}}, \code{\link[=font-family-presentationAttribute]{font.family}}, \code{\link[=font-size-presentationAttribute]{font.size}}, \code{\link[=font-size-adjust-presentationAttribute]{font.size.adjust}}, \code{\link[=font-stretch-presentationAttribute]{font.stretch}}, \code{\link[=font-style-presentationAttribute]{font.style}}, \code{\link[=font-variant-presentationAttribute]{font.variant}}, \code{\link[=font-weight-presentationAttribute]{font.weight}}, \code{\link[=glyph-orientation-horizontal-presentationAttribute]{glyph.orientation.horizontal}}, \code{\link[=glyph-orientation-vertical-presentationAttribute]{glyph.orientation.vertical}}, \code{\link[=kerning-presentationAttribute]{kerning}}, \code{\link[=letter-spacing-presentationAttribute]{letter.spacing}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=text-anchor-presentationAttribute]{text.anchor}}, \code{\link[=text-decoration-presentationAttribute]{text.decoration}}, \code{\link[=unicode-bidi-presentationAttribute]{unicode.bidi}}, \code{\link[=visibility-presentationAttribute]{visibility}}, \code{\link[=word-spacing-presentationAttribute]{word.spacing}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=TSpanElementDXAttribute]{dx}}, \code{\link[=TSpanElementDYAttribute]{dy}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=TextElementLengthAdjustAttribute]{lengthAdjust}}, \code{\link[=TSpanElementRotateAttribute]{rotate}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TSpanElementTextLengthAttribute]{textLength}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=TRefElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name textPath
#' @title Element used to place text along a given path
#' @description 
#' In addition to text drawn in a straight line, SVG also includes the ability to place text along the shape of a <path> element. To specify that a block of text is to be rendered along the shape of a <path>, include the given text within a textPath element which includes an xlink:href attribute with a reference to a <path> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=alignment-baseline-presentationAttribute]{alignment.baseline}}, \code{\link[=baseline-shift-presentationAttribute]{baseline.shift}}, \code{\link[=direction-presentationAttribute]{direction}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=dominant-baseline-presentationAttribute]{dominant.baseline}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=font-presentationAttribute]{font}}, \code{\link[=font-family-presentationAttribute]{font.family}}, \code{\link[=font-size-presentationAttribute]{font.size}}, \code{\link[=font-size-adjust-presentationAttribute]{font.size.adjust}}, \code{\link[=font-stretch-presentationAttribute]{font.stretch}}, \code{\link[=font-style-presentationAttribute]{font.style}}, \code{\link[=font-variant-presentationAttribute]{font.variant}}, \code{\link[=font-weight-presentationAttribute]{font.weight}}, \code{\link[=glyph-orientation-horizontal-presentationAttribute]{glyph.orientation.horizontal}}, \code{\link[=glyph-orientation-vertical-presentationAttribute]{glyph.orientation.vertical}}, \code{\link[=kerning-presentationAttribute]{kerning}}, \code{\link[=letter-spacing-presentationAttribute]{letter.spacing}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=text-anchor-presentationAttribute]{text.anchor}}, \code{\link[=text-decoration-presentationAttribute]{text.decoration}}, \code{\link[=unicode-bidi-presentationAttribute]{unicode.bidi}}, \code{\link[=visibility-presentationAttribute]{visibility}}, \code{\link[=word-spacing-presentationAttribute]{word.spacing}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=TextElementLengthAdjustAttribute]{lengthAdjust}}, \code{\link[=TextPathElementMethodAttribute]{method}}, \code{\link[=TextPathElementSpacingAttribute]{spacing}}, \code{\link[=TextPathElementStartOffsetAttribute]{startOffset}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TSpanElementTextLengthAttribute]{textLength}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=TextPathElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}}
#' }
#' @keywords element
NULL


#' @name altGlyph
#' @title Element used to provide control over the glyphs used to render particular character data
#' @description 
#' The altGlyph element allows sophisticated selection of the glyphs used to render its child character data.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=AltGlyphElementDXYAttribute]{dxy}}, \code{\link[=AltGlyphElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=AltGlyphElementXAttribute]{x}}, \code{\link[=AltGlyphElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=alignment-baseline-presentationAttribute]{alignment.baseline}}, \code{\link[=baseline-shift-presentationAttribute]{baseline.shift}}, \code{\link[=direction-presentationAttribute]{direction}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=dominant-baseline-presentationAttribute]{dominant.baseline}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=font-presentationAttribute]{font}}, \code{\link[=font-family-presentationAttribute]{font.family}}, \code{\link[=font-size-presentationAttribute]{font.size}}, \code{\link[=font-size-adjust-presentationAttribute]{font.size.adjust}}, \code{\link[=font-stretch-presentationAttribute]{font.stretch}}, \code{\link[=font-style-presentationAttribute]{font.style}}, \code{\link[=font-variant-presentationAttribute]{font.variant}}, \code{\link[=font-weight-presentationAttribute]{font.weight}}, \code{\link[=glyph-orientation-horizontal-presentationAttribute]{glyph.orientation.horizontal}}, \code{\link[=glyph-orientation-vertical-presentationAttribute]{glyph.orientation.vertical}}, \code{\link[=kerning-presentationAttribute]{kerning}}, \code{\link[=letter-spacing-presentationAttribute]{letter.spacing}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=text-anchor-presentationAttribute]{text.anchor}}, \code{\link[=text-decoration-presentationAttribute]{text.decoration}}, \code{\link[=unicode-bidi-presentationAttribute]{unicode.bidi}}, \code{\link[=visibility-presentationAttribute]{visibility}}, \code{\link[=word-spacing-presentationAttribute]{word.spacing}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=AltGlyphElementDXAttribute]{dx}}, \code{\link[=AltGlyphElementDYAttribute]{dy}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=AltGlyphElementFormatAttribute]{format}}, \code{\link[=AltGlyphElementGlyphRefAttribute]{glyphRef}}, \code{\link[=AltGlyphElementRotateAttribute]{rotate}}, \code{\link[=StyleAttribute]{style}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=AltGlyphElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Any elements or character data.}}
#' }
#' @keywords element
NULL


#' @name altGlyphDef
#' @title Element used to define a set of possible glyph substitutions
#' @description 
#' The altGlyphDef element defines a substitution representation for glyphs. This will consist of  either one or more glyphRef elements or one or more altGlyphitem elements.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords element
NULL


#' @name altGlyphItem
#' @title Element used to provide a set of glyph substitution candidates
#' @description 
#' The altGlyphItem element provides a set of candidates for glyph substitution by the <altglyph> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords element
NULL


#' @name glyphRef
#' @title NA
#' @description 
#' The glyphRef element provides a single possible glyph to the referencing <altglyph> substitution.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=GlyphRefElementDXYAttribute]{dxy}}, \code{\link[=GlyphRefElementXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=GlyphRefElementXAttribute]{x}}, \code{\link[=GlyphRefElementYAttribute]{y}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=GlyphRefElementDXAttribute]{dx}}, \code{\link[=GlyphRefElementDYAttribute]{dy}}, \code{\link[=GlyphRefElementFormatAttribute]{format}}, \code{\link[=GlyphRefElementGlyphRefAttribute]{glyphRef}}, \code{\link[=StyleAttribute]{style}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=GlyphRefElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Empty.}}
#' }
#' @keywords element
NULL


#' @name animate
#' @title An Element used to change an attribute over time
#' @description 
#' The animate element is put inside a shape element and defines how an attribute of an element changes over the animation. The attribute will change from the initial value to the end value in the duration specified.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation addition attributes}}{\code{\link[=AccumulateAttribute]{accumulate}}, \code{\link[=AdditiveAttribute]{additive}}}
#' \item{\emph{animation attribute target attributes}}{\code{\link[=AttributeNameAttribute]{attributeName}}, \code{\link[=AttributeTypeAttribute]{attributeType}}}
#' \item{\emph{animation event attributes}}{\code{\link[=OnBeginEventAttribute]{onbegin}}, \code{\link[=OnEndEventAttribute]{onend}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnRepeatEventAttribute]{onrepeat}}}
#' \item{\emph{animation timing attributes}}{\code{\link[=BeginAttribute]{begin}}, \code{\link[=DurAttribute]{dur}}, \code{\link[=EndAttribute]{end}}, \code{\link[=FillAttribute]{fill}}, \code{\link[=MaxAttribute]{max}}, \code{\link[=MinAttribute]{min}}, \code{\link[=RepeatCountAttribute]{repeatCount}}, \code{\link[=RepeatDurAttribute]{repeatDur}}, \code{\link[=RestartAttribute]{restart}}}
#' \item{\emph{animation value attributes}}{\code{\link[=ByAttribute]{by}}, \code{\link[=CalcModeAttribute]{calcMode}}, \code{\link[=FromAttribute]{from}}, \code{\link[=KeySplinesAttribute]{keySplines}}, \code{\link[=KeyTimesAttribute]{keyTimes}}, \code{\link[=ToAttribute]{to}}, \code{\link[=ValuesAttribute]{values}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=HrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name set
#' @title Element used to sets an attribute value at a given time
#' @description 
#' The set element provides a simple means of just setting the value of an attribute for a specified duration. It supports all attribute types, including those that cannot reasonably be interpolated, such as string and boolean values. The set element is non-additive. The additive and accumulate attributes are not allowed, and will be ignored if specified.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation attribute target attributes}}{\code{\link[=AttributeNameAttribute]{attributeName}}, \code{\link[=AttributeTypeAttribute]{attributeType}}}
#' \item{\emph{animation event attributes}}{\code{\link[=OnBeginEventAttribute]{onbegin}}, \code{\link[=OnEndEventAttribute]{onend}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnRepeatEventAttribute]{onrepeat}}}
#' \item{\emph{animation timing attributes}}{\code{\link[=BeginAttribute]{begin}}, \code{\link[=DurAttribute]{dur}}, \code{\link[=EndAttribute]{end}}, \code{\link[=FillAttribute]{fill}}, \code{\link[=MaxAttribute]{max}}, \code{\link[=MinAttribute]{min}}, \code{\link[=RepeatCountAttribute]{repeatCount}}, \code{\link[=RepeatDurAttribute]{repeatDur}}, \code{\link[=RestartAttribute]{restart}}}
#' \item{\emph{animation value attributes}}{\code{\link[=SetElementToAttribute]{to}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=HrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name animateMotion
#' @title Element used to move a shape along a path
#' @description 
#' The animateMotion element causes a referenced element to move along a motion path.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation addition attributes}}{\code{\link[=AccumulateAttribute]{accumulate}}, \code{\link[=AdditiveAttribute]{additive}}}
#' \item{\emph{animation event attributes}}{\code{\link[=OnBeginEventAttribute]{onbegin}}, \code{\link[=OnEndEventAttribute]{onend}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnRepeatEventAttribute]{onrepeat}}}
#' \item{\emph{animation timing attributes}}{\code{\link[=BeginAttribute]{begin}}, \code{\link[=DurAttribute]{dur}}, \code{\link[=EndAttribute]{end}}, \code{\link[=FillAttribute]{fill}}, \code{\link[=MaxAttribute]{max}}, \code{\link[=MinAttribute]{min}}, \code{\link[=RepeatCountAttribute]{repeatCount}}, \code{\link[=RepeatDurAttribute]{repeatDur}}, \code{\link[=RestartAttribute]{restart}}}
#' \item{\emph{animation value attributes}}{\code{\link[=ByAttribute]{by}}, \code{\link[=CalcModeAttribute]{calcMode}}, \code{\link[=FromAttribute]{from}}, \code{\link[=KeySplinesAttribute]{keySplines}}, \code{\link[=KeyTimesAttribute]{keyTimes}}, \code{\link[=ToAttribute]{to}}, \code{\link[=ValuesAttribute]{values}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{shape elements}}{\code{\link[=PathAttribute]{path}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=KeyPointsAttribute]{keyPoints}}, \code{\link[=OriginAttribute]{origin}}, \code{\link[=RotateAttribute]{rotate}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=HrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=mpath]{mpath}}}
#' }
#' @keywords element
NULL


#' @name mpath
#' @title Element used to specify path for animateMotion
#' @description 
#' the mpath sub-element for the <animatemotion> element provides the ability to reference an external <path> element as the definition of a motion path.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=MPathElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name animateColor
#' @title Element used to specify a color transformation over time
#' @description 
#' Element used to specify a color transformation over time. The use of 'animateColor' is deprecated, since all of its functionality can be achieved simply by using 'animate' to target properties that can take color values. The 'animateColor' element may be dropped from a future version of the SVG specification.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation addition attributes}}{\code{\link[=AccumulateAttribute]{accumulate}}, \code{\link[=AdditiveAttribute]{additive}}}
#' \item{\emph{animation attribute target attributes}}{\code{\link[=AttributeNameAttribute]{attributeName}}, \code{\link[=AttributeTypeAttribute]{attributeType}}}
#' \item{\emph{animation event attributes}}{\code{\link[=OnBeginEventAttribute]{onbegin}}, \code{\link[=OnEndEventAttribute]{onend}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnRepeatEventAttribute]{onrepeat}}}
#' \item{\emph{animation timing attributes}}{\code{\link[=BeginAttribute]{begin}}, \code{\link[=DurAttribute]{dur}}, \code{\link[=EndAttribute]{end}}, \code{\link[=FillAttribute]{fill}}, \code{\link[=MaxAttribute]{max}}, \code{\link[=MinAttribute]{min}}, \code{\link[=RepeatCountAttribute]{repeatCount}}, \code{\link[=RepeatDurAttribute]{repeatDur}}, \code{\link[=RestartAttribute]{restart}}}
#' \item{\emph{animation value attributes}}{\code{\link[=ByAttribute]{by}}, \code{\link[=CalcModeAttribute]{calcMode}}, \code{\link[=FromAttribute]{from}}, \code{\link[=KeySplinesAttribute]{keySplines}}, \code{\link[=KeyTimesAttribute]{keyTimes}}, \code{\link[=ToAttribute]{to}}, \code{\link[=ValuesAttribute]{values}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=HrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name animateTransform
#' @title Element used to scale, rotate, translate and skew a shape over time
#' @description 
#' The animateTransform element animates a transformation attribute on a target element, thereby allowing animations to control translation, scaling, rotation and/or skewing.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation addition attributes}}{\code{\link[=AccumulateAttribute]{accumulate}}, \code{\link[=AdditiveAttribute]{additive}}}
#' \item{\emph{animation attribute target attributes}}{\code{\link[=AttributeNameAttribute]{attributeName}}, \code{\link[=AttributeTypeAttribute]{attributeType}}}
#' \item{\emph{animation event attributes}}{\code{\link[=OnBeginEventAttribute]{onbegin}}, \code{\link[=OnEndEventAttribute]{onend}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnRepeatEventAttribute]{onrepeat}}}
#' \item{\emph{animation timing attributes}}{\code{\link[=BeginAttribute]{begin}}, \code{\link[=DurAttribute]{dur}}, \code{\link[=EndAttribute]{end}}, \code{\link[=FillAttribute]{fill}}, \code{\link[=MaxAttribute]{max}}, \code{\link[=MinAttribute]{min}}, \code{\link[=RepeatCountAttribute]{repeatCount}}, \code{\link[=RepeatDurAttribute]{repeatDur}}, \code{\link[=RestartAttribute]{restart}}}
#' \item{\emph{animation value attributes}}{\code{\link[=ByAttribute]{by}}, \code{\link[=CalcModeAttribute]{calcMode}}, \code{\link[=FromAttribute]{from}}, \code{\link[=KeySplinesAttribute]{keySplines}}, \code{\link[=KeyTimesAttribute]{keyTimes}}, \code{\link[=ToAttribute]{to}}, \code{\link[=ValuesAttribute]{values}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=AnimateTransformElementTypeAttribute]{type}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=HrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name rect
#' @title Element used to create a a rectangle shape
#' @description 
#' The rect element is an SVG basic shape, used to create rectangles based on the position of a corner and their width and height. It may also be used to create rectangles with rounded corners.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=RectElementRXYAttribute]{rxy}}, \code{\link[=RectElementWHAttribute]{wh}}, \code{\link[=RectElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=RectElementHeightAttribute]{height}}, \code{\link[=RectElementWidthAttribute]{width}}, \code{\link[=RectElementXAttribute]{x}}, \code{\link[=RectElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=shape-rendering-presentationAttribute]{shape.rendering}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=RectElementRXAttribute]{rx}}, \code{\link[=RectElementRYAttribute]{ry}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name circle
#' @title Element used to create a circlular shape
#' @description 
#' The circle element is an SVG basic shape, used to create circles based on a center point and a radius.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=CircleElementCXYAttribute]{cxy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=shape-rendering-presentationAttribute]{shape.rendering}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=CircleElementCXAttribute]{cx}}, \code{\link[=CircleElementCYAttribute]{cy}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=CircleElementRAttribute]{r}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name ellipse
#' @title Element used to create an elliptic shape
#' @description 
#' The ellipse element is an SVG basic shape, used to create ellipses based on a center coordinate, and both their x and y radius.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=EllipseElementCXYAttribute]{cxy}}, \code{\link[=EllipseElementRXYAttribute]{rxy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=shape-rendering-presentationAttribute]{shape.rendering}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=EllipseElementCXAttribute]{cx}}, \code{\link[=EllipseElementCYAttribute]{cy}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=EllipseElementRXAttribute]{rx}}, \code{\link[=EllipseElementRYAttribute]{ry}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name line
#' @title Element used to create  a line (segment), shape
#' @description 
#' The line element is an SVG basic shape, used to create a line connecting two points.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=LineElementX12Attribute]{x12}}, \code{\link[=LineElementXY1Attribute]{xy1}}, \code{\link[=LineElementXY2Attribute]{xy2}}, \code{\link[=LineElementY12Attribute]{y12}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=marker-presentationAttribute]{marker}}, \code{\link[=marker properties-presentationAttribute]{marker properties}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=shape-rendering-presentationAttribute]{shape.rendering}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}, \code{\link[=LineElementX1Attribute]{x1}}, \code{\link[=LineElementX2Attribute]{x2}}, \code{\link[=LineElementY1Attribute]{y1}}, \code{\link[=LineElementY2Attribute]{y2}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name polyline
#' @title Element used to create a  polyline (connected line segments), shape
#' @description 
#' The polyline element is an SVG basic shape, used to create a series of straight lines connecting several points. Typically a polyline is used to create open shapes
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=marker-presentationAttribute]{marker}}, \code{\link[=marker properties-presentationAttribute]{marker properties}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=shape-rendering-presentationAttribute]{shape.rendering}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PolylineElementPointsAttribute]{points}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name polygon
#' @title Element used to create a polygon shape
#' @description 
#' The polygon element defines a closed shape consisting of a set of connected straight line segments.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=marker-presentationAttribute]{marker}}, \code{\link[=marker properties-presentationAttribute]{marker properties}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=shape-rendering-presentationAttribute]{shape.rendering}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PolygonElementPointsAttribute]{points}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name clipPath
#' @title Element used to define a boundry (path), for clipping
#' @description 
#' The clipping path restricts the region to which paint can be applied. Conceptually, any parts of the drawing that lie outside of the region bounded by the currently active clipping path are not drawn.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ClipPathElementClipPathUnitsAttribute]{clipPathUnits}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords element
NULL


#' @name mask
#' @title Element used to do masking
#' @description 
#' In SVG, you can specify that any other graphics object or <g> element can be used as an alpha mask for compositing the current object into the background. A mask is defined with the mask element. A mask is used/referenced using the mask property.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=MaskElementWHAttribute]{wh}}, \code{\link[=MaskElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=MaskElementHeightAttribute]{height}}, \code{\link[=MaskElementWidthAttribute]{width}}, \code{\link[=MaskElementXAttribute]{x}}, \code{\link[=MaskElementYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=mask-presentationAttribute]{mask}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=MaskElementMaskContentUnitsAttribute]{maskContentUnits}}, \code{\link[=MaskElementMaskUnitsAttribute]{maskUnits}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name color-profile
#' @title Element used to specify color profiles
#' @aliases color.profile
#' @description 
#' The element allows describing the color profile used for the image.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ColorProfileElementLocalAttribute]{local}}, \code{\link[=ColorProfileElementNameAttribute]{name}}, \code{\link[=ColorProfileElementRenderingIntentAttribute]{rendering.intent}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=ColorProfileElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name cursor
#' @title Element used to define platform-independent custom cursor
#' @description 
#' The cursor element can be used to define a platform-independent custom cursor. A recommended approach for defining a platform-independent custom cursor is to create a PNG image and define a cursor element that references the PNG image and identifies the exact position within the image which is the pointer position (i.e., the hot spot),.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=CursorElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=CursorElementXAttribute]{x}}, \code{\link[=CursorElementYAttribute]{y}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=CursorElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name svg
#' @title ala svg
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=SVGElementWHAttribute]{wh}}, \code{\link[=SVGElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{document event attributes}}{\code{\link[=OnAbortEventAttribute]{onabort}}, \code{\link[=OnErrorEventAttribute]{onerror}}, \code{\link[=OnResizeEventAttribute]{onresize}}, \code{\link[=OnScrollEventAttribute]{onscroll}}, \code{\link[=OnUnloadEventAttribute]{onunload}}, \code{\link[=OnZoomEventAttribute]{onzoom}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=SVGElementHeightAttribute]{height}}, \code{\link[=SVGElementWidthAttribute]{width}}, \code{\link[=SVGElementXAttribute]{x}}, \code{\link[=SVGElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-presentationAttribute]{clip}}, \code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=overflow-presentationAttribute]{overflow}}}
#' \item{\emph{unclassified}}{\code{\link[=SVGElementBaseProfileAttribute]{baseProfile}}, \code{\link[=ClassAttribute]{class}}, \code{\link[=ContentScriptTypeAttribute]{contentScriptType}}, \code{\link[=ContentStyleTypeAttribute]{contentStyleType}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PreserveAspectRatioAttribute]{preserveAspectRatio}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=SVGElementVersionAttribute]{version}}, \code{\link[=ViewBoxAttribute]{viewBox}}, \code{\link[=ZoomAndPanAttribute]{zoomAndPan}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name g
#' @title ala g
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name defs
#' @title Element used to contain definitions
#' @description 
#' SVG allows graphical objects to be defined for later reuse. It is recommended that, wherever possible, referenced elements be defined inside of a defs element. Defining these elements inside of a defs element promotes understandability of the SVG content and thus promotes accessibility. Graphical elements defined in a defs will not be directly rendered. You can use a <use> element to render those elements wherever you want on the viewport.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name desc
#' @title Element to contain a description
#' @description 
#' Each container element or graphics element in an SVG drawing can supply a desc description string where the description is text-only. When the current SVG document fragment is rendered as SVG on visual media, desc elements are not rendered as part of the graphics. Alternate presentations are possible, both visual and aural, which display the desc element but do not display path elements or other graphics elements. The desc element generally improve accessibility of SVG documents
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Any elements or character data.}}
#' }
#' @keywords element
NULL


#' @name title
#' @title Element that holds the title
#' @description 
#' Each container element or graphics element in an SVG drawing can supply a title description string where the description is text-only. When the current SVG document fragment is rendered as SVG on visual media, title element is not rendered as part of the graphics. However, some user agents may, for example, display the title element as a tooltip. Alternate presentations are possible, both visual and aural, which display the title element but do not display path elements or other graphics elements. The title element generally improve accessibility of SVG documents
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Any elements or character data.}}
#' }
#' @keywords element
NULL


#' @name symbol
#' @title Element used to contain but not render directly a graphical object
#' @description 
#' A place to define a graphical object for later use by referencing it.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-presentationAttribute]{clip}}, \code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=overflow-presentationAttribute]{overflow}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PreserveAspectRatioAttribute]{preserveAspectRatio}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=ViewBoxAttribute]{viewBox}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name use
#' @title An element used for taking another element as a template
#' @description 
#' The use element takes nodes from within the SVG document, and duplicates them somewhere else. The effect is the same as if the nodes were deeply cloned into a non-exposed DOM, and then pasted where the use element is, much like anonymous content and XBL. Since the cloned nodes are not exposed, care must be taken when using CSS to style a use element and its hidden descendants. CSS attributes are not guaranteed to be inherited by the hidden, cloned DOM unless you explicitly request it using CSS inheritance.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=UseElementWHAttribute]{wh}}, \code{\link[=UseElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=UseElementHeightAttribute]{height}}, \code{\link[=UseElementWidthAttribute]{width}}, \code{\link[=UseElementXAttribute]{x}}, \code{\link[=UseElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=UseElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name image
#' @title An Element used to include a raster image
#' @description 
#' The SVG Image Element (<image>), allows a raster image into be included in an SVG document.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=ImageElementWHAttribute]{wh}}, \code{\link[=ImageElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=ImageElementHeightAttribute]{height}}, \code{\link[=ImageElementWidthAttribute]{width}}, \code{\link[=ImageElementXAttribute]{x}}, \code{\link[=ImageElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-presentationAttribute]{clip}}, \code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=image-rendering-presentationAttribute]{image.rendering}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=overflow-presentationAttribute]{overflow}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PreserveAspectRatioAttribute]{preserveAspectRatio}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=ImageElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name switch
#' @title Element used as a switch description=
#' @description 
#' The switch element evaluates the requiredFeatures, requiredExtensions and systemLanguage attributes on its direct child elements in order, and then processes and renders the first child for which these attributes evaluate to true. All others will be bypassed and therefore not rendered. If the child element is a container element such as a <g>, then the entire subtree is either processed/rendered or bypassed/not rendered.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords element
NULL


#' @name filter
#' @title Container element used to modify an image
#' @description 
#' The filter element serves as container for atomic filter operations. It is never rendered directly. A filter is referenced by using the filter attribute on the target SVG element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterElementWHAttribute]{wh}}, \code{\link[=FilterElementXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterElementHeightAttribute]{height}}, \code{\link[=FilterElementWidthAttribute]{width}}, \code{\link[=FilterElementXAttribute]{x}}, \code{\link[=FilterElementYAttribute]{y}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=FilterElementFilterResAttribute]{filterRes}}, \code{\link[=FilterElementFilterUnitsAttribute]{filterUnits}}, \code{\link[=FilterElementPrimitiveUnitsAttribute]{primitiveUnits}}, \code{\link[=StyleAttribute]{style}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=FilterElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords element
NULL


#' @name feDistantLight
#' @title A Primitive Filter Element that defines a distant light source
#' @description 
#' This filter primitive define a distant light source that can be used within a lighting filter primitive : <fediffuselighting> or <fespecularlighting>.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=feDistantLightAzimuthAttribute]{azimuth}}, \code{\link[=feDistantLightElevationAttribute]{elevation}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name fePointLight
#' @title A Primitive Filter Element that defines a pointlight light source
#' @description 
#'  description=
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=fePointLightXYZAttribute]{xyz}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=fePointLightXAttribute]{x}}, \code{\link[=fePointLightYAttribute]{y}}}
#' \item{\emph{unclassified}}{\code{\link[=fePointLightZAttribute]{z}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feSpotLight
#' @title A Primitive Filter Element that defines a spotlight light source
#' @description 
#'  description=
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=feSpotLightPOINTSATXYZAttribute]{pointsAtXYZ}}, \code{\link[=feSpotLightXYZAttribute]{xyz}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=feSpotLightXAttribute]{x}}, \code{\link[=feSpotLightYAttribute]{y}}}
#' \item{\emph{unclassified}}{\code{\link[=feSpotLightLimitingConeAngleAttribute]{limitingConeAngle}}, \code{\link[=feSpotLightPointsAtXAttribute]{pointsAtX}}, \code{\link[=feSpotLightPointsAtYAttribute]{pointsAtY}}, \code{\link[=feSpotLightPointsAtZAttribute]{pointsAtZ}}, \code{\link[=feSpotLightSpecularExponentAttribute]{specularExponent}}, \code{\link[=feSpotLightZAttribute]{z}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feBlend
#' @title A Filter Primitive Element used  to blend
#' @description 
#' The feBlend filter composes two objects together ruled by a certain blending mode. This is similar to what is known from image editing software when blending two layers. The mode is defined by the mode attribute.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveIN12Attribute]{in12}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feBlendIn2Attribute]{in2}}, \code{\link[=feBlendModeAttribute]{mode}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feColorMatrix
#' @title A Filter Primitvie Element for modifing  color based on a transformation matrix
#' @description 
#' This filter changes colors based on a transformation matrix. Every pixel's color value (represented by an [R,G,B,A] vector), is matrix multiplied to create a new color.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation value attributes}}{\code{\link[=feColorMatrixValuesAttribute]{values}}}
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=feColorMatrixTypeAttribute]{type}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feComponentTransfer
#' @title A Filter Primitvie Element for modifing  color using feFunc elements 
#' @description 
#' The color of each pixel is modified by changing each channel (R, G, B, and A), to the result of what the children <fefuncr>, <fefuncb>, <fefuncg>, and <fefunca> return.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords element
NULL


#' @name feFuncR
#' @title Element used to specify red component transfer function
#' @description 
#' This filter primitive defines the transfer function for the red component of the input graphic of its parent <fecomponenttransfer> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=feComponentTransferAmplitudeAttribute]{amplitude}}, \code{\link[=feComponentTransferExponentAttribute]{exponent}}, \code{\link[=feComponentTransferInterceptAttribute]{intercept}}, \code{\link[=feComponentTransferOffsetAttribute]{offset}}, \code{\link[=feComponentTransferSlopeAttribute]{slope}}, \code{\link[=feComponentTransferTableValuesAttribute]{tableValues}}, \code{\link[=feComponentTransferTypeAttribute]{type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feFuncG
#' @title Element used to specify green component transfer function
#' @description 
#' This filter primitive defines the transfer function for the green component of the input graphic of its parent <fecomponenttransfer> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=feComponentTransferAmplitudeAttribute]{amplitude}}, \code{\link[=feComponentTransferExponentAttribute]{exponent}}, \code{\link[=feComponentTransferInterceptAttribute]{intercept}}, \code{\link[=feComponentTransferOffsetAttribute]{offset}}, \code{\link[=feComponentTransferSlopeAttribute]{slope}}, \code{\link[=feComponentTransferTableValuesAttribute]{tableValues}}, \code{\link[=feComponentTransferTypeAttribute]{type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feFuncB
#' @title Element used to specify blue component transfer function
#' @description 
#' This filter primitive defines the transfer function for the blue component of the input graphic of its parent <fecomponenttransfer> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=feComponentTransferAmplitudeAttribute]{amplitude}}, \code{\link[=feComponentTransferExponentAttribute]{exponent}}, \code{\link[=feComponentTransferInterceptAttribute]{intercept}}, \code{\link[=feComponentTransferOffsetAttribute]{offset}}, \code{\link[=feComponentTransferSlopeAttribute]{slope}}, \code{\link[=feComponentTransferTableValuesAttribute]{tableValues}}, \code{\link[=feComponentTransferTypeAttribute]{type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feFuncA
#' @title Element used to specify alpha component transfer function
#' @description 
#' This filter primitive defines the transfer function for the alpha component of the input graphic of its parent <fecomponenttransfer> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=feComponentTransferAmplitudeAttribute]{amplitude}}, \code{\link[=feComponentTransferExponentAttribute]{exponent}}, \code{\link[=feComponentTransferInterceptAttribute]{intercept}}, \code{\link[=feComponentTransferOffsetAttribute]{offset}}, \code{\link[=feComponentTransferSlopeAttribute]{slope}}, \code{\link[=feComponentTransferTableValuesAttribute]{tableValues}}, \code{\link[=feComponentTransferTypeAttribute]{type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feComposite
#' @title A Filter Primitive Element that composes images point-wise
#' @description 
#' This filter primitive performs the combination of two input images pixel-wise in image space using one of the Porter-Duff compositing operations: over, in, atop, out, xor. Additionally, a component-wise arithmetic operation (with the result clamped between [0..1]), can be applied.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveIN12Attribute]{in12}}, \code{\link[=feCompositeK1234Attribute]{k1234}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feCompositeIn2Attribute]{in2}}, \code{\link[=feCompositeK1Attribute]{k1}}, \code{\link[=feCompositeK2Attribute]{k2}}, \code{\link[=feCompositeK3Attribute]{k3}}, \code{\link[=feCompositeK4Attribute]{k4}}, \code{\link[=feCompositeOperatorAttribute]{operator}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feConvolveMatrix
#' @title A Filter Primitive Element that performs image convolution
#' @description 
#' the feConvolveMatrix element applies a matrix convolution filter effect. A convolution combines pixels in the input image with neighboring pixels to produce a resulting image. A wide variety of imaging operations can be achieved through convolutions, including blurring, edge detection, sharpening, embossing and beveling.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=feConvolveMatrixElementTARGETXYAttribute]{targetXY}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=feConvolveMatrixElementBiasAttribute]{bias}}, \code{\link[=ClassAttribute]{class}}, \code{\link[=feConvolveMatrixElementDivisorAttribute]{divisor}}, \code{\link[=feConvolveMatrixElementEdgeModeAttribute]{edgeMode}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feConvolveMatrixElementKernelMatrixAttribute]{kernelMatrix}}, \code{\link[=feConvolveMatrixElementKernelUnitLengthAttribute]{kernelUnitLength}}, \code{\link[=feConvolveMatrixElementOrderAttribute]{order}}, \code{\link[=feConvolveMatrixElementPreserveAlphaAttribute]{preserveAlpha}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=feConvolveMatrixElementTargetXAttribute]{targetX}}, \code{\link[=feConvolveMatrixElementTargetYAttribute]{targetY}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feDiffuseLighting
#' @title A Filter Primitive Element defining a lighting model for  diffuse  light
#' @description 
#' This filter primitive lights an image using the alpha channel as a bump map. The resulting image, which is an RGBA opaque image, depends on the light color, light position and surface geometry of the input bump map.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}, \code{\link[=lighting-color-presentationAttribute]{lighting.color}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=feDiffuseLightingDiffuseConstantAttribute]{diffuseConstant}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feDiffuseLightingKernelUnitLengthAttribute]{kernelUnitLength}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=feDiffuseLightingSurfaceScaleAttribute]{surfaceScale}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords element
NULL


#' @name feDisplacementMap
#' @title A Filter Primitive Element that creating displacement
#' @description 
#' This filter primitive uses the pixels values from the image from in2 to spatially displace the image from in.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveIN12Attribute]{in12}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feDisplacementMapIn2Attribute]{in2}}, \code{\link[=feDisplacementMapScaleAttribute]{scale}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=feDisplacementMapXChannelSelectorAttribute]{xChannelSelector}}, \code{\link[=feDisplacementMapYChannelSelectorAttribute]{yChannelSelector}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feFlood
#' @title A Filter Primitive Element that floods with a color
#' @description 
#' The filter fills the filter subregion with the color and opacity defined by flood-color and flood-opacity.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}, \code{\link[=flood-color-presentationAttribute]{flood.color}}, \code{\link[=flood-opacity-presentationAttribute]{flood.opacity}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feGaussianBlur
#' @title A Filter Primitive Element to provide a blurring effect
#' @description 
#' The filter blurs the input image by the amount specified in stdDeviation, which defines the bell-curve.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feGaussianBlurStdDeviationAttribute]{stdDeviation}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feImage
#' @title A Filter Primitive Element to fetch image data
#' @description 
#' The feImage filter fetches image data from an external source and provides the pixel data as output (meaning, if the external source is an SVG image, it is rasterize),.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PreserveAspectRatioAttribute]{preserveAspectRatio}}, \code{\link[=StyleAttribute]{style}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=feImageElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feMerge
#' @title A Filter Primitive Element to merge images
#' @description 
#' The feMerge filter allows filter effects to be applied concurrently instead of sequentially. This is achieved by other filters storing their output via the result attribute and then accessing it in a <femergenode> child.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feMergeNode]{feMergeNode}}}
#' }
#' @keywords element
NULL


#' @name feMergeNode
#' @title Element used to wrap a filter primitive prior to being used by femerge
#' @description 
#' The feMergeNode takes the result of another filter to be processed by its parent <femerge>.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feMorphology
#' @title A Filter Primitive Element to erode or dilate
#' @description 
#' This filter is used to erode or dilate the input image. It's usefulness lies especially in fattening or thinning effects.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feMorphologyOperatorAttribute]{operator}}, \code{\link[=feMorphologyRadiusAttribute]{radius}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feOffset
#' @title A Filter Primitive Element to offset an image
#' @description 
#' The input image as a whole is offset by the values specified in the dx and dy attributes. It's used in creating drop-shadows.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=feOffsetDXYAttribute]{dxy}}, \code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=feOffsetDxAttribute]{dx}}, \code{\link[=feOffsetDyAttribute]{dy}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feSpecularLighting
#' @title A Filter Primitive Element defining a lighting model for  specular  light
#' @description 
#' This filter primitive lights a source graphic using the alpha channel as a bump map. The resulting image is an RGBA image based on the light color. The lighting calculation follows the standard specular component of the Phong lighting model. The resulting image depends on the light color, light position and surface geometry of the input bump map. The result of the lighting calculation is added. The filter primitive assumes that the viewer is at infinity in the z direction.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}, \code{\link[=lighting-color-presentationAttribute]{lighting.color}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feSpecularLightingKernelUnitLengthAttribute]{kernelUnitLength}}, \code{\link[=feSpecularLightingSpecularConstantAttribute]{specularConstant}}, \code{\link[=feSpecularLightingSpecularExponentAttribute]{specularExponent}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=feSpecularLightingSurfaceScaleAttribute]{surfaceScale}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords element
NULL


#' @name feTile
#' @title Element to tile a region with a given image
#' @description 
#' An input image is tiled and the result used to fill a target. The effect is similar to the one of a <pattern>.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name feTurbulence
#' @title A Filter Primitive Element producing turbulence effect on an image
#' @description 
#' This filter primitive creates an image using the Perlin turbulence function. It allows the synthesis of artificial textures like clouds or marble.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=feTurbulenceTypeAttribute]{type}}}
#' \item{\emph{unclassified}}{\code{\link[=feTurbulenceBaseFrequencyAttribute]{baseFrequency}}, \code{\link[=ClassAttribute]{class}}, \code{\link[=feTurbulenceNumOctavesAttribute]{numOctaves}}, \code{\link[=feTurbulenceSeedAttribute]{seed}}, \code{\link[=feTurbulenceStitchTilesAttribute]{stitchTiles}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name font
#' @title Element used to define the font
#' @description 
#' The font element defines a font to be used for text layout.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=FontElementHorizOriginXAttribute]{horiz.origin.xy}}, \code{\link[=FontElementVertOriginXAttribute]{vert.origin.xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=FontElementHorizAdvXAttribute]{horiz.adv.x}}, \code{\link[=FontElementHorizOriginXAttribute]{horiz.origin.x}}, \code{\link[=FontElementHorizOriginYAttribute]{horiz.origin.y}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=FontElementVertAdvYAttribute]{vert.adv.y}}, \code{\link[=FontElementVertOriginXAttribute]{vert.origin.x}}, \code{\link[=FontElementVertOriginYAttribute]{vert.origin.y}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}, \code{\link[=glyph]{glyph}}, \code{\link[=hkern]{hkern}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords element
NULL


#' @name glyph
#' @title Element used to define graphics for a given glyph
#' @description 
#' A glyph defines a single glyph in an SVG font.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=GlyphElementVertOriginXAttribute]{vert.origin.xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}}
#' \item{\emph{unclassified}}{\code{\link[=GlyphElementArabicFormAttribute]{arabic.form}}, \code{\link[=ClassAttribute]{class}}, \code{\link[=GlyphElementDAttribute]{d}}, \code{\link[=GlyphElementGlyphNameAttribute]{glyph.name}}, \code{\link[=GlyphElementHorizAdvXAttribute]{horiz.adv.x}}, \code{\link[=GlyphElementLangAttribute]{lang}}, \code{\link[=GlyphElementOrientationAttribute]{orientation}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=GlyphElementUnicodeAttribute]{unicode}}, \code{\link[=GlyphElementVertAdvYAttribute]{vert.adv.y}}, \code{\link[=GlyphElementVertOriginXAttribute]{vert.origin.x}}, \code{\link[=GlyphElementVertOriginYAttribute]{vert.origin.y}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name missing-glyph
#' @title Element used to define the graphics to use when an attempt to draw a glyph that has not been defined.
#' @aliases missing.glyph
#' @description 
#' The missing-glyph's content is rendered, if for a given character the font doesn't define an appropriate <glyph>.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=GlyphElementVertOriginXAttribute]{vert.origin.xy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=GlyphElementDAttribute]{d}}, \code{\link[=GlyphElementHorizAdvXAttribute]{horiz.adv.x}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=GlyphElementVertAdvYAttribute]{vert.adv.y}}, \code{\link[=GlyphElementVertOriginXAttribute]{vert.origin.x}}, \code{\link[=GlyphElementVertOriginYAttribute]{vert.origin.y}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name hkern
#' @title An  Element used to specify horizontal distances between glyphs
#' @description 
#' The horizontal distance between two glyphs can be fine-tweaked with an hkern Element. This process is known as Kerning.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=HKernElementG12Attribute]{g12}}, \code{\link[=HKernElementU12Attribute]{u12}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=HKernElementG1Attribute]{g1}}, \code{\link[=HKernElementG2Attribute]{g2}}, \code{\link[=HKernElementKAttribute]{k}}, \code{\link[=HKernElementU1Attribute]{u1}}, \code{\link[=HKernElementU2Attribute]{u2}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Empty.}}
#' }
#' @keywords element
NULL


#' @name vkern
#' @title An  Element used to specify vertical distances between glyphs
#' @description 
#' The vertical distance between two glyphs in top-to-bottom fonts can be fine-tweaked with an vkern Element. This process is known as Kerning.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=HKernElementG12Attribute]{g12}}, \code{\link[=HKernElementU12Attribute]{u12}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=HKernElementG1Attribute]{g1}}, \code{\link[=HKernElementG2Attribute]{g2}}, \code{\link[=HKernElementKAttribute]{k}}, \code{\link[=HKernElementU1Attribute]{u1}}, \code{\link[=HKernElementU2Attribute]{u2}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Empty.}}
#' }
#' @keywords element
NULL


#' @name font-face
#' @title Element used to define the font face
#' @aliases font.face
#' @description 
#' The font-face element corresponds to the CSS @font-face declaration. It defines a font's outer properties.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=FontFaceElementSlopeAttribute]{slope}}}
#' \item{\emph{unclassified}}{\code{\link[=FontFaceElementAccentHeightAttribute]{accent.height}}, \code{\link[=FontFaceElementAlphabeticAttribute]{alphabetic}}, \code{\link[=FontFaceElementAscentAttribute]{ascent}}, \code{\link[=FontFaceElementBboxAttribute]{bbox}}, \code{\link[=FontFaceElementCapHeightAttribute]{cap.height}}, \code{\link[=FontFaceElementDescentAttribute]{descent}}, \code{\link[=FontFaceElementFontFamilyAttribute]{font.family}}, \code{\link[=FontFaceElementFontSizeAttribute]{font.size}}, \code{\link[=FontFaceElementFontStretchAttribute]{font.stretch}}, \code{\link[=FontFaceElementFontStyleAttribute]{font.style}}, \code{\link[=FontFaceElementFontVariantAttribute]{font.variant}}, \code{\link[=FontFaceElementFontWeightAttribute]{font.weight}}, \code{\link[=FontFaceElementHangingAttribute]{hanging}}, \code{\link[=FontFaceElementIdeographicAttribute]{ideographic}}, \code{\link[=FontFaceElementMathematicalAttribute]{mathematical}}, \code{\link[=FontFaceElementOverlinePositionAttribute]{overline.position}}, \code{\link[=FontFaceElementOverlineThicknessAttribute]{overline.thickness}}, \code{\link[=FontFaceElementPanose1Attribute]{panose.1}}, \code{\link[=FontFaceElementStemhAttribute]{stemh}}, \code{\link[=FontFaceElementStemvAttribute]{stemv}}, \code{\link[=FontFaceElementStrikeThroughPositionAttribute]{strikethrough.position}}, \code{\link[=FontFaceElementStrikeThroughThicknessAttribute]{strikethrough.thickness}}, \code{\link[=FontFaceElementUnderlinePositionAttribute]{underline.position}}, \code{\link[=FontFaceElementUnderlineThicknessAttribute]{underline.thickness}}, \code{\link[=FontFaceElementUnicodeRangeAttribute]{unicode.range}}, \code{\link[=FontFaceElementUnitsPerEmAttribute]{units.per.em}}, \code{\link[=FontFaceElementVertAlphabeticAttribute]{v.alphabetic}}, \code{\link[=FontFaceElementVertHangingAttribute]{v.hanging}}, \code{\link[=FontFaceElementVertIdeographicAttribute]{v.ideographic}}, \code{\link[=FontFaceElementVertMathematicalAttribute]{v.mathematical}}, \code{\link[=FontFaceElementWidthsAttribute]{widths}}, \code{\link[=FontFaceElementXHeightAttribute]{x.height}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face-src]{font.face.src}}}
#' }
#' @keywords element
NULL


#' @name font-face-src
#' @title An  Element to define the font face
#' @aliases font.face.src
#' @description 
#' The font-face-src element corresponds to the src property in CSS @font-face descriptions. It serves as container for <font-face-name>, pointing to locally installed copies of this font, and <font-face-uri>, utilizing remotely defined fonts.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-uri]{font.face.uri}}}
#' }
#' @keywords element
NULL


#' @name font-face-uri
#' @title An  Element to define the font face
#' @aliases font.face.uri
#' @description 
#' The font-face-uri element points to a remote definition of the current font.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=FontFaceUriElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face-format]{font.face.format}}}
#' }
#' @keywords element
NULL


#' @name font-face-format
#' @title An Element to define the font fac
#' @aliases font.face.format
#' @description 
#' The font-face-format element describes the type of font referenced by its parent <font-face-uri>.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=FontFaceFormatElementStringAttribute]{string}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Empty.}}
#' }
#' @keywords element
NULL


#' @name font-face-name
#' @title Element used to specify a local font-face by name
#' @aliases font.face.name
#' @description 
#' The font-face-name element points to a locally installed copy of this font, identified by its name. The font-face element is used within a font-face-src element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=FontFaceNameElementNameAttribute]{name}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Empty.}}
#' }
#' @keywords element
NULL


#' @name foreignObject
#' @title Element used to include a non-svg element
#' @description 
#' The foreignObject element allows for inclusion of a foreign XML namespace which has its graphical content drawn by a different user agent. The included foreign graphical content is subject to SVG transformations and compositing.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{combining attributes}}{\code{\link[=ForeignObjectElementWHAttribute]{wh}}, \code{\link[=ForeignObjectElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=ForeignObjectElementHeightAttribute]{height}}, \code{\link[=ForeignObjectElementWidthAttribute]{width}}, \code{\link[=ForeignObjectElementXAttribute]{x}}, \code{\link[=ForeignObjectElementYAttribute]{y}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-presentationAttribute]{clip}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=overflow-presentationAttribute]{overflow}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Any elements or character data.}}
#' }
#' @keywords element
NULL


#' @name linearGradient
#' @title An Element to define a linear gradient
#' @description 
#' LinearGradient is used to define a linear gradient fill or stroke of  a graphical element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=LinearGradientElementX12Attribute]{x12}}, \code{\link[=LinearGradientElementXY1Attribute]{xy1}}, \code{\link[=LinearGradientElementXY2Attribute]{xy2}}, \code{\link[=LinearGradientElementY12Attribute]{y12}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=LinearGradientElementGradientTransformAttribute]{gradientTransform}}, \code{\link[=LinearGradientElementGradientUnitsAttribute]{gradientUnits}}, \code{\link[=LinearGradientElementSpreadMethodAttribute]{spreadMethod}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=LinearGradientElementX1Attribute]{x1}}, \code{\link[=LinearGradientElementX2Attribute]{x2}}, \code{\link[=LinearGradientElementY1Attribute]{y1}}, \code{\link[=LinearGradientElementY2Attribute]{y2}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=LinearGradientElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=stop]{stop}}}
#' }
#' @keywords element
NULL


#' @name radialGradient
#' @title An Element to define a radial gradient
#' @description 
#' RadialGradient is used to define a radial gradient fill or stroke of  a graphical element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=RadialGradientElementCXYAttribute]{cxy}}, \code{\link[=RadialGradientElementFXYAttribute]{fxy}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=RadialGradientElementCXAttribute]{cx}}, \code{\link[=RadialGradientElementCYAttribute]{cy}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=RadialGradientElementFXAttribute]{fx}}, \code{\link[=RadialGradientElementFYAttribute]{fy}}, \code{\link[=RadialGradientElementGradientTransformAttribute]{gradientTransform}}, \code{\link[=RadialGradientElementGradientUnitsAttribute]{gradientUnits}}, \code{\link[=RadialGradientElementRAttribute]{r}}, \code{\link[=RadialGradientElementSpreadMethodAttribute]{spreadMethod}}, \code{\link[=StyleAttribute]{style}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=RadialGradientElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=stop]{stop}}}
#' }
#' @keywords element
NULL


#' @name stop
#' @title An element used to define the colors and layouts of a gradient
#' @description 
#' The ramp of colors to use on a gradient is defined by the stop elements that are child elements to either the <lineargradient> element or the <radialgradient> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{presentation attributes}}{\code{\link[=color-presentationAttribute]{color}}, \code{\link[=stop-color-presentationAttribute]{stop.color}}, \code{\link[=stop-opacity-presentationAttribute]{stop.opacity}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=StopElementOffsetAttribute]{offset}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=StyleAttribute]{style}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=set]{set}}}
#' }
#' @keywords element
NULL


#' @name pattern
#' @title Element to create a specified pattern (used as fill),
#' @description 
#' A pattern is used to fill or stroke an object using a pre-defined graphic object which can be replicated ("tiled"), at fixed intervals in x and y to cover the areas to be painted. Patterns are defined using the pattern element and then referenced by properties fill and stroke on a given graphics element to indicate that the given element shall be filled or stroked with the referenced pattern.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=PatternElementWHAttribute]{wh}}, \code{\link[=PatternElementXYAttribute]{xy}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{filter primitive attributes}}{\code{\link[=PatternElementHeightAttribute]{height}}, \code{\link[=PatternElementWidthAttribute]{width}}, \code{\link[=PatternElementXAttribute]{x}}, \code{\link[=PatternElementYAttribute]{y}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-presentationAttribute]{clip}}, \code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=overflow-presentationAttribute]{overflow}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PatternElementPatternContentUnitsAttribute]{patternContentUnits}}, \code{\link[=PatternElementPatternTransformAttribute]{patternTransform}}, \code{\link[=PatternElementPatternUnitsAttribute]{patternUnits}}, \code{\link[=PreserveAspectRatioAttribute]{preserveAspectRatio}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=ViewBoxAttribute]{viewBox}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=PatternElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name marker
#' @title Element to create a marker arrowheads, tails, ...
#' @description 
#' The marker element defines the graphics that is to be used for drawing arrowheads or polymarkers on a given <path>, <line>, <polyline> or <polygon> element.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{combining attributes}}{\code{\link[=MarkerElementREFXYAttribute]{refXY}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-presentationAttribute]{clip}}, \code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=enable-background-presentationAttribute]{enable.background}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=overflow-presentationAttribute]{overflow}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=MarkerHeightAttribute]{markerHeight}}, \code{\link[=MarkerUnitsAttribute]{markerUnits}}, \code{\link[=MarkerWidthAttribute]{markerWidth}}, \code{\link[=OrientAttribute]{orient}}, \code{\link[=PreserveAspectRatioAttribute]{preserveAspectRatio}}, \code{\link[=MarkerElementRefXAttribute]{refX}}, \code{\link[=MarkerElementRefYAttribute]{refY}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=ViewBoxAttribute]{viewBox}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords element
NULL


#' @name metadata
#' @title A element that contains metadata
#' @description 
#' Metadata is structured data about data. Metadata which is included with SVG content should be specified within metadata elements. The contents of the metadata should be elements from other XML namespaces such as RDF, FOAF, etc.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Any elements or character data.}}
#' }
#' @keywords element
NULL


#' @name path
#' @title An element to create a path
#' @description 
#' A path is defined by including a 'path' element which contains a d='(path data),' attribute, where the 'd' attribute contains the moveto, line, curve (both cubic and quadratic Beziers), arc and closepath instructions.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{animation event attributes}}{\code{\link[=OnLoadEventAttribute]{onload}}}
#' \item{\emph{conditional processing attributes}}{\code{\link[=RequiredExtensionsAttribute]{requiredExtensions}}, \code{\link[=RequiredFeaturesAttribute]{requiredFeatures}}, \code{\link[=SystemLanguageAttribute]{systemLanguage}}}
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{graphical event attributes}}{\code{\link[=OnActivateEventAttribute]{onactivate}}, \code{\link[=OnClickEventAttribute]{onclick}}, \code{\link[=OnFocusInEventAttribute]{onfocusin}}, \code{\link[=OnFocusOutEventAttribute]{onfocusout}}, \code{\link[=OnLoadEventAttribute]{onload}}, \code{\link[=OnMouseDownEventAttribute]{onmousedown}}, \code{\link[=OnMouseMoveEventAttribute]{onmousemove}}, \code{\link[=OnMouseOutEventAttribute]{onmouseout}}, \code{\link[=OnMouseOverEventAttribute]{onmouseover}}, \code{\link[=OnMouseUpEventAttribute]{onmouseup}}}
#' \item{\emph{presentation attributes}}{\code{\link[=clip-path-presentationAttribute]{clip.path}}, \code{\link[=clip-rule-presentationAttribute]{clip.rule}}, \code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-presentationAttribute]{color.interpolation}}, \code{\link[=color-rendering-presentationAttribute]{color.rendering}}, \code{\link[=cursor-presentationAttribute]{cursor}}, \code{\link[=display-presentationAttribute]{display}}, \code{\link[=fill-presentationAttribute]{fill}}, \code{\link[=fill-opacity-presentationAttribute]{fill.opacity}}, \code{\link[=fill-rule-presentationAttribute]{fill.rule}}, \code{\link[=filter-presentationAttribute]{filter}}, \code{\link[=marker-presentationAttribute]{marker}}, \code{\link[=marker properties-presentationAttribute]{marker properties}}, \code{\link[=mask-presentationAttribute]{mask}}, \code{\link[=opacity-presentationAttribute]{opacity}}, \code{\link[=pointer-events-presentationAttribute]{pointer.events}}, \code{\link[=shape-rendering-presentationAttribute]{shape.rendering}}, \code{\link[=stroke-presentationAttribute]{stroke}}, \code{\link[=stroke-dasharray-presentationAttribute]{stroke.dasharray}}, \code{\link[=stroke-dashoffset-presentationAttribute]{stroke.dashoffset}}, \code{\link[=stroke-linecap-presentationAttribute]{stroke.linecap}}, \code{\link[=stroke-linejoin-presentationAttribute]{stroke.linejoin}}, \code{\link[=stroke-miterlimit-presentationAttribute]{stroke.miterlimit}}, \code{\link[=stroke-opacity-presentationAttribute]{stroke.opacity}}, \code{\link[=stroke-width-presentationAttribute]{stroke.width}}, \code{\link[=visibility-presentationAttribute]{visibility}}}
#' \item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=DAttribute]{d}}, \code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}, \code{\link[=PathLengthAttribute]{pathLength}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=TransformAttribute]{transform}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' }
#' @keywords element
NULL


#' @name script
#' @title Element used to embed javascript
#' @description 
#' Any functions defined within any script element have a global scope across the entire current document.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=ScriptElementTypeAttribute]{type}}}
#' \item{\emph{unclassified}}{\code{\link[=ExternalResourcesRequiredAttribute]{externalResourcesRequired}}}
#' \item{\emph{xlink attributes}}{\code{\link[=XLinkActuateAttribute]{xlink.actuate}}, \code{\link[=XLinkArcRoleAttribute]{xlink.arcrole}}, \code{\link[=ScriptElementHrefAttribute]{xlink.href}}, \code{\link[=XLinkRoleAttribute]{xlink.role}}, \code{\link[=XLinkShowAttribute]{xlink.show}}, \code{\link[=XLinkTitleAttribute]{xlink.title}}, \code{\link[=XLinkTypeAttribute]{xlink.type}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Any elements or character data.}}
#' }
#' @keywords element
NULL


#' @name style
#' @title Element used to embed a style specification
#' @description 
#' The style element allows style sheets to be embedded directly within SVG content. SVG's style element has the same attributes as the corresponding element in HTML (see HTML's <style> element),.
#' @section Available Attributes (Named Parameters):
#' \describe{
#' \item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
#' \item{\emph{descriptive elements}}{\code{\link[=StyleElementTitleAttribute]{title}}}
#' \item{\emph{transfer function element attributes}}{\code{\link[=StyleElementTypeAttribute]{type}}}
#' \item{\emph{unclassified}}{\code{\link[=StyleElementMediaAttribute]{media}}}
#' }
#' @section Available Content Elements (Unnamed Parameters):
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{Any elements or character data.}}
#' }
#' @keywords element
NULL

