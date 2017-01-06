% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_ElePages.R
\name{feDiffuseLighting}
\alias{feDiffuseLighting}
\title{A Filter Primitive Element defining a lighting model for  diffuse  light}
\description{
This filter primitive lights an image using the alpha channel as a bump map. The resulting image, which is an RGBA opaque image, depends on the light color, light position and surface geometry of the input bump map.
}
\section{Available Attributes (Named Parameters)}{

\describe{
\item{\emph{combining attributes}}{\code{\link[=FilterPrimitiveIN1Attribute]{in1}}, \code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
\item{\emph{core attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
\item{\emph{filter primitive attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
\item{\emph{presentation attributes}}{\code{\link[=color-presentationAttribute]{color}}, \code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}, \code{\link[=lighting-color-presentationAttribute]{lighting.color}}}
\item{\emph{unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=feDiffuseLightingDiffuseConstantAttribute]{diffuseConstant}}, \code{\link[=FilterPrimitiveInAttribute]{in}}, \code{\link[=feDiffuseLightingKernelUnitLengthAttribute]{kernelUnitLength}}, \code{\link[=StyleAttribute]{style}}, \code{\link[=feDiffuseLightingSurfaceScaleAttribute]{surfaceScale}}}
}
}

\section{Available Content Elements (Unnamed Parameters)}{

\describe{
\item{\emph{Descriptive Elements}}{\code{\link[=desc]{desc}}, \code{\link[=metadata]{metadata}}, \code{\link[=title]{title}}}
\item{\emph{Unclassfied:}}{\code{\link[=feDistantLight]{feDistantLight}}, \code{\link[=fePointLight]{fePointLight}}, \code{\link[=feSpotLight]{feSpotLight}}}
}
}
\keyword{element}
