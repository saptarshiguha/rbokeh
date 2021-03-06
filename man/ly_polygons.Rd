% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer_shapes.R
\name{ly_polygons}
\alias{ly_polygons}
\title{Add a "polygons" layer to a Bokeh figure}
\usage{
ly_polygons(fig, xs, ys, group = NULL, data = figure_data(fig),
  color = NULL, alpha = 1, hover = NULL, url = NULL, lname = NULL,
  lgroup = NULL, ...)
}
\arguments{
\item{fig}{figure to modify}

\item{xs}{vector or list of values or field name of polygon x coordinates - see details}

\item{ys}{vector or list of values or field name of polygon y coordinates - see details}

\item{group}{vector or field name of grouping variable - see details}

\item{data}{an optional data frame, providing the source for inputs xs, ys, group, and other glyph properties}

\item{color}{color for the glyph - a hex code (with no alpha) or any of the 147 named CSS colors, e.g 'green', 'indigo' - for glyphs with both fill and line properties, see "Handling color" below}

\item{alpha}{the alpha transparency of the glyph between 0 (transparent) and 1 (opaque) - if glyph has both fill and color properties, see "Handling alpha" below}

\item{hover}{a data frame of variables to be displayed when hovering over the glyph or a vector of variable names that can be found and extracted from the \code{data} argument}

\item{url}{a string of URLs or a single string that references a variable name (via @var_name) that can be found and extracted from the \code{data} argument}

\item{lname}{layer name}

\item{lgroup}{layer group}

\item{\ldots}{additional parameters for fine control over fill and line properties (see "Additional parameters" below)}
}
\description{
Add a "polygons" layer to a Bokeh figure
}
\details{
\code{xs} and \code{ys} can be a list of vectors, each element for one polygon to be drawn, or can be vectors with the \code{group} argument specifying how to break them up into individual polygons.
}
\section{Handling color}{
 The \code{color} parameter is a high-level plot attribute that provides default behavior for coloring glyphs.
\itemize{
  \item When using a glyph that only has line properties, this will be the color of the line.
  \item When using a glyph that has has line and fill properties, this will be the color of the line and the fill, with the alpha level of the fill reduced by 50\%.
  \item If full control over fill and line color is desired, the \code{fill_color} and \code{line_color} attributes can be specified explicitly and will override \code{color}.
}
When color is \code{NULL} and \code{fill_color} or \code{line_color} are not specified, the color will be chosen from the theme.
}

\section{Handling alpha}{
 The \code{alpha} is a high-level plot attribute that sets the transparency of the glyph being plotted.
\itemize{
  \item When using a glyph that only has line properties, this will be the alpha of the line.
  \item When using a glyph that has has line and fill properties, this will be the alpha of the line and the alpha of the fill will be set to 50\% of this value.
  \item Individual fill and line alpha can be specified with \code{fill_alpha} and \code{line_alpha} and will override \code{alpha}.
}
}

\section{Additional parameters}{

\tabular{ll}{
  \code{fill_color} \tab color to use to fill the glyph with - a hex code (with no alpha) or any of the 147 named CSS colors, e.g 'green', 'indigo' \cr
  \code{fill_alpha} \tab transparency value between 0 (transparent) and 1 (opaque) \cr
  \code{line_color} \tab color to use to stroke lines with - a hex code (with no alpha) or any of the 147 named CSS colors, e.g 'green', 'indigo' \cr
  \code{line_width} \tab stroke width in units of pixels \cr
  \code{line_alpha} \tab transparency value between 0 (transparent) and 1 (opaque) \cr
  \code{line_join} \tab how path segments should be joined together 'miter' 'round' 'bevel' \cr
  \code{line_cap} \tab how path segments should be terminated 'butt' 'round' 'square' \cr
  \code{line_dash} \tab array of integer pixel distances that describe the on-off pattern of dashing to use \cr
  \code{line_dash_offset} \tab the distance in pixels into the line_dash that the pattern should start from
 }
}
\seealso{
Other layer functions: \code{\link{ly_abline}},
  \code{\link{ly_annular_wedge}}, \code{\link{ly_annulus}},
  \code{\link{ly_arc}}, \code{\link{ly_bar}},
  \code{\link{ly_bezier}}, \code{\link{ly_boxplot}},
  \code{\link{ly_contour}}, \code{\link{ly_crect}},
  \code{\link{ly_curve}}, \code{\link{ly_density}},
  \code{\link{ly_hist}}, \code{\link{ly_image_url}},
  \code{\link{ly_image}}, \code{\link{ly_lines}},
  \code{\link{ly_map}}, \code{\link{ly_multi_line}},
  \code{\link{ly_oval}}, \code{\link{ly_patch}},
  \code{\link{ly_points}}, \code{\link{ly_quadratic}},
  \code{\link{ly_quantile}}, \code{\link{ly_ray}},
  \code{\link{ly_rect}}, \code{\link{ly_segments}},
  \code{\link{ly_text}}, \code{\link{ly_wedge}}
}

