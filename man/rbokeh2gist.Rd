% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/output_gist.R
\name{rbokeh2gist}
\alias{rbokeh2gist}
\title{Export rbokeh plot to a gist}
\usage{
rbokeh2gist(fig_str, name, created = NULL, description = "",
  secure = TRUE, view = TRUE)
}
\arguments{
\item{fig_str}{a string containing R code to create an rbokeh figure}

\item{name}{name of the gist}

\item{created}{optional string for a "Created by" to preceed the README}

\item{description}{text to go in README.md}

\item{secure}{should https be used for cdn links?}

\item{view}{should the resulting gist be opened in the browser on bl.ocks.org?}
}
\description{
Export rbokeh plot to a gist
}
\note{
This requires that you have a github personal access token stored as an environment variable \code{GITHUB_PAT}.  See \code{\link[gistr]{gist_create}} for more information.

Also note that this currently can't handle thumbnails but will find a way to do that soon.
}
\examples{
\dontrun{
rbokeh2gist("figure() \%>\% ly_points(1:10)", name = "test")
}
}

