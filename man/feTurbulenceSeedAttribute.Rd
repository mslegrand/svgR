% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{feTurbulenceSeedAttribute}
\alias{feTurbulenceSeedAttribute}
\title{seed}
\description{
Sets the seed for the pseudo random number generator used in creating the turbulence effect..
}
\section{Available Attribute Values}{

The value is defined as follows:
\describe{
\item{<non-negative integer>}{Specifies the seed for pseudo random number generator to be used in the \emph{noise} generation. Default is 0.}
}
}

\section{Animatable}{

Using:  \code{\link[=animate]{animate}}, \code{\link[=set]{set}} .
Supports Additive: Yes .
}

\section{Used by the Elements}{

\describe{
\item{\emph{Filter Primitive Elements}}{\code{\link[=feTurbulence]{feTurbulence}}}
}
}

\keyword{internal}
