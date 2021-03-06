% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_PresAttrPages.R
\name{flood-color-presentationAttribute}
\alias{flood-color-presentationAttribute}
\title{flood.color}
\description{
Defines what color to use to flood the current filter primitive subregion.
}
\section{Available Attribute Values}{



\describe{
\item{<color>}{Sets the flood color. The color may be expressed in one of three ways: name (i.e. red),  or  numeric (#f00 or #ff0000) or  rgb (rgb(255,0,0)). An optional ICC color may also be specified as a 2nd component of the color vector.}
\item{c(<color>, <icccolor>)}{Specifies a vector with  color name followed by an ICC color.}
\item{\emph{'\emph{'\emph{'\emph{'currentColor'}'}'}'}}{Specifies to use the \emph{currentColor} as the flood color. The current color is the value of the color specified by the \emph{color} property.}
\item{\emph{'\emph{'\emph{'\emph{'inherit'}'}'}'}}{Specifies to inherit the flood color from the parent.}
}
}

\section{Used by the Elements}{

\describe{
\item{\emph{Filter Primitive Elements}}{\code{\link[=feFlood]{feFlood}}}
}
}

\keyword{internal}
