devtools::load_all()

eventos_recentes_brasil <- atualizar_eventos_recentes()


usethis::use_data(eventos_recentes_brasil, overwrite = TRUE)
