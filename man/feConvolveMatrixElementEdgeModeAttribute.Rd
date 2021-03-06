% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{feConvolveMatrixElementEdgeModeAttribute}
\alias{feConvolveMatrixElementEdgeModeAttribute}
\title{edgeMode}
\description{
Governs how the convolution is computed along the edges.
}
\section{Available Attribute Values}{

The value can be any one of the following:
\describe{
\item{\emph{'duplicate'}}{Specifies to extended the input image along the borders by duplication color values.}
\item{\emph{'wrap'}}{Specifies to extended the input image along the borders by using a wrap around of the color values.}
\item{\emph{'none'}}{Specifies to extended the input image along the borders by using a zero color value.}
}
}

\section{Used by the Elements}{

\describe{
\item{\emph{Filter Primitive Elements}}{\code{\link[=feConvolveMatrix]{feConvolveMatrix}}}
}
}

\keyword{internal}
