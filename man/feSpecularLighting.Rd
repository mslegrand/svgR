% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_ElePages.R
\name{feSpecularLighting}
\alias{feSpecularLighting}
\title{A filter primitive element defining a lighting model for  specular  light}
\description{
This filter primitive lights a source graphic using the alpha channel as a bump map. The resulting image is an RGBA image based on the light color. The lighting calculation follows the standard specular component of the Phong lighting model. The resulting image depends on the light color, light position and surface geometry of the input bump map. The result of the lighting calculation is added. The filter primitive assumes that the viewer is at infinity in the z direction.
}
\section{Available Attributes (Named Parameters)}{

\describe{
\item{\emph{Complementary Attributes}}{\code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
\item{\emph{Core Attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
\item{\emph{Filter Primitive Attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
\item{\emph{Presentation Attributes}}{\code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}, \code{\link[=lighting-color-presentationAttribute]{lighting.color}}}
\item{\emph{Unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=FilterPrimitiveIn1Attribute]{in1}}, \code{\link[=feSpecularLightingKernelUnitLengthAttribute]{kernelUnitLength}}, \code{\link[=feSpecularLightingSpecularConstantAttribute]{specularConstant}}, \code{\link[=feSpecularLightingSpecularExponentAttribute]{specularExponent}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=feSpecularLightingSurfaceScaleAttribute]{surfaceScale}}}
}
}

\section{Available Content Elements (Unnamed Parameters)}{

\describe{
\item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
\item{\emph{Light Source Elements}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
}
}

\keyword{element}
