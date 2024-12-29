library(readr)

data1 <- readr::read_csv("新北市歷年家暴案量統計_export.csv")

glimpse(新北市歷年家暴案量統計_export)

library(dplyr)

# Assume data1 already exists with a column named 'year'
data1 <- data1 |>
  mutate(
    western_year = year + 1911 # Add 1911 to convert
  )

data1

library(dplyr)

# Assume data1 exists and contains a column named 'type'
data1 <- data1 |>
  mutate(
    type = case_when(
      type == "兒少保護" ~ "Child and youth protection",
      type == "婚姻暴力" ~ "Marital violence",
      type == "老人保護" ~ "Elderly protection",
      type == "其他家虐" ~ "Other domestic abuse",
      type == "家庭暴力案量總計" ~ "Total number of domestic violence cases",
      TRUE ~ type # Keep other values unchanged
    )
  )

data1

