#' Get absolute frequency of a variable grouped by another variable
#'
#' @param data Dataset containing the variables.
#' @param variable Character vector with variable name to be counted.
#' @param grouping_variable Character vector with grouping variable name.
#'
#' @return A tibble with the absolute frequency of the chosen `variable` grouped by the `grouping variable`
#' @export
#'
grouped_count <- function(data, variable, grouping_variable) {
    data |>
        dplyr::group_by(.data[[grouping_variable]]) |>
        dplyr::count(.data[[variable]])

}
