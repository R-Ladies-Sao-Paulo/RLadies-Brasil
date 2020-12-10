# remotes::install_github("rladies/meetupr")
library(magrittr)

# Grupos existentes ------------
# Isso não precisa fazer sempre, demora um pouco...
# talvez uma vez a cada mês para saber se existem novos grupos da R-Ladies no Brasil

# groups <- meetupr::find_groups(text = "r-ladies") #topic_id = 1513883
# 
# groups_br <- groups %>% dplyr::filter(country == "BR") %>%
                # dplyr::distinct()
# 
# readr::write_rds(groups_br, "data/groups_br.Rds")


# Buscar informações sobre os grupos brasileiros

groups_br <- readr::read_rds("data/groups_br.Rds")

urlname <- groups_br %>% dplyr::pull(urlname)

maybe_get_events <- purrr::possibly(meetupr::get_events, otherwise = "Erro")

events <- purrr::map(.x = urlname, 
                          .f = maybe_get_events, 
                          event_status = c("past", "upcoming"))

events_br <- events %>%
  purrr::discard(is.vector) %>%
  dplyr::bind_rows() %>% 
  dplyr::arrange(desc(local_date)) %>% 
  tidyr::unnest_wider(resource, names_repair = "unique") %>% 
  tidyr::unnest_wider(group, names_repair = "unique") %>% 
  janitor::clean_names() %>% 
  dplyr::select(name_2, status_4, local_date_6, local_time_7, link_20, name_37 ) %>% 
  dplyr::mutate(name_2 = stringr::str_replace_all(name_2, "\\|", "-"))

#dplyr::glimpse(events_br)

readr::write_rds(events_br, "data/events_br.Rds")
