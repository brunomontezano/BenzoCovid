# retrieve paths to datafiles
w1_file <- system.file(
    "extdata",
    "wave_1.sav",
    package = "BenzoCovid"
)

w2_file <- system.file(
    "extdata",
    "wave_2.sav",
    package = "BenzoCovid"
)

w3_file <- system.file(
    "extdata",
    "wave_3.sav",
    package = "BenzoCovid"
)

w1 <- haven::read_sav(w1_file)
w2 <- haven::read_sav(w2_file)
w3 <- haven::read_sav(w3_file)

all_waves <- w1 |>
    dplyr::inner_join(w2, by = "email", suffix = c("_w1", "_w2")) |>
    dplyr::inner_join(w3, by = "email", suffix = c("_w1", "_w3")) |>
    janitor::clean_names() |>
    dplyr::mutate(
        dplyr::across(dplyr::matches("^(phq|gad).*o3$"), \(x) x - 1),
        phq_total_w3 = rowSums(dplyr::across(dplyr::matches("^phq.*o3$"))),
        gad_total_w3 = rowSums(dplyr::across(dplyr::matches("^gad.*o3$")))
    ) |>
    haven::as_factor() |>
    dplyr::select(
        age = idade,
        sex = gender_birth,
        color,
        education,
        state,
        region = regiao,
        sexual_orientation,
        heterosexual = heterossexual,
        household_income,
        contact_covid19,
        risk_group_covid19,
        number_people_house,
        benzofreq_w1 = benzodiazepine_frequency,
        benzofreq_w2 = benzodiazepine_frequency_o2,
        benzofreq_w3 = benzodiazepine_frequency_o3,
        family_relationship_w1 = family_relationship,
        family_relationship_w2 = family_relationship_o2,
        family_relationship_w3 = family_relationship_o3,
        friend_relationship_w1 = friend_relationship,
        friend_relationship_w2 = friend_relationship_o2,
        friend_relationship_w3 = friend_relationship_o3,
        loving_relationship_w1 = loving_relationship,
        loving_relationship_w2 = loving_relationship_o2,
        loving_relationship_w3 = loving_relationship_o3,
        social_distancing_w1 = social_distancing,
        social_distancing_w2 = social_distancing_o2,
        social_distancing_w3 = social_distancing_o3,
        family_friends_covid19_w1 = family_friends_covid19,
        family_friends_covid19_w2 = family_friends_covid19o2,
        family_friends_covid19_w3 = family_friends_covid19o3,
        diagnostic_covid19_w1 = diagnostic_covid19,
        diagnostic_covid19_w2 = diagnostic_covid19o2,
        diagnostic_covid19_w3 = diagnostic_covid19o3,
        sleep_quality_w1 = sleep_quality,
        sleep_quality_w2 = sleep_quality_o2,
        sleep_quality_w3 = sleep_quality_o3,
        suicidal_ideation_w1 = suicidal_ideation,
        suicidal_ideation_w2 = suicidal_ideation_o2,
        suicidal_ideation_w3 = suicidal_ideation_o3,
        phq_total_w1 = phq_total,
        phq_total_w2 = phq_total_o2,
        phq_total_w3,
        gad_total_w1 = gad_total,
        gad_total_w2 = gad_total_o2,
        gad_total_w3
    )

usethis::use_data(all_waves, overwrite = TRUE)
