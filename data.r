library(dplyr)
library(ggplot2)
library(readr)
library(curatedMetagenomicData)
library(DT)


curatedMetagenomicData("DavidLA_2015")
sampleMetadata |>
    dplyr::filter(study_name == "DavidLA_2015") |>
    dplyr::select(where(~ !any(is.na(.x)))) |>
    dplyr::slice(1:10) |>
    dplyr::select(1:10) |>
    datatable(options = list(dom = "t"), extensions = "Responsive")

meta <- sampleMetadata

dim(meta)

# Download only relative abundance files

