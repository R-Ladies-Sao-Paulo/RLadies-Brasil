library(magrittr)

u <- "https://r-community.github.io/event-explorer/data/rugs_events.json"

df <- jsonlite::fromJSON(u)


eventos_recentes_brasil <- df %>% 
  dplyr::filter(stringr::str_detect(title, "Brazil"))

usethis::use_data(eventos_recentes_brasil, overwrite = TRUE)
