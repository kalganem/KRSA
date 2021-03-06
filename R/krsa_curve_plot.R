#' Generates curves plots per peptide using the last cycle data
#'
#' This function takes in the PW data (that includes all exposure times), list of peptides, and optional arguments of samples or groups names vector
#'
#' @param data PW data (that includes all exposure times)
#' @param peptides a vector of peptides to plot
#' @param byGroup fit lines by group
#' @param samples (optional) sample names
#' @param groups (optional) group names
#'
#' @return ggplot object
#'
#' @family plots
#'
#'
#' @export
#'
#' @examples
#' TRUE


krsa_curve_plot <- function(data, peptides, byGroup = T ,samples = NULL, groups = NULL) {
  data %>%
    dplyr::filter(Peptide %in% peptides) %>%
    {if(!is.null(samples)) dplyr::filter(.,SampleName %in% samples) else .} %>%
    {if(!is.null(groups)) dplyr::filter(.,Group %in% groups) else .} %>%
    ggplot2::ggplot(ggplot2::aes(ExposureTime, Signal)) -> gg

  if(byGroup) {
    gg <- gg + ggplot2::geom_smooth(method = stats::lm, formula = y~x+0, se=F, ggplot2::aes(color = factor(Group)))
  }

  else {
    gg <- gg + ggplot2::geom_smooth(method = stats::lm, formula = y~x+0, se=F, ggplot2::aes(group = SampleName, color = factor(Group)))
  }

  gg +
    ggplot2::facet_wrap(~ Peptide, scales = "free") +
    ggplot2::labs(title = paste0("Linear Model Fit of Signal Intensity Relative to Exposure Time at Post-wash Cycle of")
    ) +
    ggplot2::theme_bw()
}
