#' @name AltGlyphElementDXYAttribute
#' @title dxy
#' @section Combines:
#' \link[=AltGlyphElementDXAttribute]{dx}, \link[=AltGlyphElementDYAttribute]{dy}
#' @section Equivalence:
#' \describe{
#' \item{}{dxy=c(value.DX,value.DY)}
#' \item{and}{dx = value.DX; dy = value.DY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal 
NULL

#' @name AltGlyphElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=AltGlyphElementXAttribute]{x}, \link[=AltGlyphElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=altGlyph]{altGlyph}}}
#' }
#' @keywords internal 
NULL

#' @name CircleElementCXYAttribute
#' @title cxy
#' @section Combines:
#' \link[=CircleElementCXAttribute]{cx}, \link[=CircleElementCYAttribute]{cy}
#' @section Equivalence:
#' \describe{
#' \item{}{cxy=c(value.CX,value.CY)}
#' \item{and}{cx = value.CX; cy = value.CY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=circle]{circle}}}
#' }
#' @keywords internal 
NULL

#' @name CursorElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=CursorElementXAttribute]{x}, \link[=CursorElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=cursor]{cursor}}}
#' }
#' @keywords internal 
NULL

#' @name EllipseElementCXYAttribute
#' @title cxy
#' @section Combines:
#' \link[=EllipseElementCXAttribute]{cx}, \link[=EllipseElementCYAttribute]{cy}
#' @section Equivalence:
#' \describe{
#' \item{}{cxy=c(value.CX,value.CY)}
#' \item{and}{cx = value.CX; cy = value.CY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal 
NULL

#' @name EllipseElementRXYAttribute
#' @title rxy
#' @section Combines:
#' \link[=EllipseElementRXAttribute]{rx}, \link[=EllipseElementRYAttribute]{ry}
#' @section Equivalence:
#' \describe{
#' \item{}{rxy=c(value.RX,value.RY)}
#' \item{and}{rx = value.RX; ry = value.RY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=ellipse]{ellipse}}}
#' }
#' @keywords internal 
NULL

#' @name FilterPrimitiveIN1Attribute
#' @title in1
#' @section Combines:
#' \link[=FilterPrimitiveInAttribute]{in}
#' @section Equivalence:
#' \describe{
#' \item{}{in1=c(value.IN)}
#' \item{and}{in = value.IN}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}}
#' }
#' @keywords internal 
NULL

#' @name FilterPrimitiveIN12Attribute
#' @title in12
#' @section Combines:
#' \link[=FilterPrimitiveInAttribute]{in}, \link[=feBlendIn2Attribute]{in2}, \link[=feCompositeIn2Attribute]{in}, \link[=feDisplacementMapIn2Attribute]{in2}
#' @section Equivalence:
#' \describe{
#' \item{}{in12=c(value.IN,value.IN2)}
#' \item{and}{in = value.IN; in2 = value.IN2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}}
#' }
#' @keywords internal 
NULL

#' @name FilterPrimitiveWHAttribute
#' @title wh
#' @section Combines:
#' \link[=FilterPrimitiveHeightAttribute]{height}, \link[=FilterPrimitiveWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal 
NULL

#' @name FilterPrimitiveXYAttribute
#' @title xy
#' @section Combines:
#' \link[=FilterPrimitiveXAttribute]{x}, \link[=FilterPrimitiveYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feBlend]{feBlend}}, \code{\link[=feColorMatrix]{feColorMatrix}}, \code{\link[=feComponentTransfer]{feComponentTransfer}}, \code{\link[=feComposite]{feComposite}}, \code{\link[=feConvolveMatrix]{feConvolveMatrix}}, \code{\link[=feDiffuseLighting]{feDiffuseLighting}}, \code{\link[=feDisplacementMap]{feDisplacementMap}}, \code{\link[=feFlood]{feFlood}}, \code{\link[=feGaussianBlur]{feGaussianBlur}}, \code{\link[=feImage]{feImage}}, \code{\link[=feMerge]{feMerge}}, \code{\link[=feMorphology]{feMorphology}}, \code{\link[=feOffset]{feOffset}}, \code{\link[=feSpecularLighting]{feSpecularLighting}}, \code{\link[=feTile]{feTile}}, \code{\link[=feTurbulence]{feTurbulence}}}
#' }
#' @keywords internal 
NULL

#' @name feCompositeK1234Attribute
#' @title k1234
#' @section Combines:
#' \link[=feCompositeK1Attribute]{k1}, \link[=feCompositeK2Attribute]{k2}, \link[=feCompositeK3Attribute]{k3}, \link[=feCompositeK4Attribute]{k4}
#' @section Equivalence:
#' \describe{
#' \item{}{k1234=c(value.K1,value.K2,value.K3,value.K4)}
#' \item{and}{k1 = value.K1; k2 = value.K2; k3 = value.K3; k4 = value.K4}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feComposite]{feComposite}}}
#' }
#' @keywords internal 
NULL

#' @name feConvolveMatrixElementTARGETXYAttribute
#' @title targetXY
#' @section Combines:
#' \link[=feConvolveMatrixElementTargetXAttribute]{targetX}, \link[=feConvolveMatrixElementTargetYAttribute]{targetY}
#' @section Equivalence:
#' \describe{
#' \item{}{targetXY=c(value.TARGETX,value.TARGETY)}
#' \item{and}{targetX = value.TARGETX; targetY = value.TARGETY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
#' }
#' @keywords internal 
NULL

#' @name feOffsetDXYAttribute
#' @title dxy
#' @section Combines:
#' \link[=feOffsetDxAttribute]{dx}, \link[=feOffsetDyAttribute]{dy}
#' @section Equivalence:
#' \describe{
#' \item{}{dxy=c(value.DX,value.DY)}
#' \item{and}{dx = value.DX; dy = value.DY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Filter Primitive Elements}}{\code{\link[=feOffset]{feOffset}}}
#' }
#' @keywords internal 
NULL

#' @name fePointLightXYZAttribute
#' @title xyz
#' @section Combines:
#' \link[=fePointLightXAttribute]{x}, \link[=fePointLightYAttribute]{y}, \link[=fePointLightZAttribute]{z}
#' @section Equivalence:
#' \describe{
#' \item{}{xyz=c(value.X,value.Y,value.Z)}
#' \item{and}{x = value.X; y = value.Y; z = value.Z}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=fePointLight]{fePointLight}}}
#' }
#' @keywords internal 
NULL

#' @name feSpotLightPOINTSATXYZAttribute
#' @title pointsAtXYZ
#' @section Combines:
#' \link[=feSpotLightPointsAtXAttribute]{pointsAtX}, \link[=feSpotLightPointsAtYAttribute]{pointsAtY}, \link[=feSpotLightPointsAtZAttribute]{pointsAtZ}
#' @section Equivalence:
#' \describe{
#' \item{}{pointsAtXYZ=c(value.POINTSATX,value.POINTSATY,value.POINTSATZ)}
#' \item{and}{pointsAtX = value.POINTSATX; pointsAtY = value.POINTSATY; pointsAtZ = value.POINTSATZ}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal 
NULL

#' @name feSpotLightXYZAttribute
#' @title xyz
#' @section Combines:
#' \link[=feSpotLightXAttribute]{x}, \link[=feSpotLightYAttribute]{y}, \link[=feSpotLightZAttribute]{z}
#' @section Equivalence:
#' \describe{
#' \item{}{xyz=c(value.X,value.Y,value.Z)}
#' \item{and}{x = value.X; y = value.Y; z = value.Z}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=feSpotLight]{feSpotLight}}}
#' }
#' @keywords internal 
NULL

#' @name FilterElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=FilterElementHeightAttribute]{height}, \link[=FilterElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal 
NULL

#' @name FilterElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=FilterElementXAttribute]{x}, \link[=FilterElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=filter]{filter}}}
#' }
#' @keywords internal 
NULL

#' @name FontElementHORIZORIGINXYAttribute
#' @title horiz.origin.xy
#' @section Combines:
#' \link[=FontElementHorizOriginXAttribute]{horiz-origin-x}, \link[=FontElementHorizOriginYAttribute]{horiz-origin-y}
#' @section Equivalence:
#' \describe{
#' \item{}{horiz.origin.xy=c(value.HORIZ.ORIGIN.X,value.HORIZ.ORIGIN.Y)}
#' \item{and}{horiz.origin.x = value.HORIZ.ORIGIN.X; horiz.origin.y = value.HORIZ.ORIGIN.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal 
NULL

#' @name FontElementVERTORIGINXYAttribute
#' @title vert.origin.xy
#' @section Combines:
#' \link[=FontElementVertOriginXAttribute]{vert-origin-x}, \link[=FontElementVertOriginYAttribute]{vert-origin-y}
#' @section Equivalence:
#' \describe{
#' \item{}{vert.origin.xy=c(value.VERT.ORIGIN.X,value.VERT.ORIGIN.Y)}
#' \item{and}{vert.origin.x = value.VERT.ORIGIN.X; vert.origin.y = value.VERT.ORIGIN.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=font]{font}}}
#' }
#' @keywords internal 
NULL

#' @name ForeignObjectElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=ForeignObjectElementHeightAttribute]{height}, \link[=ForeignObjectElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal 
NULL

#' @name ForeignObjectElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=ForeignObjectElementXAttribute]{x}, \link[=ForeignObjectElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=foreignObject]{foreignObject}}}
#' }
#' @keywords internal 
NULL

#' @name GlyphElementVERTORIGINXYAttribute
#' @title vert.origin.xy
#' @section Combines:
#' \link[=GlyphElementVertOriginXAttribute]{vert-origin-x}, \link[=GlyphElementVertOriginYAttribute]{vert-origin-y}
#' @section Equivalence:
#' \describe{
#' \item{}{vert.origin.xy=c(value.VERT.ORIGIN.X,value.VERT.ORIGIN.Y)}
#' \item{and}{vert.origin.x = value.VERT.ORIGIN.X; vert.origin.y = value.VERT.ORIGIN.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyph]{glyph}}, \code{\link[=missing-glyph]{missing.glyph}}}
#' }
#' @keywords internal 
NULL

#' @name GlyphRefElementDXYAttribute
#' @title dxy
#' @section Combines:
#' \link[=GlyphRefElementDXAttribute]{dx}, \link[=GlyphRefElementDYAttribute]{dy}
#' @section Equivalence:
#' \describe{
#' \item{}{dxy=c(value.DX,value.DY)}
#' \item{and}{dx = value.DX; dy = value.DY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal 
NULL

#' @name GlyphRefElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=GlyphRefElementXAttribute]{x}, \link[=GlyphRefElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=glyphRef]{glyphRef}}}
#' }
#' @keywords internal 
NULL

#' @name HKernElementG12Attribute
#' @title g12
#' @section Combines:
#' \link[=HKernElementG1Attribute]{g1}, \link[=HKernElementG2Attribute]{g2}
#' @section Equivalence:
#' \describe{
#' \item{}{g12=c(value.G1,value.G2)}
#' \item{and}{g1 = value.G1; g2 = value.G2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal 
NULL

#' @name HKernElementU12Attribute
#' @title u12
#' @section Combines:
#' \link[=HKernElementU1Attribute]{u1}, \link[=HKernElementU2Attribute]{u2}
#' @section Equivalence:
#' \describe{
#' \item{}{u12=c(value.U1,value.U2)}
#' \item{and}{u1 = value.U1; u2 = value.U2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=hkern]{hkern}}, \code{\link[=vkern]{vkern}}}
#' }
#' @keywords internal 
NULL

#' @name ImageElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=ImageElementHeightAttribute]{height}, \link[=ImageElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal 
NULL

#' @name ImageElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=ImageElementXAttribute]{x}, \link[=ImageElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=image]{image}}}
#' }
#' @keywords internal 
NULL

#' @name LineElementX12Attribute
#' @title x12
#' @section Combines:
#' \link[=LineElementX1Attribute]{x1}, \link[=LineElementX2Attribute]{x2}
#' @section Equivalence:
#' \describe{
#' \item{}{x12=c(value.X1,value.X2)}
#' \item{and}{x1 = value.X1; x2 = value.X2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal 
NULL

#' @name LineElementXY1Attribute
#' @title xy1
#' @section Combines:
#' \link[=LineElementX1Attribute]{x1}, \link[=LineElementY1Attribute]{y1}
#' @section Equivalence:
#' \describe{
#' \item{}{xy1=c(value.X1,value.Y1)}
#' \item{and}{x1 = value.X1; y1 = value.Y1}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal 
NULL

#' @name LineElementXY2Attribute
#' @title xy2
#' @section Combines:
#' \link[=LineElementX2Attribute]{x2}, \link[=LineElementY2Attribute]{y2}
#' @section Equivalence:
#' \describe{
#' \item{}{xy2=c(value.X2,value.Y2)}
#' \item{and}{x2 = value.X2; y2 = value.Y2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal 
NULL

#' @name LineElementY12Attribute
#' @title y12
#' @section Combines:
#' \link[=LineElementY1Attribute]{y1}, \link[=LineElementY2Attribute]{y2}
#' @section Equivalence:
#' \describe{
#' \item{}{y12=c(value.Y1,value.Y2)}
#' \item{and}{y1 = value.Y1; y2 = value.Y2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=line]{line}}}
#' }
#' @keywords internal 
NULL

#' @name LinearGradientElementX12Attribute
#' @title x12
#' @section Combines:
#' \link[=LinearGradientElementX1Attribute]{x1}, \link[=LinearGradientElementX2Attribute]{x2}
#' @section Equivalence:
#' \describe{
#' \item{}{x12=c(value.X1,value.X2)}
#' \item{and}{x1 = value.X1; x2 = value.X2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal 
NULL

#' @name LinearGradientElementXY1Attribute
#' @title xy1
#' @section Combines:
#' \link[=LinearGradientElementX1Attribute]{x1}, \link[=LinearGradientElementY1Attribute]{y1}
#' @section Equivalence:
#' \describe{
#' \item{}{xy1=c(value.X1,value.Y1)}
#' \item{and}{x1 = value.X1; y1 = value.Y1}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal 
NULL

#' @name LinearGradientElementXY2Attribute
#' @title xy2
#' @section Combines:
#' \link[=LinearGradientElementX2Attribute]{x2}, \link[=LinearGradientElementY2Attribute]{y2}
#' @section Equivalence:
#' \describe{
#' \item{}{xy2=c(value.X2,value.Y2)}
#' \item{and}{x2 = value.X2; y2 = value.Y2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal 
NULL

#' @name LinearGradientElementY12Attribute
#' @title y12
#' @section Combines:
#' \link[=LinearGradientElementY1Attribute]{y1}, \link[=LinearGradientElementY2Attribute]{y2}
#' @section Equivalence:
#' \describe{
#' \item{}{y12=c(value.Y1,value.Y2)}
#' \item{and}{y1 = value.Y1; y2 = value.Y2}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=linearGradient]{linearGradient}}}
#' }
#' @keywords internal 
NULL

#' @name MarkerElementREFXYAttribute
#' @title refXY
#' @section Combines:
#' \link[=MarkerElementRefXAttribute]{refX}, \link[=MarkerElementRefYAttribute]{refY}
#' @section Equivalence:
#' \describe{
#' \item{}{refXY=c(value.REFX,value.REFY)}
#' \item{and}{refX = value.REFX; refY = value.REFY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=marker]{marker}}}
#' }
#' @keywords internal 
NULL

#' @name MaskElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=MaskElementHeightAttribute]{height}, \link[=MaskElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal 
NULL

#' @name MaskElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=MaskElementXAttribute]{x}, \link[=MaskElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=mask]{mask}}}
#' }
#' @keywords internal 
NULL

#' @name PatternElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=PatternElementHeightAttribute]{height}, \link[=PatternElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal 
NULL

#' @name PatternElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=PatternElementXAttribute]{x}, \link[=PatternElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=pattern]{pattern}}}
#' }
#' @keywords internal 
NULL

#' @name RadialGradientElementCXYAttribute
#' @title cxy
#' @section Combines:
#' \link[=RadialGradientElementCXAttribute]{cx}, \link[=RadialGradientElementCYAttribute]{cy}
#' @section Equivalence:
#' \describe{
#' \item{}{cxy=c(value.CX,value.CY)}
#' \item{and}{cx = value.CX; cy = value.CY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal 
NULL

#' @name RadialGradientElementFXYAttribute
#' @title fxy
#' @section Combines:
#' \link[=RadialGradientElementFXAttribute]{fx}, \link[=RadialGradientElementFYAttribute]{fy}
#' @section Equivalence:
#' \describe{
#' \item{}{fxy=c(value.FX,value.FY)}
#' \item{and}{fx = value.FX; fy = value.FY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
#' }
#' @keywords internal 
NULL

#' @name RectElementRXYAttribute
#' @title rxy
#' @section Combines:
#' \link[=RectElementRXAttribute]{rx}, \link[=RectElementRYAttribute]{ry}
#' @section Equivalence:
#' \describe{
#' \item{}{rxy=c(value.RX,value.RY)}
#' \item{and}{rx = value.RX; ry = value.RY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal 
NULL

#' @name RectElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=RectElementHeightAttribute]{height}, \link[=RectElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal 
NULL

#' @name RectElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=RectElementXAttribute]{x}, \link[=RectElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Shape Elements}}{\code{\link[=rect]{rect}}}
#' }
#' @keywords internal 
NULL

#' @name SVGElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=SVGElementHeightAttribute]{height}, \link[=SVGElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal 
NULL

#' @name SVGElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=SVGElementXAttribute]{x}, \link[=SVGElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=svg]{svg}}}
#' }
#' @keywords internal 
NULL

#' @name TextElementDXYAttribute
#' @title dxy
#' @section Combines:
#' \link[=TextElementDXAttribute]{dx}, \link[=TextElementDYAttribute]{dy}
#' @section Equivalence:
#' \describe{
#' \item{}{dxy=c(value.DX,value.DY)}
#' \item{and}{dx = value.DX; dy = value.DY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal 
NULL

#' @name TextElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=TextElementXAttribute]{x}, \link[=TextElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Unclassfied:}}{\code{\link[=text]{text}}}
#' }
#' @keywords internal 
NULL

#' @name TSpanElementDXYAttribute
#' @title dxy
#' @section Combines:
#' \link[=TSpanElementDXAttribute]{dx}, \link[=TSpanElementDYAttribute]{dy}
#' @section Equivalence:
#' \describe{
#' \item{}{dxy=c(value.DX,value.DY)}
#' \item{and}{dx = value.DX; dy = value.DY}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal 
NULL

#' @name TSpanElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=TSpanElementXAttribute]{x}, \link[=TSpanElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Text Content Child Elements}}{\code{\link[=tref]{tref}}, \code{\link[=tspan]{tspan}}}
#' }
#' @keywords internal 
NULL

#' @name UseElementWHAttribute
#' @title wh
#' @section Combines:
#' \link[=UseElementHeightAttribute]{height}, \link[=UseElementWidthAttribute]{width}
#' @section Equivalence:
#' \describe{
#' \item{}{wh=c(value.HEIGHT,value.WIDTH)}
#' \item{and}{height = value.HEIGHT; width = value.WIDTH}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal 
NULL

#' @name UseElementXYAttribute
#' @title xy
#' @section Combines:
#' \link[=UseElementXAttribute]{x}, \link[=UseElementYAttribute]{y}
#' @section Equivalence:
#' \describe{
#' \item{}{xy=c(value.X,value.Y)}
#' \item{and}{x = value.X; y = value.Y}
#' }
#' @section Used by the Elements:
#' \describe{
#' \item{\emph{Structural Elements}}{\code{\link[=use]{use}}}
#' }
#' @keywords internal 
NULL
