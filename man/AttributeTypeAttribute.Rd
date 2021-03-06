% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{AttributeTypeAttribute}
\alias{AttributeTypeAttribute}
\title{attributeType}
\description{
Governs the namespace in which the target attribute and its associated values are defined.
}
\section{Available Attribute Values}{

The value can be any one of the following:
\describe{
\item{\emph{'CSS'}}{Specifies that the value of \emph{'attributeName'} should be interpreted  as the name of a CSS property.}
\item{\emph{'XML'}}{Specifies that the value of  \emph{'attributeName'} should be interpreted as the name of a XML attribute}
\item{\emph{'auto'}}{Specifies to discover the value by searching for the matching property name, first through the CSS, then if not found then searching next through the XML.}
}
}

\section{Animatable}{

Not Animatable
}

\section{Used by the Elements}{

\describe{
\item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateTransform]{animateTransform}}, \code{\link[=set]{set}}}
}
}

\keyword{internal}
