#' Data about benzodiazepine use, sociodemographic and COVID-19 characteristics
#'
#' Dataset containing information about
#' subjects in COVID-19 period and mental health data.
#'
#' @format A tibble with 781 rows and the following 45 variables:
#' \describe{
#'   \item{age}{Age}
#'   \item{sex}{Sex}
#'   \item{color}{Skin color}
#'   \item{education}{Education level}
#'   \item{state}{Brazil state}
#'   \item{region}{Brazil region}
#'   \item{sexual_orientation}{Sexual orientation}
#'   \item{heterosexual}{Is heterosexual?}
#'   \item{household_income}{Income levels, going from A to E (highest to lowest)}
#'   \item{contact_covid19}{Have you or have had contact with people with confirmed COVID-19 diagnostic?}
#'   \item{risk_group_covid19}{Do you belong to any of the high-risk groups for severe COVID-19?}
#'   \item{number_people_house}{How many people have been living under the same roof as you since the COVID-19 outbreak began? (Number of people including you)}
#'   \item{benzofreq_w1}{}
#'   \item{benzofreq_w2}{}
#'   \item{benzofreq_w3}{}
#' }
#' @name all_waves
#' @source COVID-19 cohort study from research group at Federal University of Rio Grande do Sul.
#' @examples head(all_waves)
"all_waves"
