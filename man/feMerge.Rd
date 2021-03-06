% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_ElePages.R
\name{feMerge}
\alias{feMerge}
\title{A filter primitive element to merge images}
\description{
The feMerge filter allows filter effects to be applied concurrently instead of sequentially. This is achieved by other filters storing their output via the result attribute and then accessing it in a <femergenode> child.
}
\section{Available Attributes (Named Parameters)}{

\describe{
\item{\emph{Complementary Attributes}}{\code{\link[=FilterPrimitiveWHAttribute]{wh}}, \code{\link[=FilterPrimitiveXYAttribute]{xy}}}
\item{\emph{Core Attributes}}{\code{\link[=IDAttribute]{id}}, \code{\link[=XMLBaseAttribute]{xml.base}}, \code{\link[=XMLLangAttribute]{xml.lang}}, \code{\link[=XMLSpaceAttribute]{xml.space}}}
\item{\emph{Filter Primitive Attributes}}{\code{\link[=FilterPrimitiveHeightAttribute]{height}}, \code{\link[=FilterPrimitiveResultAttribute]{result}}, \code{\link[=FilterPrimitiveWidthAttribute]{width}}, \code{\link[=FilterPrimitiveXAttribute]{x}}, \code{\link[=FilterPrimitiveYAttribute]{y}}}
\item{\emph{Presentation Attributes}}{\code{\link[=color-interpolation-filters-presentationAttribute]{color.interpolation.filters}}}
\item{\emph{Unclassified}}{\code{\link[=ClassAttribute]{class}}, \code{\link[=StyleAttribute]{style}}}
}
}

\section{Available Content Elements (Unnamed Parameters)}{

\describe{
\item{\emph{Uncategorized Elements}}{\code{\link[=feMergeNode]{feMergeNode}}}
}
}

\keyword{element}
