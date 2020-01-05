#' Download BC Aquaculture license holders data
#'
#' This function enables download of BC Aquaculture
#' license holders from Fisheries and Oceans Canada.
#' Source metadata: https://open.canada.ca/data/en/dataset/522d1b67-30d8-4a34-9b62-5da99b1035e6#wb-auto-4
#' @keywords aquaculture
#' @export
#' @importFrom utils read.csv
aquaculture_licenses <- function() {
  fish_stocking_url <- 'https://www.pac.dfo-mpo.gc.ca/od-ds/aquaculture/license-permis-stock-empoissonnement-rpt-pac-dfo-mpo-aquaculture-eng.csv'
  freshwater_url <- 'https://open.canada.ca/data/dataset/522d1b67-30d8-4a34-9b62-5da99b1035e6/resource/3d4c6597-a020-40cf-ae25-c3ad54fea80e/download/license-permis-fresh-douce-rpt-pac-dfo-mpo-aquaculture-eng.csv'
  marine_finfish_url <- 'https://open.canada.ca/data/dataset/522d1b67-30d8-4a34-9b62-5da99b1035e6/resource/dce02854-cf80-4ef3-be97-ce69aa72cfb9/download/license-permis-mer-mar-rpt-pac-dfo-mpo-aquaculture-eng.csv'
  fish_stocking_license_holders <- read.csv(fish_stocking_url, stringsAsFactors = FALSE)
  freshwater_license_holders <- read.csv(freshwater_url, stringsAsFactors = FALSE)
  marine_finfish_license_holders <- read.csv(marine_finfish_url, stringsAsFactors = FALSE)
  return(list(
    "fish_stocking_license_holders" = fish_stocking_license_holders,
    "freshwater_license_holders" = freshwater_license_holders,
    "marine_finfish_license_holders" = marine_finfish_license_holders
  ))
}

