% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/krsa_coverage_plot.R
\name{krsa_coverage_plot}
\alias{krsa_coverage_plot}
\title{Generates a coverage plot (Percentage of total coverage of kinases on chip)}
\usage{
krsa_coverage_plot(chipCov, Ztable, chipType = c("STK", "PTK"))
}
\arguments{
\item{chipCov}{df of kinase mapping for either STK or PTK chip}

\item{Ztable}{Z score table}

\item{chipType}{type of chip, either STK or PTK}
}
\value{
ggplot object
}
\description{
This function takes in the chipCov map, Z score table, and chip type to produce a coverage plot (Percentage of total coverage of kinases on chip)
}
\examples{
TRUE
}
\seealso{
Other plots: 
\code{\link{krsa_ball_model}()},
\code{\link{krsa_curve_plot}()},
\code{\link{krsa_cv_plot}()},
\code{\link{krsa_heatmap_grouped}()},
\code{\link{krsa_heatmap}()},
\code{\link{krsa_histogram_plot}()},
\code{\link{krsa_reverse_krsa_plot}()},
\code{\link{krsa_violin_plot_grouped}()},
\code{\link{krsa_violin_plot}()},
\code{\link{krsa_waterfall}()},
\code{\link{krsa_zscores_plot}()}
}
\concept{plots}
