#' Plot numerical or categorical variables based on three-wave data
#'
#' @param data Dataset containing the variable to be plotted.
#' @param variable Variable to be plotted in a line or column plot. Numerical variables are plotted based on the mean.
#'
#' @return A ggplot2 plot using the input variable.
#' @export
#'
plot_three_waves <- function(data, variable) {
    transformed_data <- data |>
        BenzoCovid::transform_to_long(variable)

    if (is.numeric(transformed_data[[paste0(variable, "_values")]])) {
        transformed_data |>
            dplyr::group_by(.data[[paste0(variable, "_wave")]]) |>
            dplyr::summarise(mean_var = mean(.data[[paste0(variable, "_values")]])) |>
            ggplot2::ggplot(ggplot2::aes(x = .data[[paste0(variable, "_wave")]],
                                         y = .data[["mean_var"]])) +
            ggplot2::geom_line(size = 0.5, color = "orange") +
            ggplot2::geom_point(size = 4, color = "black") +
            ggplot2::scale_x_continuous(n.breaks = 3) +
            ggplot2::theme_minimal(base_size = 16)

    } else {
        transformed_data |>
            dplyr::select(dplyr::starts_with(variable)) |>
            dplyr::group_by(.data[[paste0(variable, "_wave")]],
                            .data[[paste0(variable, "_values")]]) |>
            dplyr::summarise(n_freq = dplyr::n()) |>
            ggplot2::ggplot(ggplot2::aes(x = .data[[paste0(variable, "_values")]],
                                         y = .data[["n_freq"]])) +
            ggplot2::geom_col(fill = "royalblue") +
            ggplot2::facet_wrap(~ .data[[paste0(variable, "_wave")]]) +
            ggplot2::theme_minimal(base_size = 10)

    }

}
