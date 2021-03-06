% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doc_RegAttrPages.R
\name{KeyTimesAttribute}
\alias{KeyTimesAttribute}
\title{keyTimes}
\description{
Sets the time values  corresponding to the keyPoint values. The keyTime and keyPoints together form a contraint that at each specific keyTime, the object should be located at the corresponding key point. This constaint may cause the object to move faster or slower along the path between the intervals defined by the keytimes/keypoints. Another of saying this is that keyTime-keyPoints are used to control the pacing of the motion along the path.
}
\section{Available Attribute Values}{

The value can be either of the one of the following:
\describe{
\item{<numeric>[N]}{A list of time values used to control the pacing of the animation. Each time in the list corresponds to a value in the values attribute list}
\item{<numeric>}{A vector of time values used to control the pacing of the animation. Each time in the list corresponds to a value in the values attribute list}
}
}

\section{Animatable}{

Not Animatable
}

\section{Used by the Elements}{

\describe{
\item{\emph{Animation Elements}}{\code{\link[=animate]{animate}}, \code{\link[=animateColor]{animateColor}}, \code{\link[=animateMotion]{animateMotion}}, \code{\link[=animateTransform]{animateTransform}}}
}
}

\keyword{internal}
