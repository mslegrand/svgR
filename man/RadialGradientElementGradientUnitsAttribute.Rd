% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{RadialGradientElementGradientUnitsAttribute}
\alias{RadialGradientElementGradientUnitsAttribute}
\title{gradientUnits}
\description{
Governs whether to interpret the coordinates of cx, cy, r, fx, fy as either objectBoundingBox or userSpaceOnUse.
}
\section{Available Attribute Values}{

The value can be either of the one of the following:
\describe{
\item{\emph{'userSpaceOnUse'}}{Specifies that \emph{'cx'}, \emph{'cy'}, \emph{'r'}, \emph{'fx'} and \emph{'fy'} represent values in the user coordinate system in effect when the radial gradient element is referenced.}
\item{\emph{'objectBoundingBox'}}{Specifies that the user coordinate system for attributes \emph{'cx'}, \emph{'cy'}, \emph{'r'}, \emph{'fx'} and \emph{'fy'} are given in terms of fractions (or percentages) of the bounding box of the target element to which the gradient is applied. In this case c(0, 0) is the coordinates of the upper left-hand corner of the bounding, and c(1, 0) is the coordinates of the lower right-hand corner of the bounding box. Default.}
}
}

\section{Used by the Elements}{

\describe{
\item{\emph{Gradient Elements}}{\code{\link[=radialGradient]{radialGradient}}}
}
}

\keyword{internal}
