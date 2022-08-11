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
#'   \item{benzofreq_w1}{Benzodiazepine use frequency at wave 1}
#'   \item{benzofreq_w2}{Benzodiazepine use frequency at wave 2}
#'   \item{benzofreq_w3}{Benzodiazepine use frequency at wave 3}
#'   \item{family_relationship_w1}{Family relationship quality at wave 1}
#'   \item{family_relationship_w2}{Family relationship quality at wave 2}
#'   \item{family_relationship_w3}{Family relationship quality at wave 3}
#'   \item{friend_relationship_w1}{Quality of relationship with friends at wave 1}
#'   \item{friend_relationship_w2}{Quality of relationship with friends at wave 2}
#'   \item{friend_relationship_w3}{Quality of relationship with friends at wave 3}
#'   \item{loving_relationship_w1}{Love relationship quality at wave 1}
#'   \item{loving_relationship_w2}{Love relationship quality at wave 2}
#'   \item{loving_relationship_w3}{Love relationship quality at wave 3}
#'   \item{social_distancing_w1}{Did social distancing at wave 1}
#'   \item{social_distancing_w2}{Did social distancing at wave 2}
#'   \item{social_distancing_w3}{Did social distancing at wave 3}
#'   \item{family_friends_covid19_w1}{Have any close relatives or friends who have been hospitalized or who have died due to COVID-19 at wave 1}
#'   \item{family_friends_covid19_w2}{Have any close relatives or friends who have been hospitalized or who have died due to COVID-19 at wave 2}
#'   \item{family_friends_covid19_w3}{Have any close relatives or friends who have been hospitalized or who have died due to COVID-19 at wave 3}
#'   \item{diagnostic_covid19_w1}{Have you ever been diagnosed with COVID-19 at wave 1}
#'   \item{diagnostic_covid19_w2}{Have you ever been diagnosed with COVID-19 at wave 2}
#'   \item{diagnostic_covid19_w3}{Have you ever been diagnosed with COVID-19 at wave 3}
#'   \item{sleep_quality_w1}{Sleep quality at wave 1}
#'   \item{sleep_quality_w2}{Sleep quality at wave 2}
#'   \item{sleep_quality_w3}{Sleep quality at wave 3}
#'   \item{suicidal_ideation_w1}{Suicidal ideation at wave 1}
#'   \item{suicidal_ideation_w2}{Suicidal ideation at wave 2}
#'   \item{suicidal_ideation_w3}{Suicidal ideation at wave 3}
#'   \item{phq_total_w1}{PHQ-9 total score at wave 1}
#'   \item{phq_total_w2}{PHQ-9 total score at wave 2}
#'   \item{phq_total_w3}{PHQ-9 total score at wave 3}
#'   \item{gad_total_w1}{GAD-7 total score at wave 1}
#'   \item{gad_total_w2}{GAD-7 total score at wave 2}
#'   \item{gad_total_w3}{GAD-7 total score at wave 3}
#' }
#' @name all_waves
#' @source COVID-19 cohort study from research group at Federal University of Rio Grande do Sul.
#' @examples head(all_waves)
"all_waves"
