# Atualizar lista de grupos existentes ------------
# Isso não precisa fazer sempre, demora um pouco...
# talvez uma vez a cada mês para saber se existem novos
# capítulos da R-Ladies no Brasil

`%>%` <- magrittr::`%>%`

groups <- meetupr::find_groups(text = "r-ladies") #topic_id = 1513883

capitulos_br <- groups %>%
  dplyr::filter(country == "BR") %>%
  dplyr::distinct()

usethis::use_data(capitulos_br, overwrite = TRUE)
