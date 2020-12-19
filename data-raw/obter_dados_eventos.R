# autentica no meetup -----------------------------------------------------
source('data-raw/autenticar_meetup.R')

# Buscar informações sobre os capítulos no Brasil -----------
`%>%` <- magrittr::`%>%`

urlname <- RLadiesBrasil::capitulos_br %>% dplyr::pull(urlname)

maybe_get_events <-
  purrr::possibly(meetupr::get_events, otherwise = "Erro")

events <- purrr::map(
  .x = urlname,
  .f = maybe_get_events,
  event_status = c("past", "upcoming"))

eventos_br <- events %>%
  purrr::discard(is.vector) %>%
  dplyr::bind_rows() %>%
  dplyr::arrange(desc(local_date)) %>%
  tidyr::unnest_wider(resource, names_repair = "unique") %>%
  tidyr::unnest_wider(group, names_repair = "unique") %>%
  janitor::clean_names() %>%
  dplyr::select(name_2, status_4, local_date_6, local_time_7, link_20, name_37) %>%
  dplyr::mutate(name_2 = stringr::str_replace_all(name_2, "\\|", "-"))



usethis::use_data(eventos_br, overwrite = TRUE)
