## code to prepare `capitulos_redes` dataset goes here
library(magrittr)
capitulos_redes <- tibble::tibble(
  nome = as.character(),
  meetup = as.character(),
  instagram   = as.character(),
  twitter  = as.character(),
  youtube = as.character(),
  
  
  facebook  = as.character(),
  linkedin  = as.character(),
  github = as.character(),
  site  = as.character(),
  email = as.character()
  
) %>%
  
  tibble::add_row(
    nome = "Rio de Janeiro",
    meetup = "https://www.meetup.com/rladies-rio/",
    youtube = "https://www.youtube.com/channel/UCGwTYiK7vTePhPpDRgQAq_A/featured",
    twitter = "https://twitter.com/rladiesrio",
    instagram = "https://www.instagram.com/rladiesrio/",
    facebook = "http://facebook.com/rladiesrio"
  ) %>%
  
  tibble::add_row(
    nome = "Porto Alegre",
    meetup = "https://www.meetup.com/rladies-porto-alegre/",
    youtube = "https://www.youtube.com/channel/UCDCOvchmfUW7gFP5CrSIXrw",
    twitter = "https://twitter.com/RLadiesPOA",
    facebook = "https://www.facebook.com/RLadiesPortoAlegre/"
  ) %>%
  
  tibble::add_row(
    nome = "São Paulo",
    meetup = "https://www.meetup.com/rladies-sao-paulo/",
    youtube = "https://www.youtube.com/c/RLadiesS%C3%A3oPaulo/videos",
    twitter = "https://twitter.com/RLadiesSaoPaulo",
    instagram = "https://www.instagram.com/RLadiesSaoPaulo/",
    facebook = "http://facebook.com/RLadiesSaoPaulo",
    github = "https://github.com/rladies/meetup-presentations_sao-paulo",
    email = "saopaulo@rladies.org"
  ) %>%
  
  tibble::add_row(
    nome = "Belo Horizonte",
    meetup = "https://www.meetup.com/rladies-belo-horizonte/",
    youtube = "https://www.youtube.com/rladiesbelohorizonte",
    twitter = "https://twitter.com/RLadiesBH",
    instagram = "https://www.instagram.com/rladiesbh/",
    facebook = "https://www.facebook.com/rladiesbh",
    linkedin = "https://www.linkedin.com/company/rladiesbh/",
    site = "https://www.rladiesbh.com.br/"
  ) %>%
  
  tibble::add_row(nome = "Niterói",
                  meetup = "https://www.meetup.com/rladies-niteroi/",
                  instagram = "https://www.instagram.com/rladies.niteroi/?hl=pt-br") %>%
  
  tibble::add_row(nome = "Salvador",
                  meetup = "https://www.meetup.com/rladies-salvador/") %>%
  
  tibble::add_row(
    nome = "Florianópolis",
    meetup = "https://www.meetup.com/rladies-florianopolis/",
    twitter = "https://twitter.com/RLadiesFloripa",
    instagram = "https://www.instagram.com/rladies.floripa/"
  ) %>%
  
  tibble::add_row(nome = "Lavras",
                  meetup = "https://www.meetup.com/rladies-lavras/",
                  instagram = "https://www.instagram.com/rladieslavras/") %>%
  
  tibble::add_row(
    nome = "Goiânia",
    meetup = "https://www.meetup.com/rladies-goiania/",
    twitter = "https://twitter.com/rladiesgyn",
    instagram = "https://www.instagram.com/rladiesgyn",
    github = "https://github.com/R-LadiesGYN/README",
    linkedin = "https://www.linkedin.com/in/r-ladies-gyn-017898195/",
    site = "https://www.rladiesgyn.com/"
  ) %>%
  
  
  tibble::add_row(nome = "Recife",
                  meetup = "https://www.meetup.com/rladies-recife/",
                  instagram = "https://www.instagram.com/rladiesrecife") %>%
  
  tibble::add_row(
    nome = "Manaus",
    meetup = "https://www.meetup.com/R-Ladies-Manaus/",
    twitter = "https://twitter.com/r_manaus",
    instagram = "https://www.instagram.com/manausrladies",
    facebook = "https://www.facebook.com/rladiesmanaus"
  ) %>%
  
  tibble::add_row(
    nome = "Vitória",
    meetup = "https://www.meetup.com/rladies-vitoria/",
    twitter = "https://twitter.com/rladiesvix",
    instagram = "https://www.instagram.com/rladiesvix"
  ) %>%
  
  
  tibble::add_row(nome = "Ribeirão Preto",
                  meetup = "https://www.meetup.com/rladies-ribeirao-preto/",
                  twitter = "https://twitter.com/rladiesrp") %>%
  
  tibble::add_row(
    nome = "Natal",
    meetup = "https://www.meetup.com/rladies-natal/",
    twitter = "https://twitter.com/RLadiesNatal",
    instagram = "https://www.instagram.com/rladiesnatal/"
  ) %>%
  
  tibble::add_row(
    nome = "Fortaleza",
    meetup = "https://www.meetup.com/rladies-fortaleza/",
    twitter = "http://www.twitter.com/RLadiesFortal",
    instagram = "https://www.instagram.com/rladiesfortaleza"
  ) %>%
  
  tibble::add_row(
    nome = "Curitiba",
    meetup = "https://www.meetup.com/rladies-curitibaa/",
    linkedin = "https://www.linkedin.com/company/r-ladies-curitiba",
    instagram = "https://www.instagram.com/rladiescuritiba"
  ) %>%
  
  tibble::add_row(nome = "Teresina",
                  youtube = "https://www.youtube.com/channel/UCiEloyxyXZluv7p46DGCqQQ",
                  instagram = "https://www.instagram.com/rladiesthe") %>%
  
  tibble::add_row(nome = "São Mateus",
                  meetup = "https://www.meetup.com/rladies-sao-mateus/") %>%
  
  tibble::add_row(nome = "Brasília",
                  meetup = "https://www.meetup.com/rladies-brasilia/",
                  instagram = "https://www.instagram.com/rladiesbsb/")

usethis::use_data(capitulos_redes, overwrite = TRUE)

# purrr::map(capitulos_redes, ~sum(is.na(.)))

