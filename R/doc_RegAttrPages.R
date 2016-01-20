#' @name FontFaceElementAccentHeightAttribute
#' @title accent.height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The distance from the origin to the top of accent characters, measured by a distance within the font coordinate system. If the attribute is not specified, the effect is as if the attribute were set to the value of the 'ascent' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementAlphabeticAttribute
#' @title alphabetic
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'baseline' descriptor within an font.face rule. For horizontally oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve alphabetic baseline alignment. The value is an offset in the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementArabicFormAttribute
#' @title arabic.form
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{initial | medial | terminal | isolated}{For Arabic glyphs, indicates which of the four possible forms this glyph represents.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementAscentAttribute
#' @title ascent
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'ascent' descriptor within an font.face rule. The maximum unaccented height of the font within the font coordinate system. If the attribute is not specified, the effect is as if the attribute were set to the difference between the 'units.per.em' value and the 'vert.origin.y' value for the corresponding font.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementBboxAttribute
#' @title bbox
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{Same syntax and semantics as the 'bbox' descriptor within an font.face rule.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementCapHeightAttribute
#' @title cap.height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'cap.height' descriptor within an font.face rule. The height of uppercase glyphs in the font within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementDAttribute
#' @title d
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{path data}{The definition of the outline of a glyph, using the same syntax as for the 'd' attribute on a 'path' element. See Path data. See below for a discussion of this attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementDescentAttribute
#' @title descent
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'descent' descriptor within an font.face rule. The maximum unaccented depth of the font within the font coordinate system. If the attribute is not specified, the effect is as if the attribute were set to the 'vert.origin.y' value for the corresponding font.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontFamilyAttribute
#' @title font.family
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{Same syntax and semantics as the 'font.family' descriptor within an font.face rule.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontSizeAttribute
#' @title font.size
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{Same syntax and semantics as the 'font.size' descriptor within an font.face rule.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontStretchAttribute
#' @title font.stretch
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{all | [ normal | ultra.condensed | extra.condensed | condensed | semi.condensed | semi.expanded | expanded | extra.expanded | ultra.expanded] [, [ normal | ultra.condensed | extra.condensed | condensed | semi.condensed | semi.expanded | expanded | extra.expanded | ultra.expanded] ]*}{Same syntax and semantics as the 'font.stretch' descriptor within an font.face rule. Indication of the condensed or expanded nature of the face relative to others in the same font family. Takes on the same values as the 'font.stretch' property except that. relative keywords (wider, narrower) are not permitteda comma.separated list is permittedthe keyword 'all' is permitted If the attribute is not specified, the effect is as if a value of 'normal' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontStyleAttribute
#' @title font.style
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{all | [ normal | italic | oblique] [, [normal | italic | oblique]]*}{Same syntax and semantics as the 'font.style' descriptor within an font.face rule. The style of a font. Takes on the same values as the 'font.style' property, except that a comma.separated list is permitted. If the attribute is not specified, the effect is as if a value of 'all' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontVariantAttribute
#' @title font.variant
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{[normal | small.caps] [,[normal | small.caps]]*}{Same syntax and semantics as the 'font.variant' descriptor within an font.face rule. Indication of whether this face is the small.caps variant of a font. Takes on the same values as the 'font.variant' property, except that a comma.separated list is permitted. If the attribute is not specified, the effect is as if a value of 'normal' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementFontWeightAttribute
#' @title font.weight
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{all | [normal | bold | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900] [, [normal | bold | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900]]*}{Same syntax and semantics as the 'font.weight' descriptor within an font.face rule. The weight of a face relative to others in the same font family. Takes on the same values as the 'font.weight' property with three exceptions. relative keywords (bolder, lighter) are not permitteda comma.separated list of values is permitted, for fonts that contain multiple weightsan additional keyword, 'all', is permitted, which means that the font will match for all possible weights; either because it contains multiple weights, or because that face only has a single weight. If the attribute is not specified, the effect is as if a value of 'all' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementG1Attribute
#' @title g1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<name> [, <name> ]*}{A sequence (comma.separated) of glyph names (i.e., values that match 'glyph.name' attributes on 'glyph' elements) which identify a set of possible first glyphs in the kerning pair. All glyphs with the given glyph name are included in the set. The total set of possible first glyphs in the kerning pair is the union of glyphs specified by the 'u1' and 'g1' attributes.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementG2Attribute
#' @title g2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<name> [, <name> ]*}{Same as the 'g1' attribute, except that 'g2' specifies possible second glyphs in the kerning pair.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementGlyphNameAttribute
#' @title glyph.name
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<name> [, <name> ]*}{A name for the glyph. It is recommended that glyph names be unique within a font. The glyph names can be used in situations where Unicode character numbers do not provide sufficient information to access the correct glyph, such as when there are multiple glyphs per Unicode character. The glyph names can be referenced in kerning definitions.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementHangingAttribute
#' @title hanging
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{For horizontally oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve hanging baseline alignment. The value is an offset in the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontElementHorizAdvXAttribute
#' @title horiz.adv.x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The default horizontal advance after rendering a glyph in horizontal orientation. Glyph widths are required to be non.negative, even if the glyph is typically rendered right.to.left, as in Hebrew and Arabic scripts.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementHorizAdvXAttribute
#' @title horiz.adv.x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The horizontal advance after rendering the glyph in horizontal orientation. If the attribute is not specified, the effect is as if the attribute were set to the value of the font's 'horiz.adv.x' attribute. Glyph widths are required to be non.negative, even if the glyph is typically rendered right.to.left, as in Hebrew and Arabic scripts.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontElementHorizOriginXAttribute
#' @title horiz.origin.x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The X.coordinate in the font coordinate system of the origin of a glyph to be used when drawing horizontally oriented text. (Note that the origin applies to all glyphs in the font.) If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontElementHorizOriginYAttribute
#' @title horiz.origin.y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The Y.coordinate in the font coordinate system of the origin of a glyph to be used when drawing horizontally oriented text. (Note that the origin applies to all glyphs in the font.) If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementIdeographicAttribute
#' @title ideographic
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{For horizontally oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve ideographic baseline alignment. The value is an offset in the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementKAttribute
#' @title k
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The amount to decrease the spacing between the two glyphs in the kerning pair. The value is in the font coordinate system. This attribute is required.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementLangAttribute
#' @title lang
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{LanguageCodes;}{The attribute value is a comma.separated list of language names as defined in BCP 47 [BCP47]. The glyph can be used if the 'xml.lang' attribute exactly matches one of the languages given in the value of this parameter, or if the 'xml.lang' attribute exactly equals a prefix of one of the languages given in the value of this parameter such that the first tag character following the prefix is ".".Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementMathematicalAttribute
#' @title mathematical
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'mathline' descriptor within an font.face rule. For horizontally oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve mathematical baseline alignment. The value is an offset in the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceNameElementNameAttribute
#' @title name
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{The 'name' attribute specifies the name of a local font. Unlike the syntax allowed between the parentheses of the local(...) clause in an font.face rule 'src' descriptor, the font name specified in this attribute is not surrounded in single or double quotes. Refer to the description of the 'src' descriptor in CSS2 for details on how the font name is interpreted ([CSS2], section 15.3.5).Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face-name]{font.face.name}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementOrientationAttribute
#' @title orientation
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{h | v}{Indicates that the given glyph is only to be used for a particular inline.progression.direction (i.e., horizontal or vertical). If the attribute is not specified, then the glyph can be used in all cases (i.e., both horizontal and vertical inline.progression.direction).Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementOverlinePositionAttribute
#' @title overline.position
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The ideal position of an overline within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementOverlineThicknessAttribute
#' @title overline.thickness
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The ideal thickness of an overline, expressed as a length within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementPanose1Attribute
#' @title panose.1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{[<integer>]{10}}{Same syntax and semantics as the 'panose.1' descriptor within an font.face rule. The Panose.1 number, consisting of ten decimal integers, separated by whitespace. Except for any additional information provided in this specification, the normative definition of the attribute is in CSS2 ([CSS2], section 15.3.6). If the attribute is not specified, the effect is as if a value of '0 0 0 0 0 0 0 0 0 0' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementSlopeAttribute
#' @title slope
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'slope' descriptor within an font.face rule. The vertical stroke angle of the font. Except for any additional information provided in this specification, the normative definition of the attribute is in CSS2 ([CSS2], section 15.3.6). If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStemhAttribute
#' @title stemh
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'stemh' descriptor within an font.face rule.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStemvAttribute
#' @title stemv
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'stemv' descriptor within an font.face rule.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStrikeThroughPositionAttribute
#' @title strikethrough.position
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The ideal position of a strike.through within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementStrikeThroughThicknessAttribute
#' @title strikethrough.thickness
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The ideal thickness of a strike.through, expressed as a length within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceFormatElementStringAttribute
#' @title string
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{The 'string' attribute is a hint to the user agent, and specifies a list of formats that the font referenced by the parent 'font.face.uri' element supports. The syntax of the attribute value is a format string as defined in CSS2, such as 'truetype'. Refer to the description of the 'src' descriptor in CSS2 for details on how the format hint is interpreted ([CSS2], section 15.3.5).Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face-format]{font.face.format}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementU1Attribute
#' @title u1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{[<character> | <urange> ] [, [<character> | <urange>] ]*}{A sequence (comma.separated) of Unicode characters (refer to the description of the 'unicode' attribute to the 'glyph' element for a description of how to express individual Unicode characters) and/or ranges of Unicode characters (see description of ranges of Unicode characters in CSS2; [CSS2], section 15.3.3) which identify a set of possible first glyphs in the kerning pair. If a given Unicode character within the set has multiple corresponding 'glyph' elements (i.e., there are multiple 'glyph' elements with the same 'unicode' attribute value, but different 'glyph.name' values), then all such glyphs are included in the set. Comma is the separator character; thus, to kern a comma, specify the comma as part of a range of Unicode characters or as a glyph name using the 'g1' attribute. The total set of possible first glyphs in the kerning pair is the union of glyphs specified by the 'u1' and 'g1' attributes.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name HKernElementU2Attribute
#' @title u2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{[<character> | <urange>] [, [<character> | <urange>] ]*}{Same as the 'u1' attribute, except that 'u2' specifies possible second glyphs in the kerning pair.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnderlinePositionAttribute
#' @title underline.position
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The ideal position of an underline within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnderlineThicknessAttribute
#' @title underline.thickness
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The ideal thickness of an underline, expressed as a length within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementUnicodeAttribute
#' @title unicode
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{One or more Unicode characters indicating the sequence of Unicode characters which corresponds to this glyph. If a character is provided, then this glyph corresponds to the given Unicode character. If multiple characters are provided, then this glyph corresponds to the given sequence of Unicode characters. One use of a sequence of characters is ligatures. For example, if unicode="ffl", then the given glyph will be used to render the sequence of characters "f", "f", and "l". It is often useful to refer to characters using XML character references expressed in hexadecimal notation or decimal notation. For example, unicode="ffl" could be expressed as XML character references in hexadecimal notation as unicode="&#x66;&#x66;&#x6c;" or in decimal notation as unicode="&#102;&#102;&#108;". The 'unicode' attribute contributes to the process for deciding which glyph(s) are used to represent which character(s). See glyph selection rules. If the 'unicode' attribute is not provided for a given 'glyph', then the only way to use this glyph is via an 'altGlyph' reference.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnicodeRangeAttribute
#' @title unicode.range
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<urange> [, <urange>]*}{Same syntax and semantics as the 'unicode.range' descriptor within an font.face rule. The range of ISO 10646 characters [UNICODE] possibly covered by the glyphs in the font. Except for any additional information provided in this specification, the normative definition of the attribute is in CSS2 ([CSS2], section 15.3.3). If the attribute is not specified, the effect is as if a value of 'U+0.10FFFF' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementUnitsPerEmAttribute
#' @title units.per.em
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'units.per.em' descriptor within an font.face rule. The number of coordinate units on the em square, the size of the design grid on which glyphs are laid out. This value is almost always necessary as nearly every other attribute requires the definition of a design grid. If the attribute is not specified, the effect is as if a value of '1000' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertAlphabeticAttribute
#' @title v.alphabetic
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{For vertically oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve alphabetic baseline alignment. The value is an offset in the font coordinate system relative to the glyph.specific 'vert.origin.x' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertHangingAttribute
#' @title v.hanging
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{For vertically oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve hanging baseline alignment. The value is an offset in the font coordinate system relative to the glyph.specific 'vert.origin.x' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertIdeographicAttribute
#' @title v.ideographic
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{For vertically oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve ideographic baseline alignment. The value is an offset in the font coordinate system relative to the glyph.specific 'vert.origin.x' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementVertMathematicalAttribute
#' @title v.mathematical
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{For vertically oriented glyph layouts, indicates the alignment coordinate for glyphs to achieve mathematical baseline alignment. The value is an offset in the font coordinate system relative to the glyph.specific 'vert.origin.x' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontElementVertAdvYAttribute
#' @title vert.adv.y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The default vertical advance after rendering a glyph in vertical orientation. If the attribute is not specified, the effect is as if a value equivalent of one em were specified (see 'units.per.em').Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementVertAdvYAttribute
#' @title vert.adv.y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The vertical advance after rendering a glyph in vertical orientation. If the attribute is not specified, the effect is as if the attribute were set to the value of the font's 'vert.adv.y' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontElementVertOriginXAttribute
#' @title vert.origin.x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The default X.coordinate in the font coordinate system of the origin of a glyph to be used when drawing vertically oriented text. If the attribute is not specified, the effect is as if the attribute were set to half of the effective value of attribute 'horiz.adv.x'.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementVertOriginXAttribute
#' @title vert.origin.x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The X.coordinate in the font coordinate system of the origin of the glyph to be used when drawing vertically oriented text. If the attribute is not specified, the effect is as if the attribute were set to the value of the font's 'vert.origin.x' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontElementVertOriginYAttribute
#' @title vert.origin.y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The default Y.coordinate in the font coordinate system of the origin of a glyph to be used when drawing vertically oriented text. If the attribute is not specified, the effect is as if the attribute were set to the position specified by the font's 'ascent' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal
NULL


#' @name GlyphElementVertOriginYAttribute
#' @title vert.origin.y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The Y.coordinate in the font coordinate system of the origin of a glyph to be used when drawing vertically oriented text. If the attribute is not specified, the effect is as if the attribute were set to the value of the font's 'vert.origin.y' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementWidthsAttribute
#' @title widths
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{Same syntax and semantics as the 'widths' descriptor within an font.face rule.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceElementXHeightAttribute
#' @title x.height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Same syntax and semantics as the 'x.height' descriptor within an font.face rule. The height of lowercase glyphs in the font within the font coordinate system.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face]{font.face}}}
#' }
#' @keywords internal
NULL


#' @name FontFaceUriElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<IRI>}{The 'xlink.href' attribute specifies the location of the referenced font.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font-face-uri]{font.face.uri}}}
#' }
#' @keywords internal
NULL


#' @name AccumulateAttribute
#' @title accumulate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{sum}{Specifies that each repeat iteration after the first builds upon the last value of the previous iteration.}
#' \item{none}{Specifies that repeat iterations are not cumulative. This is the default.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name AdditiveAttribute
#' @title additive
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{sum}{Specifies that the animation will add to the underlying value of the attribute and other lower priority animations.}
#' \item{replace}{Specifies that the animation will override the underlying value of the attribute and other lower priority animations. This is the default, however the behavior is also affected by the animation value attributes 'by' and 'to', as described in SMIL Animation. How from, to and by attributes affect additive behavior.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name AttributeNameAttribute
#' @title attributeName
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<attributeName>}{Specifies the name of the target attribute. An XMLNS prefix may be used to indicate the XML namespace for the attribute. The prefix will be interpreted in the scope of the current (i.e., the referencing) animation element. Except for any SVG.specific rules explicitly mentioned in this specification, the normative definition for this attribute is the SMIL Animation specification. In particular, see SMIL Animation. Specifying the animation target ([SMILANIM], section 3.1).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name AttributeTypeAttribute
#' @title attributeType
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{CSS}{This specifies that the value of 'attributeName' is the name of a CSS property defined as animatable in this specification.}
#' \item{XML}{This specifies that the value of 'attributeName' is the name of an XML attribute defined in the default XML namespace for the target element. If the value for 'attributeName' has an XMLNS prefix, the implementation must use the associated namespace as defined in the scope of the target element. The attribute must be defined as animatable in this specification.}
#' \item{auto}{The implementation should match the 'attributeName' to an attribute for the target element. The implementation must first search through the list of CSS properties for a matching property name, and if none is found, search the default XML namespace for the element.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name BeginAttribute
#' @title begin
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{begin.value.list ..= begin.value (S? ";" S? begin.value.list )?}{A semicolon separated list of begin values. The interpretation of a list of begin times is detailed in SMIL Animation's section on "Evaluation of begin and end time lists".}
#' \item{begin.value ..= ( offset.value | syncbase.value | event.value | repeat.value | accessKey.value | wallclock.sync.value | "indefinite" )}{Describes the element begin.}
#' \item{offset.value ..= ( S? "+" | "." S? )? ( Clock.value )}{For SMIL Animation, this describes the element begin as an offset from an implicit syncbase. For SVG, the implicit syncbase begin is defined to be relative to the document begin. Negative begin times are entirely valid and easy to compute, as long as there is a resolved document begin time.}
#' \item{syncbase.value ..= ( Id.value "." ( "begin" | "end" ) ) ( S? ("+"|".") S? Clock.value )?}{Describes a syncbase and an optional offset from that syncbase. The element begin is defined relative to the begin or active end of another animation. A syncbase consists of an ID reference to another animation element followed by either begin or end to identify whether to synchronize with the beginning or active end of the referenced animation element.}
#' \item{event.value ..= ( Id.value "." )? ( event.ref ) ( S? ("+"|".") S? Clock.value )?}{Describes an event and an optional offset that determine the element begin. The animation begin is defined relative to the time that the event is raised. The list of event.symbols available for a given event.base element is the list of event attributes available for the given element as defined by the SVG DTD, with the one difference that the leading 'on' is removed from the event name (i.e., the animation event name is 'click', not 'onclick'). A list of all events supported by SVG can be found in Complete list of supported events. Details of event.based timing are described in SMIL Animation. Unifying Event.based and Scheduled Timing.}
#' \item{repeat.value ..= ( Id.value "." )? "repeat(" integer ")" ( S? ("+"|".") S? Clock.value )?}{Describes a qualified repeat event. The element begin is defined relative to the time that the repeat event is raised with the specified iteration value.}
#' \item{accessKey.value ..= "accessKey(" character ")" ( S? ("+"|".") S? Clock.value )?}{Describes an accessKey that determines the element begin. The element begin is defined relative to the time that the accessKey character is input by the user.}
#' \item{wallclock.sync.value ..= "wallclock(" wallclock.value ")"}{Describes the element begin as a real.world clock time. The wallclock time syntax is based upon syntax defined in Representation of dates and times [ISO8601].}
#' \item{indefinite}{The begin of the animation will be determined by a "beginElement()" method call or a hyperlink targeted to the element. The animation DOM methods are described in DOM interfaces. Hyperlink.based timing is described in SMIL Animation. Hyperlinks and timing.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name ByAttribute
#' @title by
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<value>}{Specifies a relative offset value for the animation. Except for any SVG.specific rules explicitly mentioned in this specification, the normative definition for this attribute is the SMIL Animation specification. In particular, see SMIL Animation. 'by' attribute ([SMILANIM], section 3.2.2).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name CalcModeAttribute
#' @title calcMode
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{discrete}{This specifies that the animation function will jump from one value to the next without any interpolation.}
#' \item{linear}{Simple linear interpolation between values is used to calculate the animation function. Except for 'animateMotion', this is the default 'calcMode'.}
#' \item{paced}{Defines interpolation to produce an even pace of change across the animation. This is only supported for the data types for which there is an appropriate distance function defined, which includes only scalar numeric types plus the types listed in Paced animation and complex types. If 'paced' is specified, any 'keyTimes' or 'keySplines' will be ignored. For 'animateMotion', this is the default 'calcMode'. Authors are discouraged from using paced animation on types that do not have a distance function defined, due to its unpredictable behavior in some user agents.}
#' \item{spline}{Interpolates from one value in the 'values' list to the next according to a time function defined by a cubic Bzier spline. The points of the spline are defined in the 'keyTimes' attribute, and the control points for each interval are defined in the 'keySplines' attribute.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name DurAttribute
#' @title dur
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{Clock.value}{Specifies the length of the simple duration in presentation time. Value must be greater than 0.}
#' \item{media}{Specifies the simple duration as the intrinsic media duration. This is only valid for elements that define media. (For SVG's animation elements, if 'media' is specified, the attribute will be ignored.)}
#' \item{indefinite}{Specifies the simple duration as indefinite.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name EndAttribute
#' @title end
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{end.value.list ..= end.value (S? ";" S? end.value.list )?}{A semicolon separated list of end values. The interpretation of a list of end times is detailed below.}
#' \item{end.value ..= ( offset.value | syncbase.value | event.value | repeat.value | accessKey.value | wallclock.sync.value | "indefinite" )}{Describes the active end of the animation.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name FillAttribute
#' @title fill
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{freeze}{The animation effect F(t) is defined to freeze the effect value at the last value of the active duration. The animation effect is "frozen" for the remainder of the document duration (or until the animation is restarted . see SMIL Animation. Restarting animation).}
#' \item{remove}{The animation effect is removed (no longer applied) when the active duration of the animation is over. After the active end of the animation, the animation no longer affects the target (unless the animation is restarted . see SMIL Animation. Restarting animation). This is the default value.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name FromAttribute
#' @title from
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<value>}{Specifies the starting value of the animation. Except for any SVG.specific rules explicitly mentioned in this specification, the normative definition for this attribute is the SMIL Animation specification. In particular, see SMIL Animation. 'from' attribute ([SMILANIM], section 3.2.2).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name KeyPointsAttribute
#' @title keyPoints
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.numbers>}{'keyPoints' takes a semicolon.separated list of floating point values between 0 and 1 and indicates how far along the motion path the object shall move at the moment in time specified by corresponding 'keyTimes' value. Distance calculations use the user agent's distance along the path algorithm. Each progress value in the list corresponds to a value in the 'keyTimes' attribute list. If a list of 'keyPoints' is specified, there must be exactly as many values in the 'keyPoints' list as in the 'keyTimes' list. If there are any errors in the 'keyPoints' specification (bad values, too many or too few values), then the document is in error (see Error processing).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name KeySplinesAttribute
#' @title keySplines
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list>}{A set of Bzier control points associated with the 'keyTimes' list, defining a cubic Bzier function that controls interval pacing. The attribute value is a semicolon.separated list of control point descriptions. Each control point description is a set of four values. x1 y1 x2 y2, describing the Bzier control points for one time segment. Note. SMIL allows these values to be separated either by commas with optional whitespace, or by whitespace alone. The 'keyTimes' values that define the associated segment are the Bzier "anchor points", and the 'keySplines' values are the control points. Thus, there must be one fewer sets of control points than there are 'keyTimes'. The values must all be in the range 0 to 1. This attribute is ignored unless the 'calcMode' is set to 'spline'. If there are any errors in the 'keySplines' specification (bad values, too many or too few values), the document fragment is in error (see error processing). Except for any SVG.specific rules explicitly mentioned in this specification, the normative definition for this attribute is the SMIL Animation specification. In particular, see SMIL Animation. 'keySplines' attribute ([SMILANIM], section 3.2.3).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name KeyTimesAttribute
#' @title keyTimes
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list>}{yy}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name MaxAttribute
#' @title max
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{Clock.value}{Specifies the length of the maximum value of the active duration, measured in local time. Value must be greater than 0.}
#' \item{media}{Specifies the maximum value of the active duration as the intrinsic media duration. This is only valid for elements that define media. (For SVG's animation elements, if 'media' is specified, the attribute will be ignored.)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name MinAttribute
#' @title min
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{Clock.value}{Specifies the length of the minimum value of the active duration, measured in local time. Value must be greater than 0.}
#' \item{media}{Specifies the minimum value of the active duration as the intrinsic media duration. This is only valid for elements that define media. (For SVG's animation elements, if 'media' is specified, the attribute will be ignored.)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OriginAttribute
#' @title origin
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{default}{The 'origin' attribute is defined in the SMIL Animation specification ([SMILANIM], section 4.3). It has no effect in SVG.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name PathAttribute
#' @title path
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<path.data>}{The motion path, expressed in the same format and interpreted the same way as the 'd' attribute on the 'path' element. The effect of a motion path animation is to add a supplemental transformation matrix onto the CTM for the referenced object which causes a translation along the x. and y.axes of the current user coordinate system by the computed X and Y values computed over time.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name RepeatCountAttribute
#' @title repeatCount
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{numeric value}{This is a (base 10) "floating point" numeric value that specifies the number of iterations. It can include partial iterations expressed as fraction values. A fractional value describes a portion of the simple duration. Values must be greater than 0.}
#' \item{indefinite}{The animation is defined to repeat indefinitely (i.e. until the document ends).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name RepeatDurAttribute
#' @title repeatDur
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{Clock.value}{Specifies the duration in presentation time to repeat the animation function f(t).}
#' \item{indefinite}{The animation is defined to repeat indefinitely (i.e. until the document ends).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name RestartAttribute
#' @title restart
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{always}{The animation can be restarted at any time (The default)}
#' \item{whenNotActive}{The animation can be restarted only when not active (i.e. the active end)}
#' \item{never}{The element cannot be restarted for the duration of the parent container.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name RotateAttribute
#' @title rotate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{auto}{Indicates that the object is rotated over time by the angle of the direction (i.e., directional tangent vector) of the motion path.}
#' \item{auto.reverse}{Indicates that the object is rotated over time by the angle of the direction (i.e., directional tangent vector) of the motion path plus 180 degrees.}
#' \item{<number>}{Indicates that the target element has a constant rotation transformation applied to it, where the rotation angle is the specified number of degrees.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateMotion]{animateMotion}}}
#' }
#' @keywords internal
NULL


#' @name SetElementToAttribute
#' @title to
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<value>}{Specifies the value for the attribute during the duration of the 'set' element. The argument value must match the attribute type.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name ToAttribute
#' @title to
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<value>}{Specifies the ending value of the animation. Except for any SVG.specific rules explicitly mentioned in this specification, the normative definition for this attribute is the SMIL Animation specification. In particular, see SMIL Animation. 'to' attribute ([SMILANIM], section 3.2.2).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name AnimateTransformElementTypeAttribute
#' @title type
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{translate | scale | rotate | skewX | skewY}{Indicates the type of transformation which is to have its values change over time. If the attribute is not specified, then the effect is as if a value of 'translate' were specified.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name ValuesAttribute
#' @title values
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list>}{A semicolon.separated list of one or more values. Vector.valued attributes are supported using the vector syntax of the 'attributeType' domain. Per the SMIL specification, leading and trailing white space, and white space before and after semicolon separators, is allowed and will be ignored. Except for any SVG.specific rules explicitly mentioned in this specification, the normative definition for this attribute is the SMIL Animation specification. In particular, see SMIL Animation. 'values' attribute ([SMILANIM], section 3.2.2).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
#' }
#' @keywords internal
NULL


#' @name MPathElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to the 'path' element which defines the motion path.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mpath]{mpath}}}
#' }
#' @keywords internal
NULL


#' @name HrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to the element which is the target of this animation and which therefore will be modified over time. The target element must be part of the current SVG document fragment. <iri> must point to exactly one target element which is capable of being the target of the given animation. If <iri> points to multiple target elements, if the given target element is not capable of being a target of the given animation, or if the given target element is not part of the current SVG document fragment, then the document is in error (see Error processing). If the 'xlink.href' attribute is not provided, then the target element will be the immediate parent element of the current animation element. Refer to the descriptions of the individual animation elements for any restrictions on what types of elements can be targets of particular types of animations. Except for any SVG.specific rules explicitly mentioned in this specification, the normative definition for this attribute is the SMIL Animation specification. In particular, see SMIL Animation. Specifying the animation target ([SMILANIM], section 3.1).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferAmplitudeAttribute
#' @title amplitude
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{When type="gamma", the amplitude of the gamma function. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feDistantLightAzimuthAttribute
#' @title azimuth
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Direction angle for the light source on the XY plane (clockwise), in degrees from the x axis. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feDistantLight]{feDistantLight}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceBaseFrequencyAttribute
#' @title baseFrequency
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{The base frequency (frequencies) parameter(s) for the noise function. If two <number>s are provided, the first number represents a base frequency in the X direction and the second value represents a base frequency in the Y direction. If one number is provided, then that value is used for both X and Y. A negative value for base frequency is an error (see Error processing). If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementBiasAttribute
#' @title bias
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{After applying the 'kernelMatrix' to the input image to yield a number and applying the 'divisor', the 'bias' attribute is added to each component. One application of 'bias' is when it is desirable to have .5 gray value be the zero response of the filter. The bias property shifts the range of the filter. This allows representation of values that would otherwise be clamped to 0 or 1. If 'bias' is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feDiffuseLightingDiffuseConstantAttribute
#' @title diffuseConstant
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{kd in Phong lighting model. In SVG, this can be any non.negative number. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementDivisorAttribute
#' @title divisor
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{After applying the 'kernelMatrix' to the input image to yield a number, that number is divided by 'divisor' to yield the final destination color value. A divisor that is the sum of all the matrix values tends to have an evening effect on the overall color intensity of the result. It is an error to specify a divisor of zero. The default value is the sum of all values in kernelMatrix, with the exception that if the sum is zero, then the divisor is set to 1.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feOffsetDxAttribute
#' @title dx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The amount to offset the input graphic along the x.axis. The offset amount is expressed in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feOffset]{feOffset}}}
#' }
#' @keywords internal
NULL


#' @name feOffsetDyAttribute
#' @title dy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The amount to offset the input graphic along the y.axis. The offset amount is expressed in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feOffset]{feOffset}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementEdgeModeAttribute
#' @title edgeMode
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{duplicate | wrap | none}{Determines how to extend the input image as necessary with color values so that the matrix operations can be applied when the kernel is positioned at or near the edge of the input image. "duplicate" indicates that the input image is extended along each of its borders as necessary by duplicating the color values at the given edge of the input image.Original N.by.M image, where m=M.1 and n=N.1. 11 12 ... 1m 1M 21 22 ... 2m 2M .. .. ... .. .. n1 n2 ... nm nM N1 N2 ... Nm NMExtended by two pixels using "duplicate". 11 11 11 12 ... 1m 1M 1M 1M 11 11 11 12 ... 1m 1M 1M 1M 11 11 11 12 ... 1m 1M 1M 1M 21 21 21 22 ... 2m 2M 2M 2M .. .. .. .. ... .. .. .. .. n1 n1 n1 n2 ... nm nM nM nM N1 N1 N1 N2 ... Nm NM NM NM N1 N1 N1 N2 ... Nm NM NM NM N1 N1 N1 N2 ... Nm NM NM NM "wrap" indicates that the input image is extended by taking the color values from the opposite edge of the image.Extended by two pixels using "wrap". nm nM n1 n2 ... nm nM n1 n2 Nm NM N1 N2 ... Nm NM N1 N2 1m 1M 11 12 ... 1m 1M 11 12 2m 2M 21 22 ... 2m 2M 21 22 .. .. .. .. ... .. .. .. .. nm nM n1 n2 ... nm nM n1 n2 Nm NM N1 N2 ... Nm NM N1 N2 1m 1M 11 12 ... 1m 1M 11 12 2m 2M 21 22 ... 2m 2M 21 22 "none" indicates that the input image is extended with pixel values of zero for R, G, B and A. If attribute 'edgeMode' is not specified, then the effect is as if a value of duplicate were specified. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feDistantLightElevationAttribute
#' @title elevation
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Direction angle for the light source from the XY plane towards the z axis, in degrees. Note the positive Z.axis points towards the viewer of the content. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feDistantLight]{feDistantLight}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferExponentAttribute
#' @title exponent
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{When type="gamma", the exponent of the gamma function. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementFilterResAttribute
#' @title filterRes
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{See Filter effects region.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementFilterUnitsAttribute
#' @title filterUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{See Filter effects region.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{See Filter effects region.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The height of the subregion which restricts calculation and rendering of the given filter primitive. See filter primitive subregion. A negative value is an error (see Error processing). A value of zero disables the effect of the given filter primitive (i.e., the result is a transparent black image).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveInAttribute
#' @title in
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{SourceGraphic}{This keyword represents the graphics elements that were the original input into the 'filter' element. For raster effects filter primitives, the graphics elements will be rasterized into an initially clear RGBA raster in image space. Pixels left untouched by the original graphic will be left clear. The image is specified to be rendered in linear RGBA pixels. The alpha channel of this image captures any anti.aliasing specified by SVG. (Since the raster is linear, the alpha channel of this image will represent the exact percent coverage of each pixel.)}
#' \item{SourceAlpha}{This keyword represents the graphics elements that were the original input into the 'filter' element. SourceAlpha has all of the same rules as SourceGraphic except that only the alpha channel is used. The input image is an RGBA image consisting of implicitly black color values for the RGB channels, but whose alpha channel is the same as SourceGraphic. If this option is used, then some implementations might need to rasterize the graphics elements in order to extract the alpha channel.}
#' \item{BackgroundImage}{This keyword represents an image snapshot of the canvas under the filter region at the time that the 'filter' element was invoked. See Accessing the background image.}
#' \item{BackgroundAlpha}{Same as BackgroundImage except only the alpha channel is used. See SourceAlpha and Accessing the background image.}
#' \item{FillPaint}{This keyword represents the value of the 'fill' property on the target element for the filter effect. The FillPaint image has conceptually infinite extent. Frequently this image is opaque everywhere, but it might not be if the "paint" itself has alpha, as in the case of a gradient or pattern which itself includes transparent or semi.transparent parts.}
#' \item{StrokePaint}{This keyword represents the value of the 'stroke' property on the target element for the filter effect. The StrokePaint image has conceptually infinite extent. Frequently this image is opaque everywhere, but it might not be if the "paint" itself has alpha, as in the case of a gradient or pattern which itself includes transparent or semi.transparent parts.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}}
#' }
#' @keywords internal
NULL


#' @name feBlendIn2Attribute
#' @title in2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{(see 'in' attribute)}{The second input image to the blending operation. This attribute can take on the same values as the 'in' attribute.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeIn2Attribute
#' @title in2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{(see 'in' attribute)}{The second input image to the compositing operation. This attribute can take on the same values as the 'in' attribute.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feDisplacementMapIn2Attribute
#' @title in2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{(see 'in' attribute)}{The second input image, which is used to displace the pixels in the image from attribute 'in'. This attribute can take on the same values as the 'in' attribute.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferInterceptAttribute
#' @title intercept
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{When type="linear", the intercept of the linear function. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK1Attribute
#' @title k1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Only applicable if operator="arithmetic". If the attribute is not specified, the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK2Attribute
#' @title k2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Only applicable if operator="arithmetic". If the attribute is not specified, the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK3Attribute
#' @title k3
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Only applicable if operator="arithmetic". If the attribute is not specified, the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeK4Attribute
#' @title k4
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Only applicable if operator="arithmetic". If the attribute is not specified, the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementKernelMatrixAttribute
#' @title kernelMatrix
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list of numbers>}{The list of <number>s that make up the kernel matrix for the convolution. Values are separated by space characters and/or a comma. The number of entries in the list must equal <orderX> times <orderY>.Animatable. yes.}
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
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{The first number is the <dx> value. The second number is the <dy> value. If the <dy> value is not specified, it defaults to the same value as <dx>. Indicates the intended distance in current filter units (i.e., units as determined by the value of attribute 'primitiveUnits') between successive columns and rows, respectively, in the 'kernelMatrix'. By specifying value(s) for 'kernelUnitLength', the kernel becomes defined in a scalable, abstract coordinate system. If 'kernelUnitLength' is not specified, the default value is one pixel in the offscreen bitmap, which is a pixel.based coordinate system, and thus potentially not scalable. For some level of consistency across display media and user agents, it is necessary that a value be provided for at least one of 'filterRes' and 'kernelUnitLength'. In some implementations, the most consistent results and the fastest performance will be achieved if the pixel grid of the temporary offscreen images aligns with the pixel grid of the kernel. A negative or zero value is an error (see Error processing).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feDiffuseLightingKernelUnitLengthAttribute
#' @title kernelUnitLength
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{The first number is the <dx> value. The second number is the <dy> value. If the <dy> value is not specified, it defaults to the same value as <dx>. Indicates the intended distance in current filter units (i.e., units as determined by the value of attribute 'primitiveUnits') for dx and dy, respectively, in the surface normal calculation formulas. By specifying value(s) for 'kernelUnitLength', the kernel becomes defined in a scalable, abstract coordinate system. If 'kernelUnitLength' is not specified, the dx and dy values should represent very small deltas relative to a given (x,y) position, which might be implemented in some cases as one pixel in the intermediate image offscreen bitmap, which is a pixel.based coordinate system, and thus potentially not scalable. For some level of consistency across display media and user agents, it is necessary that a value be provided for at least one of 'filterRes' and 'kernelUnitLength'. Discussion of intermediate images are in the Introduction and in the description of attribute 'filterRes'. A negative or zero value is an error (see Error processing).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingKernelUnitLengthAttribute
#' @title kernelUnitLength
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{The first number is the <dx> value. The second number is the <dy> value. If the <dy> value is not specified, it defaults to the same value as <dx>. Indicates the intended distance in current filter units (i.e., units as determined by the value of attribute 'primitiveUnits') for dx and dy, respectively, in the surface normal calculation formulas. By specifying value(s) for 'kernelUnitLength', the kernel becomes defined in a scalable, abstract coordinate system. If 'kernelUnitLength' is not specified, the dx and dy values should represent very small deltas relative to a given (x,y) position, which might be implemented in some cases as one pixel in the intermediate image offscreen bitmap, which is a pixel.based coordinate system, and thus potentially not scalable. For some level of consistency across display media and user agents, it is necessary that a value be provided for at least one of 'filterRes' and 'kernelUnitLength'. Discussion of intermediate images are in the Introduction and in the description of attribute 'filterRes'. A negative or zero value is an error (see Error processing).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightLimitingConeAngleAttribute
#' @title limitingConeAngle
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{A limiting cone which restricts the region where the light is projected. No light is projected outside the cone. 'limitingConeAngle' represents the angle in degrees between the spot light axis (i.e. the axis between the light source and the point to which it is pointing at) and the spot light cone. User agents should apply a smoothing technique such as anti.aliasing at the boundary of the cone. If no value is specified, then no limiting cone will be applied.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feBlendModeAttribute
#' @title mode
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{normal | multiply | screen | darken | lighten}{One of the image blending modes (see table below). If attribute 'mode' is not specified, then the effect is as if a value of normal were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceNumOctavesAttribute
#' @title numOctaves
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<integer>}{The numOctaves parameter for the noise function. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferOffsetAttribute
#' @title offset
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{When type="gamma", the offset of the gamma function. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feCompositeOperatorAttribute
#' @title operator
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{over | in | out | atop | xor | arithmetic}{The compositing operation that is to be performed. All of the 'operator' types except arithmetic match the corresponding operation as described in [PORTERDUFF]. The arithmetic operator is described above. If attribute 'operator' is not specified, then the effect is as if a value of over were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal
NULL


#' @name feMorphologyOperatorAttribute
#' @title operator
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{erode | dilate}{A keyword indicating whether to erode (i.e., thin) or dilate (fatten) the source graphic. If attribute 'operator' is not specified, then the effect is as if a value of erode were specified. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feMorphology]{feMorphology}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementOrderAttribute
#' @title order
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{Indicates the number of cells in each dimension for 'kernelMatrix'. The values provided must be <integer>s greater than zero. The first number, <orderX>, indicates the number of columns in the matrix. The second number, <orderY>, indicates the number of rows in the matrix. If <orderY> is not provided, it defaults to <orderX>. A typical value is order="3". It is recommended that only small values (e.g., 3) be used; higher values may result in very high CPU overhead and usually do not produce results that justify the impact on performance. If the attribute is not specified, the effect is as if a value of 3 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightPointsAtXAttribute
#' @title pointsAtX
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{X location in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element of the point at which the light source is pointing. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightPointsAtYAttribute
#' @title pointsAtY
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Y location in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element of the point at which the light source is pointing. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightPointsAtZAttribute
#' @title pointsAtZ
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Z location in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element of the point at which the light source is pointing, assuming that, in the initial coordinate system, the positive Z.axis comes out towards the person viewing the content and assuming that one unit along the Z.axis equals one unit in X and Y. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementPreserveAlphaAttribute
#' @title preserveAlpha
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{false | true}{A value of false indicates that the convolution will be applied to all channels, including the alpha channel. A value of true indicates the convolution is to be applied to only the color channels}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementPrimitiveUnitsAttribute
#' @title primitiveUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Specifies the coordinate system for the various length values within the filter primitives and for the attributes that define the filter primitive subregion. If primitiveUnits="userSpaceOnUse", any length values within the filter definitions represent values in the current user coordinate system in place at the time when the 'filter' element is referenced (i.e., the user coordinate system for the element referencing the 'filter' element via a 'filter' property). If primitiveUnits="objectBoundingBox", then any length values within the filter definitions represent fractions or percentages of the bounding box on the referencing element (see Object bounding box units). Note that if only one number was specified in a <number.optional.number> value this number is expanded out before the 'primitiveUnits' computation takes place. If attribute 'primitiveUnits' is not specified, then the effect is as if a value of userSpaceOnUse were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name feMorphologyRadiusAttribute
#' @title radius
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{The radius (or radii) for the operation. If two <number>s are provided, the first number represents a x.radius and the second value represents a y.radius. If one number is provided, then that value is used for both X and Y. The values are in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. A negative value is an error (see Error processing). A value of zero disables the effect of the given filter primitive (i.e., the result is a transparent black image). If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feMorphology]{feMorphology}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveResultAttribute
#' @title result
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<filter.primitive.reference>}{Assigned name for this filter primitive. If supplied, then graphics that result from processing this filter primitive can be referenced by an 'in' attribute on a subsequent filter primitive within the same 'filter' element. If no value is provided, the output will only be available for re.use as the implicit input into the next filter primitive if that filter primitive provides no value for its 'in' attribute. Note that a <filter.primitive.reference> is not an XML ID; instead, a <filter.primitive.reference> is only meaningful within a given 'filter' element and thus have only local scope. It is legal for the same <filter.primitive.reference> to appear multiple times within the same 'filter' element. When referenced, the <filter.primitive.reference> will use the closest preceding filter primitive with the given result.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feDisplacementMapScaleAttribute
#' @title scale
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Displacement scale factor. The amount is expressed in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. When the value of this attribute is 0, this operation has no effect on the source image. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceSeedAttribute
#' @title seed
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The starting number for the pseudo random number generator. If the attribute is not specified, then the effect is as if a value of 0 were specified. When the seed number is handed over to the algorithm above it must first be truncated, i.e. rounded to the closest integer value towards zero.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferSlopeAttribute
#' @title slope
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{When type="linear", the slope of the linear function. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingSpecularConstantAttribute
#' @title specularConstant
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{ks in Phong lighting model. In SVG, this can be any non.negative number. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingSpecularExponentAttribute
#' @title specularExponent
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Exponent for specular term, larger is more "shiny". Range 1.0 to 128.0. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightSpecularExponentAttribute
#' @title specularExponent
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Exponent value controlling the focus for the light source. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name feGaussianBlurStdDeviationAttribute
#' @title stdDeviation
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number.optional.number>}{The standard deviation for the blur operation. If two <number>s are provided, the first number represents a standard deviation value along the x.axis of the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. The second value represents a standard deviation in Y. If one number is provided, then that value is used for both X and Y. A negative value is an error (see Error processing). A value of zero disables the effect of the given filter primitive (i.e., the result is the filter input image). If 'stdDeviation' is 0 in only one of X or Y, then the effect is that the blur is only applied in the direction that has a non.zero value. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feGaussianBlur]{feGaussianBlur}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceStitchTilesAttribute
#' @title stitchTiles
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{stitch | noStitch}{If stitchTiles="noStitch", no attempt it made to achieve smooth transitions at the border of tiles which contain a turbulence function. Sometimes the result will show clear discontinuities at the tile borders. If stitchTiles="stitch", then the user agent will automatically adjust baseFrequency.x and baseFrequency.y values such that the feTurbulence node's width and height (i.e., the width and height of the current subregion) contains an integral number of the Perlin tile width and height for the first octave. The baseFrequency will be adjusted up or down depending on which way has the smallest relative (not absolute) change as follows. Given the frequency, calculate lowFreq=floor(width*frequency)/width and hiFreq=ceil(width*frequency)/width. If frequency/lowFreq < hiFreq/frequency then use lowFreq, else use hiFreq. While generating turbulence values, generate lattice vectors as normal for Perlin Noise, except for those lattice points that lie on the right or bottom edges of the active area (the size of the resulting tile). In those cases, copy the lattice vector from the opposite edge of the active area. If attribute 'stitchTiles' is not specified, then the effect is as if a value of noStitch were specified. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feDiffuseLightingSurfaceScaleAttribute
#' @title surfaceScale
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{height of surface when Ain = 1. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDiffuseLighting]{feDiffuseLighting}}}
#' }
#' @keywords internal
NULL


#' @name feSpecularLightingSurfaceScaleAttribute
#' @title surfaceScale
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{height of surface when Ain = 1. If the attribute is not specified, then the effect is as if a value of 1 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feSpecularLighting]{feSpecularLighting}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferTableValuesAttribute
#' @title tableValues
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{(list of <number>s)}{When type="table", the list of <number>s v0,v1,...vn, separated by white space and/or a comma, which define the lookup table. An empty list results in an identity transfer function. If the attribute is not specified, then the effect is as if an empty list were provided.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementTargetXAttribute
#' @title targetX
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<integer>}{Determines the positioning in X of the convolution matrix relative to a given target pixel in the input image. The leftmost column of the matrix is column number zero. The value must be such that. 0 <= targetX < orderX. By default, the convolution matrix is centered in X over each pixel of the input image (i.e., targetX = floor ( orderX / 2 )).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feConvolveMatrixElementTargetYAttribute
#' @title targetY
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<integer>}{Determines the positioning in Y of the convolution matrix relative to a given target pixel in the input image. The topmost row of the matrix is row number zero. The value must be such that. 0 <= targetY < orderY. By default, the convolution matrix is centered in Y over each pixel of the input image (i.e., targetY = floor ( orderY / 2 )).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feColorMatrixTypeAttribute
#' @title type
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{matrix | saturate | hueRotate | luminanceToAlpha}{Indicates the type of matrix operation. The keyword 'matrix' indicates that a full 5x4 matrix of values will be provided. The other keywords represent convenience shortcuts to allow commonly used color operations to be performed without specifying a complete matrix. If attribute 'type' is not specified, then the effect is as if a value of matrix were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feColorMatrix]{feColorMatrix}}}
#' }
#' @keywords internal
NULL


#' @name feTurbulenceTypeAttribute
#' @title type
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{fractalNoise | turbulence}{Indicates whether the filter primitive should perform a noise or turbulence function. If attribute 'type' is not specified, then the effect is as if a value of turbulence were specified. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feComponentTransferTypeAttribute
#' @title type
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{identity | table | discrete | linear | gamma}{Indicates the type of component transfer function. The type of function determines the applicability of the other attributes. In the following, C is the initial component (e.g., 'feFuncR'), C' is the remapped component; both in the closed interval [0,1]. For identity. C' = C For table, the function is defined by linear interpolation between values given in the attribute 'tableValues'. The table has n+1 values (i.e., v0 to vn) specifying the start and end values for n evenly sized interpolation regions. Interpolations use the following formula. For a value C < 1 find k such that. k/n <= C < (k+1)/n The result C' is given by. C' = vk + (C . k/n)*n * (vk+1 . vk) If C = 1 then. C' = vn. For discrete, the function is defined by the step function given in the attribute 'tableValues', which provides a list of n values (i.e., v0 to vn.1) in order to identify a step function consisting of n steps. The step function is defined by the following formula. For a value C < 1 find k such that. k/n <= C < (k+1)/n The result C' is given by. C' = vk If C = 1 then. C' = vn.1. For linear, the function is defined by the following linear equation. C' = slope * C + intercept For gamma, the function is defined by the following exponential function. C' = amplitude * pow(C, exponent) + offset Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}}
#' }
#' @keywords internal
NULL


#' @name feColorMatrixValuesAttribute
#' @title values
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{list of <number>s}{The contents of 'values' depends on the value of attribute 'type'. For type="matrix", 'values' is a list of 20 matrix values (a00 a01 a02 a03 a04 a10 a11 ... a34), separated by whitespace and/or a comma. For example, the identity matrix could be expressed as. type="matrix" values="1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0" For type="saturate", 'values' is a single real number value (0 to 1). A saturate operation is equivalent to the following matrix operation. | R' | |0.213+0.787s 0.715.0.715s 0.072.0.072s 0 0 | | R || G' | |0.213.0.213s 0.715+0.285s 0.072.0.072s 0 0 | | G || B' | = |0.213.0.213s 0.715.0.715s 0.072+0.928s 0 0 | * | B || A' | | 0 0 0 1 0 | | A || 1 | | 0 0 0 0 1 | | 1 | For type="hueRotate", 'values' is a single one real number value (degrees). A hueRotate operation is equivalent to the following matrix operation. | R' | | a00 a01 a02 0 0 | | R || G' | | a10 a11 a12 0 0 | | G || B' | = | a20 a21 a22 0 0 | * | B || A' | | 0 0 0 1 0 | | A || 1 | | 0 0 0 0 1 | | 1 | where the terms a00, a01, etc. are calculated as follows. | a00 a01 a02 | [+0.213 +0.715 +0.072]| a10 a11 a12 | = [+0.213 +0.715 +0.072] +| a20 a21 a22 | [+0.213 +0.715 +0.072] [+0.787 .0.715 .0.072]cos(hueRotate value) * [.0.213 +0.285 .0.072] + [.0.213 .0.715 +0.928] [.0.213 .0.715+0.928]sin(hueRotate value) * [+0.143 +0.140.0.283] [.0.787 +0.715+0.072] Thus, the upper left term of the hue matrix turns out to be. .213 + cos(hueRotate value)*.787 . sin(hueRotate value)*.213 For type="luminanceToAlpha", 'values' is not applicable. A luminanceToAlpha operation is equivalent to the following matrix operation. | R' | | 0 0 0 0 0 | | R | | G' | | 0 0 0 0 0 | | G | | B' | = | 0 0 0 0 0 | * | B | | A' | | 0.2125 0.7154 0.0721 0 0 | | A | | 1 | | 0 0 0 0 1 | | 1 | If the attribute is not specified, then the default behavior depends on the value of attribute 'type'. If type="matrix", then this attribute defaults to the identity matrix. If type="saturate", then this attribute defaults to the value 1, which results in the identity matrix. If type="hueRotate", then this attribute defaults to the value 0, which results in the identity matrix.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feColorMatrix]{feColorMatrix}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{See Filter effects region.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The width of the subregion which restricts calculation and rendering of the given filter primitive. See filter primitive subregion. A negative value is an error (see Error processing). A value of zero disables the effect of the given filter primitive (i.e., the result is a transparent black image).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name fePointLightXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{X location for the light source in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=fePointLight]{fePointLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{X location for the light source in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See Filter effects region.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The minimum x coordinate for the subregion which restricts calculation and rendering of the given filter primitive. See filter primitive subregion.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feDisplacementMapXChannelSelectorAttribute
#' @title xChannelSelector
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{R | G | B | A}{Indicates which channel from 'in2' to use to displace the pixels in 'in' along the x.axis. If attribute 'xChannelSelector' is not specified, then the effect is as if a value of A were specified. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name feImageElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to the image source. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to another 'filter' element within the current SVG document fragment. Any attributes which are defined on the referenced 'filter' element which are not defined on this element are inherited by this element. If this element has no defined filter nodes, and the referenced element has defined filter nodes (possibly due to its own 'xlink.href' attribute), then this element inherits the filter nodes defined from the referenced 'filter' element. Inheritance can be indirect to an arbitrary level; thus, if the referenced 'filter' element inherits attributes or its filter node specification due to its own 'xlink.href' attribute, then the current element can inherit those attributes or filter node specifications.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name fePointLightYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Y location for the light source in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=fePointLight]{fePointLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Y location for the light source in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name FilterElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See Filter effects region.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal
NULL


#' @name FilterPrimitiveYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The minimum y coordinate for the subregion which restricts calculation and rendering of the given filter primitive. See filter primitive subregion.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal
NULL


#' @name feDisplacementMapYChannelSelectorAttribute
#' @title yChannelSelector
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{R | G | B | A}{Indicates which channel from 'in2' to use to displace the pixels in 'in' along the y.axis. If attribute 'yChannelSelector' is not specified, then the effect is as if a value of A were specified. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal
NULL


#' @name fePointLightZAttribute
#' @title z
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Z location for the light source in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element, assuming that, in the initial coordinate system, the positive Z.axis comes out towards the person viewing the content and assuming that one unit along the Z.axis equals one unit in X and Y. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=fePointLight]{fePointLight}}}
#' }
#' @keywords internal
NULL


#' @name feSpotLightZAttribute
#' @title z
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Z location for the light source in the coordinate system established by attribute 'primitiveUnits' on the 'filter' element, assuming that, in the initial coordinate system, the positive Z.axis comes out towards the person viewing the content and assuming that one unit along the Z.axis equals one unit in X and Y. If the attribute is not specified, then the effect is as if a value of 0 were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementBaseProfileAttribute
#' @title baseProfile
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{profile.name}{Describes the minimum SVG language profile that the author believes is necessary to correctly render the content. The attribute does not specify any processing restrictions; It can be considered metadata. For example, the value of the attribute could be used by an authoring tool to warn the user when they are modifying the document beyond the scope of the specified base profile. Each SVG profile should define the text that is appropriate for this attribute. If the attribute is not specified, the effect is as if a value of 'none' were specified.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name ExternalResourcesRequiredAttribute
#' @title externalResourcesRequired
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{false}{(The default value.) Indicates that resources external to the current document are optional. Document rendering can proceed even if external resources are unavailable to the current element and its descendants.}
#' \item{true}{Indicates that resources external to the current document are required. If an external resource is not available, progressive rendering is suspended, the document's SVGLoad event is not fired and the animation timeline does not begin until that resource and all other required resources become available, have been parsed and are ready to be rendered. If a timeout event occurs on a required resource, then the document goes into an error state (see Error processing). The document remains in an error state until all required resources become available.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The height of the rectangular region into which the referenced document is placed. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{For outermost svg elements, the intrinsic height of the SVG document fragment. For embedded 'svg' elements, the height of the rectangular region into which the 'svg' element is placed. A negative value is an error (see Error processing). A value of zero disables rendering of the element. If the attribute is not specified, the effect is as if a value of '100' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name UseElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The height of the rectangular region into which the referenced element is placed. A negative value is an error (see Error processing). A value of zero disables rendering of this element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name IDAttribute
#' @title id
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{name}{Standard XML attribute for assigning a unique name to an element. Refer to the Extensible Markup Language (XML) 1.0 Recommendation [XML10].Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyph]{glyph}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name RequiredExtensionsAttribute
#' @title requiredExtensions
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{list.of.extensions}{The value is a list of IRI references which identify the required extensions, with the individual values separated by white space. Determines whether all of the named extensions are supported by the user agent. If all of the given extensions are supported, then the attribute evaluates to true; otherwise, the current element and its children are skipped and thus will not be rendered.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name RequiredFeaturesAttribute
#' @title requiredFeatures
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{list.of.features}{The value is a list of feature strings, with the individual values separated by white space. Determines whether all of the named features are supported by the user agent. Only feature strings defined in the Feature String appendix are allowed. If all of the given features are supported, then the attribute evaluates to true; otherwise, the current element and its children are skipped and thus will not be rendered.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name SystemLanguageAttribute
#' @title systemLanguage
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{character}{comma seperated list of language names}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=cursor]{cursor}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=mask]{mask}}, \code{\link[=pattern]{pattern}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementVersionAttribute
#' @title version
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{Indicates the SVG language version to which this document fragment conforms. In SVG 1.0 [SVG10], this attribute was fixed to the value '1.0'. For SVG 1.1, the attribute should have the value '1.1'.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The width of the rectangular region into which the referenced document is placed. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{For outermost svg elements, the intrinsic width of the SVG document fragment. For embedded 'svg' elements, the width of the rectangular region into which the 'svg' element is placed. A negative value is an error (see Error processing). A value of zero disables rendering of the element. If the attribute is not specified, the effect is as if a value of '100' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name UseElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The width of the rectangular region into which the referenced element is placed. A negative value is an error (see Error processing). A value of zero disables rendering of this element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of one corner of the rectangular region into which the referenced document is placed. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{(Has no meaning or effect on outermost svg elements.) The x.axis coordinate of one corner of the rectangular region into which an embedded 'svg' element is placed. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name UseElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of one corner of the rectangular region into which the referenced element is placed. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{A IRI reference.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name UseElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{A IRI reference to an element/fragment within an SVG document.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name XMLBaseAttribute
#' @title xml.base
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{Specifies a base IRI other than the base IRI of the document or external entity. Refer to the XML Base specification [XML.BASE].Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyph]{glyph}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name XMLLangAttribute
#' @title xml.lang
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{languageID}{Standard XML attribute to specify the language (e.g., English) used in the contents and attribute values of particular elements. Refer to the Extensible Markup Language (XML) 1.0 Recommendation [XML10].Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyph]{glyph}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name XMLSpaceAttribute
#' @title xml.space
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{{default | preserve}}{Standard XML attribute to specify whether white space is preserved in character data. The only possible values are 'default' and 'preserve'. Refer to the Extensible Markup Language (XML) 1.0 Recommendation [XML10] and to the discussion white space handling in SVG.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=altGlyphDef]{altGlyphDef}}, \code{\link[=altGlyphItem]{altGlyphItem}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=feFuncA]{feFuncA}}, \code{\link[=feFuncB]{feFuncB}}, \code{\link[=feFuncG]{feFuncG}}, \code{\link[=feFuncR]{feFuncR}}, \code{\link[=feMergeNode]{feMergeNode}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=font-face]{font.face}}, \code{\link[=font-face-format]{font.face.format}}, \code{\link[=font-face-name]{font.face.name}}, \code{\link[=font-face-src]{font.face.src}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyph]{glyph}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=hkern]{hkern}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}, \code{\link[=stop]{stop}}, \code{\link[=style]{style}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}, \code{\link[=view]{view}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal
NULL


#' @name ImageElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of one corner of the rectangular region into which the referenced document is placed. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal
NULL


#' @name SVGElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{(Has no meaning or effect on outermost svg elements.) The y.axis coordinate of one corner of the rectangular region into which an embedded 'svg' element is placed. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name UseElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of one corner of the rectangular region into which the referenced element is placed. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal
NULL


#' @name ClassAttribute
#' @title class
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{list}{This attribute assigns a class name or set of class names to an element. Any number of elements may be assigned the same class name or names. Multiple class names must be separated by white space characters.Animatable. yes.}
#' \item{character}{character vector of class names}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyph]{glyph}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=stop]{stop}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name ContentStyleTypeAttribute
#' @title contentStyleType
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{content.type}{Identifies the default style sheet language for the given document. That language must then be used for all instances of style that do not specify their own style sheet language, such as the 'style' attributes that are available on many elements. The value content.type specifies a media type, per MIME Part Two. Media Types [RFC2046]. The default value is "text/css" [RFC2318].Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name StyleElementMediaAttribute
#' @title media
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{media.descriptors}{This attribute specifies the intended destination medium for style information. It may be a single media descriptor or a comma.separated list. The default value for this attribute is "all". The set of recognized media.descriptors are the list of media types recognized by CSS2 ([CSS2], section 7.3).Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=style]{style}}}
#' }
#' @keywords internal
NULL


#' @name StyleAttribute
#' @title style
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{style}{This attribute specifies style information for the current element. The style attribute specifies style information for a single element. The style sheet language of inline style rules is given by the value of attribute 'contentStyleType' on the 'svg' element. The syntax of style data depends on the style sheet language.Animatable. no.}
#' \item{character}{chararacter string providing an inline style description}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=title]{title}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=filter]{filter}}, \code{\link[=font]{font}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=glyph]{glyph}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=mask]{mask}}, \code{\link[=missing-glyph]{missing.glyph}}, \code{\link[=pattern]{pattern}}, \code{\link[=stop]{stop}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name StyleElementTitleAttribute
#' @title title
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{advisory.title}{(For compatibility with HTML 4 [HTML4].) This attribute specifies an advisory title for the 'style' element.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=style]{style}}}
#' }
#' @keywords internal
NULL


#' @name StyleElementTypeAttribute
#' @title type
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{content.type}{This attribute specifies the style sheet language of the element's contents. The style sheet language is specified as a content type (e.g., "text/css"), as per MIME Part Two. Media Types [RFC2046]. If a 'type' is not provided, the value of 'contentStyleType' on the 'svg' element shall be used, which in turn defaults to "text/css" [RFC2046]. If a 'style' element falls outside of the outermost svg element and the 'type' is not provided, the 'type' must default to "text/css" [RFC2046]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=style]{style}}}
#' }
#' @keywords internal
NULL


#' @name ClipPathElementClipPathUnitsAttribute
#' @title clipPathUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Defines the coordinate system for the contents of the 'clipPath'. If clipPathUnits="userSpaceOnUse", the contents of the 'clipPath' represent values in the current user coordinate system in place at the time when the 'clipPath' element is referenced (i.e., the user coordinate system for the element referencing the 'clipPath' element via the 'clip.path' property). If clipPathUnits="objectBoundingBox", then the user coordinate system for the contents of the 'clipPath' element is established using the bounding box of the element to which the clipping path is applied (see Object bounding box units). If attribute 'clipPathUnits' is not specified, then the effect is as if a value of 'userSpaceOnUse' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=clipPath]{clipPath}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The height of the largest possible offscreen buffer. A negative value is an error (see Error processing). A value of zero disables rendering of the element. If the attribute is not specified, the effect is as if a value of '120' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementMaskContentUnitsAttribute
#' @title maskContentUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Defines the coordinate system for the contents of the 'mask'. If maskContentUnits="userSpaceOnUse", the user coordinate system for the contents of the 'mask' element is the current user coordinate system in place at the time when the 'mask' element is referenced (i.e., the user coordinate system for the element referencing the 'mask' element via the 'mask' property). If maskContentUnits="objectBoundingBox", the user coordinate system for the contents of the 'mask' is established using the bounding box of the element to which the mask is applied. (See Object bounding box units.) If attribute 'maskContentUnits' is not specified, then the effect is as if a value of 'userSpaceOnUse' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementMaskUnitsAttribute
#' @title maskUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Defines the coordinate system for attributes 'x', 'y', 'width' and 'height'. If maskUnits="userSpaceOnUse", 'x', 'y', 'width' and 'height' represent values in the current user coordinate system in place at the time when the 'mask' element is referenced (i.e., the user coordinate system for the element referencing the 'mask' element via the 'mask' property). If maskUnits="objectBoundingBox", 'x', 'y', 'width' and 'height' represent fractions or percentages of the bounding box of the element to which the mask is applied. (See Object bounding box units.) If attribute 'maskUnits' is not specified, then the effect is as if a value of 'objectBoundingBox' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The width of the largest possible offscreen buffer. Note that the clipping path used to render any graphics within the mask will consist of the intersection of the current clipping path associated with the given object and the rectangle defined by 'x', 'y', 'width' and 'height'. A negative value is an error (see Error processing). A value of zero disables rendering of the element. If the attribute is not specified, the effect is as if a value of '120' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of one corner of the rectangle for the largest possible offscreen buffer. Note that the clipping path used to render any graphics within the mask will consist of the intersection of the current clipping path associated with the given object and the rectangle defined by 'x', 'y', 'width' and 'height'. If the attribute is not specified, the effect is as if a value of '.10' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name MaskElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of one corner of the rectangle for the largest possible offscreen buffer. If the attribute is not specified, the effect is as if a value of '.10' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal
NULL


#' @name ContentScriptTypeAttribute
#' @title contentScriptType
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{content.type}{Identifies the default scripting language for the given SVG document fragment. This attribute sets the default scripting language used to process the value strings in event attributes. This language must be used for all instances of script that do not specify their own scripting language. The value content.type specifies a media type, per MIME Part Two. Media Types [RFC2046]. The default value is 'application/ecmascript' [RFC4329].Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnAbortEventAttribute
#' @title onabort
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onerror = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnActivateEventAttribute
#' @title onactivate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onclick = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnBeginEventAttribute
#' @title onbegin
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onend = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OnClickEventAttribute
#' @title onclick
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onmousedown = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnEndEventAttribute
#' @title onend
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onrepeat = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OnErrorEventAttribute
#' @title onerror
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onresize = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnFocusInEventAttribute
#' @title onfocusin
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onfocusout = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnFocusOutEventAttribute
#' @title onfocusout
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onactivate = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnLoadEventAttribute
#' @title onload
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{Specifies some script to execute when "bubbling" or "at target" phase listeners for the SVGLoad event are fired on the element the attribute is specified on.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseDownEventAttribute
#' @title onmousedown
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onmouseup = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseMoveEventAttribute
#' @title onmousemove
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onmouseout = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseOutEventAttribute
#' @title onmouseout
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{Specifies some script to execute when "bubbling" or "at target" phase listeners for the corresponding event are fired on the element the attribute is specified on. See the Complete list of support events to determine which event each of these event attributes corresponds to.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseOverEventAttribute
#' @title onmouseover
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onmousemove = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnMouseUpEventAttribute
#' @title onmouseup
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onmouseover = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}, \code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name OnRepeatEventAttribute
#' @title onrepeat
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{Specifies some script to execute when "bubbling" or "at target" phase listeners for the corresponding event are fired on the element the attribute is specified on. See the Complete list of support events to determine which event each of these event attributes corresponds to.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' }
#' @keywords internal
NULL


#' @name OnResizeEventAttribute
#' @title onresize
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onscroll = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnScrollEventAttribute
#' @title onscroll
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onzoom = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnUnloadEventAttribute
#' @title onunload
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{onabort = "<anything>"}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name OnZoomEventAttribute
#' @title onzoom
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{Specifies some script to execute when "bubbling" or "at target" phase listeners for the corresponding event are fired on the element the attribute is specified on. See the Complete list of support events to determine which event each of these event attributes corresponds to.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal
NULL


#' @name ScriptElementTypeAttribute
#' @title type
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{content.type}{Identifies the scripting language for the given 'script' element. The value content.type specifies a media type, per Multipurpose Internet Mail Extensions (MIME) Part Two [RFC2046]. If a 'type' is not provided, the value of 'contentScriptType' on the 'svg' element shall be used, which in turn defaults to "application/ecmascript" [RFC4329]. If a 'script' element falls outside of the outermost svg element and the 'type' is not provided, the 'type' must default to "application/ecmascript" [RFC4329].Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name ScriptElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to an external resource containing the script code.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name CircleElementCXAttribute
#' @title cx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of the center of the circle. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementCXAttribute
#' @title cx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of the center of the ellipse. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name CircleElementCYAttribute
#' @title cy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of the center of the circle. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementCYAttribute
#' @title cy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of the center of the ellipse. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name RectElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The height of the rectangle. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name PolygonElementPointsAttribute
#' @title points
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.points>}{The points that make up the polygon. All coordinate values are in the user coordinate system.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=polygon]{polygon}}}
#' }
#' @keywords internal
NULL


#' @name PolylineElementPointsAttribute
#' @title points
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.points>}{The points that make up the polyline. All coordinate values are in the user coordinate system.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=polyline]{polyline}}}
#' }
#' @keywords internal
NULL


#' @name CircleElementRAttribute
#' @title r
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The radius of the circle. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementRXAttribute
#' @title rx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The x.axis radius of the ellipse. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name RectElementRXAttribute
#' @title rx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{For rounded rectangles, the x.axis radius of the ellipse used to round off the corners of the rectangle. A negative value is an error (see Error processing). See the notes below about what happens if the attribute is not specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name EllipseElementRYAttribute
#' @title ry
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The y.axis radius of the ellipse. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal
NULL


#' @name RectElementRYAttribute
#' @title ry
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{For rounded rectangles, the y.axis radius of the ellipse used to round off the corners of the rectangle. A negative value is an error (see Error processing). See the notes below about what happens if the attribute is not specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RectElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The width of the rectangle. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name RectElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of the side of the rectangle which has the smaller x.axis coordinate value in the current user coordinate system. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name LineElementX1Attribute
#' @title x1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of the start of the line. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name LineElementX2Attribute
#' @title x2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of the end of the line. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name RectElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of the side of the rectangle which has the smaller y.axis coordinate value in the current user coordinate system. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal
NULL


#' @name LineElementY1Attribute
#' @title y1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of the start of the line. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name LineElementY2Attribute
#' @title y2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of the end of the line. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementCXAttribute
#' @title cx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{'cx', 'cy' and 'r' define the largest (i.e., outermost) circle for the radial gradient. The gradient will be drawn such that the 100 gradient stop is mapped to the perimeter of this largest (i.e., outermost) circle. If the attribute is not specified, the effect is as if a value of '50' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementCYAttribute
#' @title cy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See 'cx'. If the attribute is not specified, the effect is as if a value of '50' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementFXAttribute
#' @title fx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{'fx' and 'fy' define the focal point for the radial gradient. The gradient will be drawn such that the 0 gradient stop is mapped to (fx, fy). If attribute 'fx' is not specified, 'fx' will coincide with the presentational value of 'cx' for the element whether the value for 'cx' was inherited or not. If the element references an element that specifies a value for 'fx', then the value of 'fx' is inherited from the referenced element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementFYAttribute
#' @title fy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See 'fx'. If attribute 'fy' is not specified, 'fy' will coincide with the presentational value of 'cy' for the element whether the value for 'cy' was inherited or not. If the element references an element that specifies a value for 'fy', then the value of 'fy' is inherited from the referenced element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementGradientTransformAttribute
#' @title gradientTransform
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<transform.list>}{Contains the definition of an optional additional transformation from the gradient coordinate system onto the target coordinate system (i.e., userSpaceOnUse or objectBoundingBox). This allows for things such as skewing the gradient. This additional transformation matrix is post.multiplied to (i.e., inserted to the right of) any previously defined transformations, including the implicit transformation necessary to convert from object bounding box units to user space. If attribute 'gradientTransform' is not specified, then the effect is as if an identity transform were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementGradientTransformAttribute
#' @title gradientTransform
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<transform.list>}{Contains the definitions of an optional additional transformation from the gradient coordinate system onto the target coordinate system (i.e., userSpaceOnUse or objectBoundingBox). This allows for things such as skewing the gradient. This additional transformation matrix is post.multiplied to (i.e., inserted to the right of) any previously defined transformations, including the implicit transformation necessary to convert from object bounding box units to user space. If attribute 'gradientTransform' is not specified, then the effect is as if an identity transform were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementGradientUnitsAttribute
#' @title gradientUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Defines the coordinate system for attributes 'x1', 'y1', 'x2' and 'y2'. If gradientUnits="userSpaceOnUse", 'x1', 'y1', 'x2' and 'y2' represent values in the coordinate system that results from taking the current user coordinate system in place at the time when the gradient element is referenced (i.e., the user coordinate system for the element referencing the gradient element via a 'fill' or 'stroke' property) and then applying the transform specified by attribute 'gradientTransform'. If gradientUnits="objectBoundingBox", the user coordinate system for attributes 'x1', 'y1', 'x2' and 'y2' is established using the bounding box of the element to which the gradient is applied (see Object bounding box units) and then applying the transform specified by attribute 'gradientTransform'. When gradientUnits="objectBoundingBox" and 'gradientTransform' is the identity matrix, the normal of the linear gradient is perpendicular to the gradient vector in object bounding box space (i.e., the abstract coordinate system where (0,0) is at the top/left of the object bounding box and (1,1) is at the bottom/right of the object bounding box). When the object's bounding box is not square, the gradient normal which is initially perpendicular to the gradient vector within object bounding box space may render non.perpendicular relative to the gradient vector in user space. If the gradient vector is parallel to one of the axes of the bounding box, the gradient normal will remain perpendicular. This transformation is due to application of the non.uniform scaling transformation from bounding box space to user space. If attribute 'gradientUnits' is not specified, then the effect is as if a value of 'objectBoundingBox' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementGradientUnitsAttribute
#' @title gradientUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Defines the coordinate system for attributes 'cx', 'cy', 'r', 'fx' and 'fy'. If gradientUnits="userSpaceOnUse", 'cx', 'cy', 'r', 'fx' and 'fy' represent values in the coordinate system that results from taking the current user coordinate system in place at the time when the gradient element is referenced (i.e., the user coordinate system for the element referencing the gradient element via a 'fill' or 'stroke' property) and then applying the transform specified by attribute 'gradientTransform'. If gradientUnits="objectBoundingBox", the user coordinate system for attributes 'cx', 'cy', 'r', 'fx' and 'fy' is established using the bounding box of the element to which the gradient is applied (see Object bounding box units) and then applying the transform specified by attribute 'gradientTransform'. When gradientUnits="objectBoundingBox" and 'gradientTransform' is the identity matrix, then the rings of the radial gradient are circular with respect to the object bounding box space (i.e., the abstract coordinate system where (0,0) is at the top/left of the object bounding box and (1,1) is at the bottom/right of the object bounding box). When the object's bounding box is not square, the rings that are conceptually circular within object bounding box space will render as elliptical due to application of the non.uniform scaling transformation from bounding box space to user space. If attribute 'gradientUnits' is not specified, then the effect is as if a value of 'objectBoundingBox' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{See 'x'. A negative value is an error (see Error processing). A value of zero disables rendering of the element (i.e., no paint is applied). If the attribute is not specified, the effect is as if a value of zero were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name StopElementOffsetAttribute
#' @title offset
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number> | <percentage>}{The 'offset' attribute is either a <number> (usually ranging from 0 to 1) or a <percentage> (usually ranging from 0 to 100) which indicates where the gradient stop is placed. For linear gradients, the 'offset' attribute represents a location along the gradient vector. For radial gradients, it represents a percentage distance from (fx,fy) to the edge of the outermost/largest circle.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=stop]{stop}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementPatternContentUnitsAttribute
#' @title patternContentUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Defines the coordinate system for the contents of the 'pattern'. Note that this attribute has no effect if attribute 'viewBox' is specified. If patternContentUnits="userSpaceOnUse", the user coordinate system for the contents of the 'pattern' element is the coordinate system that results from taking the current user coordinate system in place at the time when the 'pattern' element is referenced (i.e., the user coordinate system for the element referencing the 'pattern' element via a 'fill' or 'stroke' property) and then applying the transform specified by attribute 'patternTransform'. If patternContentUnits="objectBoundingBox", the user coordinate system for the contents of the 'pattern' element is established using the bounding box of the element to which the pattern is applied (see Object bounding box units) and then applying the transform specified by attribute 'patternTransform'. If attribute 'patternContentUnits' is not specified, then the effect is as if a value of 'userSpaceOnUse' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementPatternTransformAttribute
#' @title patternTransform
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<transform.list>}{Contains the definition of an optional additional transformation from the pattern coordinate system onto the target coordinate system (i.e., 'userSpaceOnUse' or 'objectBoundingBox'). This allows for things such as skewing the pattern tiles. This additional transformation matrix is post.multiplied to (i.e., inserted to the right of) any previously defined transformations, including the implicit transformation necessary to convert from object bounding box units to user space. If attribute 'patternTransform' is not specified, then the effect is as if an identity transform were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementPatternUnitsAttribute
#' @title patternUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{userSpaceOnUse | objectBoundingBox}{Defines the coordinate system for attributes 'x', 'y', 'width' and 'height'. If patternUnits="userSpaceOnUse", 'x', 'y', 'width' and 'height' represent values in the coordinate system that results from taking the current user coordinate system in place at the time when the 'pattern' element is referenced (i.e., the user coordinate system for the element referencing the 'pattern' element via a 'fill' or 'stroke' property) and then applying the transform specified by attribute 'patternTransform'. If patternUnits="objectBoundingBox", the user coordinate system for attributes 'x', 'y', 'width' and 'height' is established using the bounding box of the element to which the pattern is applied (see Object bounding box units) and then applying the transform specified by attribute 'patternTransform'. If attribute 'patternUnits' is not specified, then the effect is as if a value of 'objectBoundingBox' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementRAttribute
#' @title r
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{See 'cx'. A negative value is an error (see Error processing). A value of zero will cause the area to be painted as a single color using the color and opacity of the last gradient stop. If the attribute is not specified, the effect is as if a value of '50' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementSpreadMethodAttribute
#' @title spreadMethod
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{pad | reflect | repeat}{Indicates what happens if the gradient starts or ends inside the bounds of the target rectangle. Possible values are. 'pad', which says to use the terminal colors of the gradient to fill the remainder of the target region, 'reflect', which says to reflect the gradient pattern start.to.end, end.to.start, start.to.end, etc. continuously until the target rectangle is filled, and repeat, which says to repeat the gradient pattern start.to.end, start.to.end, start.to.end, etc. continuously until the target region is filled. If the attribute is not specified, the effect is as if a value of 'pad' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementSpreadMethodAttribute
#' @title spreadMethod
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{pad | reflect | repeat}{Indicates what happens if the gradient starts or ends inside the bounds of the object(s) being painted by the gradient. Has the same values and meanings as the 'spreadMethod' attribute on 'linearGradient' element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{See 'x'. A negative value is an error (see Error processing). A value of zero disables rendering of the element (i.e., no paint is applied). If the attribute is not specified, the effect is as if a value of zero were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{'x', 'y', 'width' and 'height' indicate how the pattern tiles are placed and spaced. These attributes represent coordinates and values in the coordinate space specified by the combination of attributes 'patternUnits' and 'patternTransform'. If the attribute is not specified, the effect is as if a value of zero were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementX1Attribute
#' @title x1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{'x1', 'y1', 'x2' and 'y2' define a gradient vector for the linear gradient. This gradient vector provides starting and ending points onto which the gradient stops are mapped. The values of 'x1', 'y1', 'x2' and 'y2' can be either numbers or percentages. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementX2Attribute
#' @title x2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See 'x1'. If the attribute is not specified, the effect is as if a value of '100' were specified.Animatable. yes.}
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
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to a different 'linearGradient' or 'radialGradient' element within the current SVG document fragment. Any 'linearGradient' attributes which are defined on the referenced element which are not defined on this element are inherited by this element. If this element has no defined gradient stops, and the referenced element does (possibly due to its own 'xlink.href' attribute), then this element inherits the gradient stop from the referenced element. Inheritance can be indirect to an arbitrary level; thus, if the referenced element inherits attribute or gradient stops due to its own 'xlink.href' attribute, then the current element can inherit those attributes or gradient stops.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to a different 'pattern' element within the current SVG document fragment. Any attributes which are defined on the referenced element which are not defined on this element are inherited by this element. If this element has no children, and the referenced element does (possibly due to its own 'xlink.href' attribute), then this element inherits the children from the referenced element. Inheritance can be indirect to an arbitrary level; thus, if the referenced element inherits attributes or children due to its own 'xlink.href' attribute, then the current element can inherit those attributes or children.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name RadialGradientElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to a different 'linearGradient' or 'radialGradient' element within the current SVG document fragment. Any 'radialGradient' attributes which are defined on the referenced element which are not defined on this element are inherited by this element. If this element has no defined gradient stops, and the referenced element does (possibly due to its own 'xlink.href' attribute), then this element inherits the gradient stop from the referenced element. Inheritance can be indirect to an arbitrary level; thus, if the referenced element inherits attribute or gradient stops due to its own 'xlink.href' attribute, then the current element can inherit those attributes or gradient stops.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal
NULL


#' @name PatternElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See 'x'. If the attribute is not specified, the effect is as if a value of zero were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementY1Attribute
#' @title y1
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See 'x1'. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name LinearGradientElementY2Attribute
#' @title y2
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{See 'x1'. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal
NULL


#' @name DAttribute
#' @title d
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{path data}{The definition of the outline of a shape. See Path data.Animatable. yes. Path data animation is only possible when each path data specification within an animation specification has exactly the same list of path data commands as the 'd' attribute. If an animation is specified and the list of path data commands is not the same, then the animation specification is in error (see Error Processing). The animation engine interpolates each parameter to each path data command separately based on the attributes to the given animation element. Flags and booleans are interpolated as fractions between zero and one, with any non.zero value considered to be a value of one/true.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=path]{path}}}
#' }
#' @keywords internal
NULL


#' @name PathLengthAttribute
#' @title pathLength
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The author's computation of the total length of the path, in user units. This value is used to calibrate the user agent's own distance.along.a.path calculations with that of the author. The user agent will scale all distance.along.a.path computations by the ratio of 'pathLength' to the user agent's own computed value for total path length. 'pathLength' potentially affects calculations for text on a path, motion animation and various stroke operations. A negative value is an error (see Error processing).Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=path]{path}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementDXAttribute
#' @title dx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.lengths>}{The <length> values are processed in the same manner as the 'dx' attribute on the 'tspan' element, with the following exception. If the referenced alternate glyphs are rendered instead of the Unicode characters inside the 'altGlyph' element, then any relative X coordinates specified via an 'dx' attribute on this element or any ancestor 'text' or 'tspan' elements for Unicode characters 2 through n within the 'altGlyph' element are ignored. Any relative X coordinate specified via an 'dx' attribute on this element or any ancestor 'text' or 'tspan' elements for the first Unicode character within the 'altGlyph' element sets a new relative X coordinate for the current text position before rendering the first alternate glyph.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementDXAttribute
#' @title dx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{This value represents the relative X coordinate within the font's coordinate system for this glyph. The glyph is thus shifted by <number> units along the positive X axis within the font's coordinate system supplemental to the absolute X coordinate established by the 'x' attribute (either due to an explicit 'x' attribute or due to default value processing for the 'x' attribute). The font coordinate system is based on the em square model described in the Fonts chapter of CSS2 ([CSS2], chapter 15). If the attribute is not specified, the effect is as if the attribute were set to "0".Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name TextElementDXAttribute
#' @title dx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.lengths>}{Shifts in the current text position along the x.axis for the characters within this element or any of its descendants. Refer to the description of the 'dx' attribute on the 'tspan' element. If the attribute is not specified on this element or any of its descendants, no supplemental shifts along the x.axis will occur.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementDXAttribute
#' @title dx
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.lengths>}{If a single <length> is provided, this value represents the new relative X coordinate for the current text position for rendering the glyphs corresponding to the first character within this element or any of its descendants. The current text position is shifted along the x.axis of the current user coordinate system by <length> before the first character's glyphs are rendered. If a comma. or space.separated list of n <length>s is provided, then the values represent incremental shifts along the x.axis for the current text position before rendering the glyphs corresponding to the first n characters within this element or any of its descendants. Thus, before the glyphs are rendered corresponding to each character, the current text position resulting from drawing the glyphs for the previous character within the current 'text' element is shifted along the X axis of the current user coordinate system by <length>. If more <length>s are provided than characters, then any extra <length>s will have no effect on glyph positioning. If more characters exist than <length>s, then for each of these extra characters. (a) if an ancestor 'text' or 'tspan' element specifies a relative X coordinate for the given character via a 'dx' attribute, then the current text position is shifted along the x.axis of the current user coordinate system by that amount (nearest ancestor has precedence), else (b) no extra shift along the x.axis occurs. If the attribute is not specified. (a) if an ancestor 'text' or 'tspan' element specifies a relative X coordinate for a given character via a 'dx' attribute, then the current text position is shifted along the x.axis of the current user coordinate system by that amount (nearest ancestor has precedence), else (b) no extra shift along the x.axis occurs.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementDYAttribute
#' @title dy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.lengths>}{The corresponding relative Y coordinates for rendering the 'altGlyph' element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementDYAttribute
#' @title dy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The corresponding number of units within the font's coordinate system to shift the glyph along the positive Y axis relative to the absolute Y coordinate established by the 'y' attribute.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name TextElementDYAttribute
#' @title dy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.lengths>}{Shifts in the current text position along the y.axis for the characters within this element or any of its descendants. Refer to the description of the 'dy' attribute on the 'tspan' element. If the attribute is not specified on this element or any of its descendants, no supplemental shifts along the y.axis will occur.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementDYAttribute
#' @title dy
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.lengths>}{The corresponding list of relative Y coordinates for the characters within the 'tspan' element. The processing rules for the 'dy' attribute parallel the processing rules for the 'dx' attribute.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementFormatAttribute
#' @title format
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{The format of the given font. If the font is in one of the formats listed in CSS2 ([CSS2], section 15.3.5), such as TrueDoc Portable Font Resource or Embedded OpenType, then the <string> must contain the corresponding font format string, such as truedoc.pfr or embedded.opentype. (This attribute has the same meaning as the 'format' attribute on the 'glyphRef' element.)Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementFormatAttribute
#' @title format
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{The format of the given font. If the font is in one of the formats listed in CSS2 ([CSS2], section 15.3.5), such as TrueDoc Portable Font Resource or Embedded OpenType, then the <string> must contain the corresponding font format string, such as truedoc.pfr or embedded.opentype.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementGlyphRefAttribute
#' @title glyphRef
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{The glyph identifier, the format of which is dependent on the 'format' of the given font. (Same meaning as the 'glyphRef' attribute on the 'glyphRef' element.)Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementGlyphRefAttribute
#' @title glyphRef
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{The glyph identifier, the format of which is dependent on the 'format' of the given font.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name TextElementLengthAdjustAttribute
#' @title lengthAdjust
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{spacing|spacingAndGlyphs}{Indicates the type of adjustments which the user agent shall make to make the rendered length of the text match the value specified on the 'textLength' attribute.'spacing' indicates that only the advance values are adjusted. The glyphs themselves are not stretched or compressed.'spacingAndGlyphs' indicates that the advance values are adjusted and the glyphs themselves stretched or compressed in one axis (i.e., a direction parallel to the inline.progression.direction). The user agent is required to achieve correct start and end positions for the text strings, but the locations of intermediate glyphs are not predictable because user agents might employ advanced algorithms to stretch or compress text strings in order to balance correct start and end positioning with optimal typography. Note that, for a text string that contains n characters, the adjustments to the advance values often occur only for n1 characters (see description of attribute 'textLength'), whereas stretching or compressing of the glyphs will be applied to all n characters. If the attribute is not specified, the effect is as a value of 'spacing' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementMethodAttribute
#' @title method
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{align | stretch}{Indicates the method by which text should be rendered along the path. A value of align indicates that the glyphs should be rendered using simple 2x3 transformations such that there is no stretching/warping of the glyphs. Typically, supplemental rotation, scaling and translation transformations are done for each glyph to be rendered. As a result, with align, fonts where the glyphs are designed to be connected (e.g., cursive fonts), the connections may not align properly when text is rendered along a path. A value of stretch indicates that the glyph outlines will be converted into paths, and then all end points and control points will be adjusted to be along the perpendicular vectors from the path, thereby stretching and possibly warping the glyphs. With this approach, connected glyphs, such as in cursive scripts, will maintain their connections. If the attribute is not specified, the effect is as if a value of align were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementRotateAttribute
#' @title rotate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.numbers>}{The <number> values are processed in the same manner as the 'rotate' attribute on the 'tspan' element, with the following exception. If the referenced alternate glyphs are rendered instead of the Unicode characters inside the 'altGlyph' element, then any supplemental rotation values specified via an 'rotate' attribute on this element or any ancestor 'text' or 'tspan' elements for Unicode characters 2 through n within the 'altGlyph' element are ignored. Supplemental rotation values specified via an 'rotate' attribute on this element or any ancestor 'text' or 'tspan' elements for the first Unicode character within the 'altGlyph' element sets a new supplemental rotation angle before rendering the alternate glyphs.Animatable. yes (non.additive).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name TextElementRotateAttribute
#' @title rotate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.numbers>}{The supplemental rotation about the current text position that will be applied to all of the glyphs corresponding to each character within this element. Refer to the description of the 'rotate' attribute on the 'tspan' element. If the attribute is not specified on this element or any of its descendants, no supplemental rotations will occur.Animatable. yes (non.additive).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementRotateAttribute
#' @title rotate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.numbers>}{The supplemental rotation about the current text position that will be applied to all of the glyphs corresponding to each character within this element. If a comma. or space.separated list of <number>s is provided, then the first <number> represents the supplemental rotation for the glyphs corresponding to the first character within this element or any of its descendants, the second <number> represents the supplemental rotation for the glyphs that correspond to the second character, and so on. If more <number>s are provided than there are characters, then the extra <number>s will be ignored. If more characters are provided than <number>s, then for each of these extra characters the rotation value specified by the last number must be used. If the attribute is not specified and if an ancestor 'text' or 'tspan' element specifies a supplemental rotation for a given character via a 'rotate' attribute, then the given supplemental rotation is applied to the given character (nearest ancestor has precedence). If there are more characters than <number>s specified in the ancestor's 'rotate' attribute, then for each of these extra characters the rotation value specified by the last number must be used. This supplemental rotation has no impact on the rules by which current text position is modified as glyphs get rendered and is supplemental to any rotation due to text on a path and to 'glyph.orientation.horizontal' or 'glyph.orientation.vertical'.Animatable. yes (non.additive).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementSpacingAttribute
#' @title spacing
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{auto | exact}{Indicates how the user agent should determine the spacing between glyphs that are to be rendered along a path. A value of exact indicates that the glyphs should be rendered exactly according to the spacing rules as specified in Text on a path layout rules. A value of auto indicates that the user agent should use text.on.a.path layout algorithms to adjust the spacing between glyphs in order to achieve visually appealing results. If the attribute is not specified, the effect is as if a value of exact were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementStartOffsetAttribute
#' @title startOffset
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{An offset from the start of the 'path' for the initial current text position, calculated using the user agent's distance along the path algorithm. If a <length> other than a percentage is given, then the 'startOffset' represents a distance along the path measured in the current user coordinate system. If a percentage is given, then the 'startOffset' represents a percentage distance along the entire path. Thus, startOffset="0" indicates the start point of the 'path' and startOffset="100" indicates the end point of the 'path'. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name TextElementTextLengthAttribute
#' @title textLength
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The author's computation of the total sum of all of the advance values that correspond to character data within this element, including the advance value on the glyph (horizontal or vertical), the effect of properties 'kerning', 'letter.spacing' and 'word.spacing' and adjustments due to attributes 'dx' and 'dy' on 'tspan' elements. This value is used to calibrate the user agent's own calculations with that of the author. The purpose of this attribute is to allow the author to achieve exact alignment, in visual rendering order after any bidirectional reordering, for the first and last rendered glyphs that correspond to this element; thus, for the last rendered character (in visual rendering order after any bidirectional reordering), any supplemental inter.character spacing beyond normal glyph advances are ignored (in most cases) when the user agent determines the appropriate amount to expand/compress the text string to fit within a length of 'textLength'. A negative value is an error (see Error processing). If the attribute is not specified, the effect is as if the author's computation exactly matched the value calculated by the user agent; thus, no advance adjustments are made.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementTextLengthAttribute
#' @title textLength
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The author's computation of the total sum of all of the advance values that correspond to character data within this element, including the advance value on the glyph (horizontal or vertical), the effect of properties 'kerning', 'letter.spacing' and 'word.spacing' and adjustments due to attributes 'dx' and 'dy' on this 'tspan' element or any descendants. This value is used to calibrate the user agent's own calculations with that of the author. The purpose of this attribute is to allow the author to achieve exact alignment, in visual rendering order after any bidirectional reordering, for the first and last rendered glyphs that correspond to this element; thus, for the last rendered character (in visual rendering order after any bidirectional reordering), any supplemental inter.character spacing beyond normal glyph advances are ignored (in most cases) when the user agent determines the appropriate amount to expand/compress the text string to fit within a length of 'textLength'. If attribute 'textLength' is specified on a given element and also specified on an ancestor, the adjustments on all character data within this element are controlled by the value of 'textLength' on this element exclusively, with the possible side.effect that the adjustment ratio for the contents of this element might be different than the adjustment ratio used for other content that shares the same ancestor. The user agent must assume that the total advance values for the other content within that ancestor is the difference between the advance value on that ancestor and the advance value for this element. A negative value is an error (see Error processing). If the attribute is not specified anywhere within a 'text' element, the effect is as if the author's computation exactly matched the value calculated by the user agent; thus, no advance adjustments are made.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.coordinates>}{The <coordinate> values are processed in the same manner as the 'x' attribute on the 'tspan' element, with the following exception. If the referenced alternate glyphs are rendered instead of the Unicode characters inside the 'altGlyph' element, then any absolute X coordinates specified via an 'x' attribute on this element or any ancestor 'text' or 'tspan' elements for Unicode characters 2 through n within the 'altGlyph' element are ignored. Any absolute X coordinate specified via an 'x' attribute on this element or any ancestor 'text' or 'tspan' elements for the first Unicode character within the 'altGlyph' element sets a new absolute X coordinate for the current text position before rendering the first alternate glyph.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{This value represents the new absolute X coordinate within the font's coordinate system for this glyph. The font coordinate system is based on the em square model described in the Fonts chapter of CSS2 ([CSS2], chapter 15). If the attribute is not specified, for the first 'glyphRef' child element, the effect is as if the attribute were set to "0", whereas for subsequent 'glyphRef' child elements, the effect is as if the attribute were set to the end X coordinate from the previous 'glyphRef' element.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name TextElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.coordinates>}{If a single <coordinate> is provided, then the value represents the new absolute X coordinate for the current text position for rendering the glyphs that correspond to the first character within this element or any of its descendants. If a comma. or space.separated list of n <coordinate>s is provided, then the values represent new absolute X coordinates for the current text position for rendering the glyphs corresponding to each of the first n characters within this element or any of its descendants. For additional processing rules, refer to the description of the 'x' attribute on the 'tspan' element. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.coordinates>}{If a single <coordinate> is provided, then the value represents the new absolute X coordinate for the current text position for rendering the glyphs that correspond to the first character within this element or any of its descendants. If a comma. or space.separated list of n <coordinate>s is provided, then the values represent new absolute X coordinates for the current text position for rendering the glyphs corresponding to each of the first n characters within this element or any of its descendants. If more <coordinate>s are provided than characters, then the extra <coordinate>s will have no effect on glyph positioning. If more characters exist than <coordinate>s, then for each of these extra characters. (a) if an ancestor 'text' or 'tspan' element specifies an absolute X coordinate for the given character via an 'x' attribute, then that absolute X coordinate is used as the starting X coordinate for that character (nearest ancestor has precedence), else (b) the starting X coordinate for rendering the glyphs corresponding to the given character is the X coordinate of the resulting current text position from the most recently rendered glyph for the current 'text' element. If the attribute is not specified. (a) if an ancestor 'text' or 'tspan' element specifies an absolute X coordinate for a given character via an 'x' attribute, then that absolute X coordinate is used (nearest ancestor has precedence), else (b) the starting X coordinate for rendering the glyphs corresponding to a given character is the X coordinate of the resulting current text position from the most recently rendered glyph for the current 'text' element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference either to a 'glyph' element in an SVG document fragment or to an 'altGlyphDef' element. If the reference is to a 'glyph' element and that glyph is available, then that glyph is rendered instead of the character(s) that are inside of the 'altGlyph' element. If the reference is to an 'altGlyphDef' element, then if an appropriate set of alternate glyphs is located from processing the 'altGlyphDef' element, then those alternate glyphs are rendered instead of the character(s) that are inside of the 'altGlyph' element.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to a 'glyph' element in an SVG document fragment. The referenced 'glyph' is rendered as an alternate glyph.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name TextPathElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to the 'path' element onto which the glyphs will be rendered. If <iri> is an invalid reference (e.g., no such element exists, or the referenced element is not a 'path'), then the 'textPath' element is in error and its entire contents shall not be rendered by the user agent.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=textPath]{textPath}}}
#' }
#' @keywords internal
NULL


#' @name TRefElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{An IRI reference to an element whose character data content shall be used as character data for this 'tref' element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}}
#' }
#' @keywords internal
NULL


#' @name AltGlyphElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.coordinates>}{The corresponding absolute Y coordinates for rendering the 'altGlyph' element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal
NULL


#' @name GlyphRefElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<number>}{The corresponding new absolute Y coordinate within the font's coordinate system for this glyph.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal
NULL


#' @name TextElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.coordinates>}{The corresponding list of absolute Y coordinates for the glyphs corresponding to the characters within this element. The processing rules for the 'y' attribute parallel the processing rules for the 'x' attribute. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name TSpanElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<list.of.coordinates>}{The corresponding list of absolute Y coordinates for the glyphs corresponding to the characters within this element. The processing rules for the 'y' attribute parallel the processing rules for the 'x' attribute.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementHeightAttribute
#' @title height
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The height of the rectangular region into which the referenced document is placed. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementWidthAttribute
#' @title width
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{The width of the rectangular region into which the referenced document is placed. A negative value is an error (see Error processing). A value of zero disables rendering of the element.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of one corner of the rectangular region into which the graphics associated with the contents of the 'foreignObject' will be rendered. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name ForeignObjectElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of one corner of the rectangular region into which the referenced document is placed. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementLocalAttribute
#' @title local
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<string>}{The unique ID for a locally stored color profile. <string> is the profile's unique ID as specified by International Color Consortium. If both the 'xlink.href' and the 'local' attributes are specified, then the user agent shall search the local system for the locally stored color profile first, and, if not available locally, then attempt to use the resource identified by the 'xlink.href' attribute. (Note. Profile description fields do not represent a profile's unique ID. With current ICC proposals, the profile's unique ID is an MD5.encoded value within the profile header.)Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementNameAttribute
#' @title name
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<name>}{The name which is used as the first parameter for icc.color specifications within 'fill', 'stroke', 'stop.color', 'flood.color' and 'lighting.color' property values to identify the color profile to use for the ICC color specification and the name which can be the value of the 'color.profile' property. Note that if <name> is not provided, it will be impossible to reference the given color profile description. The name "sRGB" is predefined; any color profile descriptions with <name> set to "sRGB" will be ignored. For consistency with CSS lexical scanning and parsing rules ([CSS2], section D.2), the keyword "sRGB" is case.insensitive; however, it is recommended that the mixed capitalization "sRGB" be used for consistency with common industry practice.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementRenderingIntentAttribute
#' @title rendering.intent
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{auto}{This is the default behavior. The user agent determines the best intent based on the content type. For image content containing an embedded profile, it shall be assumed that the intent specified within the profile is the desired intent. Otherwise, the user agent shall use the current profile and force the intent, overriding any intent that might be stored in the profile itself.}
#' \item{perceptual}{This method, often the preferred choice for images, preserves the relationship between colors. It attempts to maintain relative color values among the pixels as they are mapped to the target device gamut. Sometimes pixel values that were originally within the target device gamut are changed in order to avoid hue shifts and discontinuities and to preserve as much as possible the overall appearance of the scene.}
#' \item{saturation}{Preserves the relative saturation (chroma) values of the original pixels. Out of gamut colors are converted to colors that have the same saturation but fall just inside the gamut.}
#' \item{relative.colorimetric}{Leaves colors that fall inside the gamut unchanged. This method usually converts out of gamut colors to colors that have the same lightness but fall just inside the gamut.}
#' \item{absolute.colorimetric}{Disables white point matching when converting colors. This option is generally not recommended.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name ColorProfileElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<iri>}{The location of an ICC profile resource.Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=color-profile]{color.profile}}}
#' }
#' @keywords internal
NULL


#' @name MarkerHeightAttribute
#' @title markerHeight
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Represents the height of the viewport into which the marker is to be fitted when it is rendered. A negative value is an error (see Error processing). A value of zero disables rendering of the element. If the attribute is not specified, the effect is as if a value of "3" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerUnitsAttribute
#' @title markerUnits
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{strokeWidth | userSpaceOnUse}{Defines the coordinate system for attributes 'markerWidth', 'markerHeight' and the contents of the 'marker'. If markerUnits="strokeWidth", 'markerWidth', 'markerHeight' and the contents of the 'marker' represent values in a coordinate system which has a single unit equal the size in user units of the current stroke width (see the 'stroke.width' property) in place for the graphic object referencing the marker. If markerUnits="userSpaceOnUse", 'markerWidth', 'markerHeight' and the contents of the 'marker' represent values in the current user coordinate system in place for the graphic object referencing the marker (i.e., the user coordinate system for the element referencing the 'marker' element via a 'marker', 'marker.start', 'marker.mid' or 'marker.end' property). If attribute 'markerUnits' is not specified, then the effect is as if a value of 'strokeWidth' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerWidthAttribute
#' @title markerWidth
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<length>}{Represents the width of the viewport into which the marker is to be fitted when it is rendered. A negative value is an error (see Error processing). A value of zero disables rendering of the element. If the attribute is not specified, the effect is as if a value of "3" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name OrientAttribute
#' @title orient
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{auto | <angle>}{Indicates how the marker is rotated. A value of 'auto' indicates that the marker is oriented such that its positive x.axis is pointing as follows. If there is a path segment coming into the vertex and another path segment going out of the vertex, the marker's positive x.axis should point toward the angle bisector for the angle at the given vertex, where that angle has one side consisting of tangent vector for the path segment going into the vertex and the other side the tangent vector for the path segment going out of the vertex. Note. If the tangent vectors are the same, the angle bisector equals the two tangent vectors.If an incoming and an outgoing vertex produce a zero vector the direction of marker is undefined. If there is only a path segment going into the vertex (e.g., the last vertex on an open path), the marker's positive x.axis should point in the same direction as the tangent vector for the path segment going into the vertex. If there is only a path segment going out of the vertex (e.g., the first vertex on an open path), the marker's positive x.axis should point in the same direction as the tangent vector for the path segment going out of the vertex. (Refer to 'path' element implementation notes for a more thorough discussion of the directionality of path segments.) In all cases for closed subpaths (e.g., subpaths which end with a 'closepath' command), the orientation of the marker corresponding to the initial point of the subpath is calculated assuming that. the path segment going into the vertex is the path segment corresponding to the closepaththe path segment coming out of the vertex is the first path segment in the subpath When a 'closepath' command is followed by a command other than a 'moveto' command, then the orientation of the marker corresponding to the 'closepath' command is calculated assuming that. the path segment going into the vertex is the path segment corresponding to the closepaththe path segment coming out of the vertex is the first path segment of the subsequent subpath A <angle> value represents a particular orientation in the user space of the graphic object referencing the marker. For example, if a value of "0" is given, then the marker will be drawn such that its x.axis will align with the x.axis of the user space of the graphic object referencing the marker. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes (non.additive).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerElementRefXAttribute
#' @title refX
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.axis coordinate of the reference point which is to be aligned exactly at the marker position. The coordinate is defined in the coordinate system after application of the 'viewBox' and 'preserveAspectRatio' attributes. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name MarkerElementRefYAttribute
#' @title refY
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.axis coordinate of the reference point which is to be aligned exactly at the marker position. The coordinate is defined in the coordinate system after application of the 'viewBox' and 'preserveAspectRatio' attributes. If the attribute is not specified, the effect is as if a value of "0" were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal
NULL


#' @name PreserveAspectRatioAttribute
#' @title preserveAspectRatio
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{ToDo!!!}{ToDo!!!}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}, \code{\link[=marker]{marker}}, \code{\link[=pattern]{pattern}}, \code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name TransformAttribute
#' @title transform
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{ToDo!!!}{ToDo!!!}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}, \code{\link[=ellipse]{ellipse}}, \code{\link[=line]{line}}, \code{\link[=path]{path}}, \code{\link[=polygon]{polygon}}, \code{\link[=polyline]{polyline}}, \code{\link[=rect]{rect}}}
#' \item{\emph{Structural Elements}}{\code{\link[=defs]{defs}}, \code{\link[=g]{g}}, \code{\link[=use]{use}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=clipPath]{clipPath}}, \code{\link[=foreignObject]{foreignObject}}, \code{\link[=image]{image}}, \code{\link[=switch]{switch}}, \code{\link[=text]{text}}}
#' }
#' @keywords internal
NULL


#' @name ViewBoxAttribute
#' @title viewBox
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{c(x,y,w,h)}{x, y upper left hand corner; w,h width height}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}, \code{\link[=symbol]{symbol}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}, \code{\link[=pattern]{pattern}}, \code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name AElementTargetAttribute
#' @title target
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{_replace}{The current SVG image is replaced by the linked content in the same rectangular area in the same frame as the current SVG image.}
#' \item{_self}{The current SVG image is replaced by the linked content in the same frame as the current SVG image. If the attribute is not specified, '_self' is assumed.}
#' \item{_parent}{The immediate frameset parent of the SVG image is replaced by the linked content.}
#' \item{_top}{The content of the full window or tab, including any frames, is replaced by the linked content}
#' \item{_blank}{A new un.named window or tab is requested for the display of the linked content. If this fails, the result is the same as _top}
#' \item{<XML.Name>}{Specifies the name of the frame, pane, or other relevant presentation context for display of the linked content. If this already exists, it is re.used, replacing the existing content. If it does not exist, it is created (the same as '_blank', except that it now has a name).}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}}
#' }
#' @keywords internal
NULL


#' @name ViewElementViewTargetAttribute
#' @title viewTarget
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{XML_Name [XML_NAME]*}{Indicates the target object associated with the view. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL


#' @name AElementXLinkActuateAttribute
#' @title xlink.actuate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{onRequest}{This attribute provides documentation to XLink.aware processors that an application should traverse from the starting resource to the ending resource only on a post.loading event triggered for the purpose of traversal. Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}}
#' }
#' @keywords internal
NULL


#' @name XLinkActuateAttribute
#' @title xlink.actuate
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{onLoad}{This attribute is provided for backwards compatibility with SVG 1.1. It provides documentation to XLink.aware processors. Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkArcRoleAttribute
#' @title xlink.arcrole
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<IRI>}{An optional IRI reference that identifies some resource that describes the intended property. The value must be an IRI reference as defined in [RFC3987], except that if the IRI scheme used is allowed to have absolute and relative forms, the IRI portion must be absolute. When no value is supplied, no particular role value shall be inferred. The arcrole attribute corresponds to the [RDF.PRIMER] notion of a property, where the role can be interpreted as stating that "starting.resource HAS arc.role ending.resource." This contextual role can differ from the meaning of an ending resource when taken outside the context of this particular arc. For example, a resource might generically represent a "person," but in the context of a particular arc it might have the role of "mother" and in the context of a different arc it might have the role of "daughter." Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name AElementXLinkHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<IRI>}{The location of the referenced object, expressed as an IRI reference. Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}}
#' }
#' @keywords internal
NULL


#' @name XLinkRoleAttribute
#' @title xlink.role
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<IRI>}{An optional IRI reference that identifies some resource that describes the intended property. The value must be an IRI reference as defined in [RFC3987], except that if the IRI scheme used is allowed to have absolute and relative forms, the IRI portion must be absolute. When no value is supplied, no particular role value shall be inferred. Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkShowAttribute
#' @title xlink.show
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{new replace embed other none}{This attribute is provided for backwards compatibility with SVG 1.1. It provides documentation to XLink.aware processors. In case of a conflict, the target attribute has priority, since it can express a wider range of values. Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' \item{new replace}{This attribute provides documentation to XLink.aware processors. If target="_blank" then use xlink.show="new" else use 'replace'. In case of a conflict, the target attribute has priority, since it can express a wider range of values. Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkTitleAttribute
#' @title xlink.title
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<anything>}{The title attribute shall be used to describe the meaning of a link or resource in a human.readable fashion, along the same lines as the role or arcrole attribute. A value is optional; if a value is supplied, it shall contain a string that describes the resource. In general it is preferable to use a 'title' child element rather than a 'title' attribute. The use of this information is highly dependent on the type of processing being done. It may be used, for example, to make titles available to applications used by visually impaired users, or to create a table of links, or to present help text that appears when a user lets a mouse pointer hover over a starting resource. Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name XLinkTypeAttribute
#' @title xlink.type
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{simple}{Identifies the type of XLink being used. In SVG 1.1, only simple links are available. Links are simple links by default, so the attribute xlink.type="simple" is optional and may be omitted on simple links. Refer to the XML Linking Language (XLink) [XLINK]. Animatable. no.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feImage]{feImage}}}
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}, \code{\link[=radialGradient]{radialGradient}}}
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}, \code{\link[=textPath]{textPath}}, \code{\link[=tref]{tref}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=a]{a}}, \code{\link[=color-profile]{color.profile}}, \code{\link[=cursor]{cursor}}, \code{\link[=filter]{filter}}, \code{\link[=font-face-uri]{font.face.uri}}, \code{\link[=glyphRef]{glyphRef}}, \code{\link[=image]{image}}, \code{\link[=mpath]{mpath}}, \code{\link[=pattern]{pattern}}, \code{\link[=script]{script}}}
#' }
#' @keywords internal
NULL


#' @name CursorElementXAttribute
#' @title x
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The x.coordinate of the position in the cursor's coordinate system which represents the precise position that is being pointed to. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=cursor]{cursor}}}
#' }
#' @keywords internal
NULL


#' @name CursorElementHrefAttribute
#' @title xlink.href
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<funciri>}{A Functional IRI reference to the file or element which provides the image of the cursor.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=cursor]{cursor}}}
#' }
#' @keywords internal
NULL


#' @name CursorElementYAttribute
#' @title y
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{<coordinate>}{The y.coordinate of the position in the cursor's coordinate system which represents the precise position that is being pointed to. If the attribute is not specified, the effect is as if a value of '0' were specified.Animatable. yes.}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=cursor]{cursor}}}
#' }
#' @keywords internal
NULL


#' @name ZoomAndPanAttribute
#' @title zoomAndPan
#' @description 
#' ToDo: Needs to be written!!!
#' @section Available Attribute Values:
#' \describe{
#' \item{disable}{disable zooming}
#' \item{magnify}{enable zooming (only for outermost svg)}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' \item{\emph{Unclassfied:}}{\code{\link[=view]{view}}}
#' }
#' @keywords internal
NULL

