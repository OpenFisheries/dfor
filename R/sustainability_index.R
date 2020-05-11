#' Download BC Aquaculture license holders data
#'
#' This function enables download of the Sustainability
#' survey for Fisheries from Fisheries and Oceans Canada.
#' Source metadata: https://open.canada.ca/data/en/dataset/49f25051-3946-426e-a589-b7063f75bbd5
#' @keywords fisheries sustainability
#' @export
#' @importFrom utils read.csv
sustainability_index <- function() {
  urls <- list(
    "year_2017" = 'http://isdm.gc.ca/opendata/sustainability-survey/2017_-_Sustainability_Survey_for_Fisheries_-_EN.csv',
    "year_2018" = 'https://open.canada.ca/data/dataset/49f25051-3946-426e-a589-b7063f75bbd5/resource/336a02e0-d8ac-4b01-9076-388be7fb2d72/download/2018_survey_data_en.csv'
  )
  data <- read.csv(urls$year_2018, stringsAsFactors = FALSE)
}

