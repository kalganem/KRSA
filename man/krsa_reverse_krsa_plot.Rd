% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/krsa_reverse_krsa_plot.R
\name{krsa_reverse_krsa_plot}
\alias{krsa_reverse_krsa_plot}
\title{Generates the reverse krsa plot (to examine kinase activity)}
\usage{
krsa_reverse_krsa_plot(
  chipCov,
  lfc_table,
  kinases,
  lfc_thr,
  byChip = T,
  facet = F
)
}
\arguments{
\item{chipCov}{chipCov df for eaither STK or PTK}

\item{lfc_table}{the LFC table}

\item{kinases}{vector of kinases}

\item{lfc_thr}{LFC threshold}

\item{byChip}{will facet by Barcode}

\item{facet}{facet by chip}
}
\value{
ggplot object
}
\description{
This function takes in chipCov df, the LFC table, kinases, LFC threshold, and generates the reverse krsa plot (to examine kinase activity)
}
\examples{
TRUE
}
\seealso{
Other plots: 
\code{\link{krsa_ball_model}()},
\code{\link{krsa_coverage_plot}()},
\code{\link{krsa_curve_plot}()},
\code{\link{krsa_cv_plot}()},
\code{\link{krsa_heatmap_grouped}()},
\code{\link{krsa_heatmap}()},
\code{\link{krsa_histogram_plot}()},
\code{\link{krsa_violin_plot_grouped}()},
\code{\link{krsa_violin_plot}()},
\code{\link{krsa_waterfall}()},
\code{\link{krsa_zscores_plot}()}
}
\concept{plots}
