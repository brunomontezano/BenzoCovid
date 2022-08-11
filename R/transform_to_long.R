#' Transform variable to long format
#'
#' @param data Dataset that contains variable to be transformed.
#' @param variable Variable to be transformed to long format.
#'
#' @return Tibble with input variable transformed to a long format.
#' @export
#'
transform_to_long <- function(data, variable) {
    data |>
        tidyr::pivot_longer(
            cols = dplyr::matches(paste0(variable, "_w[1-3]$")),
            names_to = paste0(variable, "_wave"),
            names_transform = readr::parse_number,
            values_to = paste0(variable, "_values")
        )

}
