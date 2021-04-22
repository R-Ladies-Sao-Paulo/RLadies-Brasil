#' Title
#'
#' @return
#' @export
#'
#' @examples
atualizar_dados_capitulos_br <- function() {
  library(magrittr, include.only = "%>%")
  
  groups <-
    meetupr::find_groups(text = "r-ladies") #topic_id = 1513883
  
  
  capitulos_br <- groups %>%
    dplyr::filter(country == "Brazil") %>%
    dplyr::distinct()
  
  capitulos_br
}



#' Title
#'
#' @return
#' @export
#'
#' @examples
atualizar_eventos_recentes <- function(){
  library(magrittr, include.only = "%>%")
  
  u <- "https://r-community.github.io/event-explorer/data/rugs_events.json"
  
  df <- jsonlite::fromJSON(u)
  
  
  eventos_recentes_brasil <- df %>% 
    dplyr::filter(stringr::str_detect(title, "Brazil"))
  
  eventos_recentes_brasil
}

