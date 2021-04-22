# Atualizar lista de grupos existentes ------------
# Isso não precisa fazer sempre, demora um pouco...
# talvez uma vez a cada mês para saber se existem novos
# capítulos da R-Ladies no Brasil

devtools::load_all()

capitulos_br <- atualizar_dados_capitulos_br()

usethis::use_data(capitulos_br, overwrite = TRUE)


# capitulos_br <- RLadiesBrasil::capitulos_br
