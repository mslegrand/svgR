% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{FilterElementFilterUnitsAttribute}
\alias{FilterElementFilterUnitsAttribute}
\title{filterUnits}
\description{
Set the  units to be used to interpret  the x, y, width, height  attributes within  the filter effects region.
}
\section{Available Attribute Values}{

The value can be either of the one of the following:
\describe{
\item{\emph{'userSpaceOnUse'}}{Specifies to interpret \emph{x, y, width, height ( or xy, wh)} as current user coordinates.}
\item{\emph{'objectBoundingBox'}}{Specifies to interpret \emph{x, y, width, height ( or xy, wh)} as fractions (or percentages)}
}
}

\section{Used by the Elements}{

\describe{
\item{\emph{Uncategorized Elements}}{\code{\link[=filter]{filter}}}
}
}

\keyword{internal}
