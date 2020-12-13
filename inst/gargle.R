(pw_name <- gargle:::secret_pw_name("RLadiesBrasil"))

(pw <- gargle:::secret_pw_gen())

gargle:::secret_write(
  package = "RLadiesBrasil",
  name = "meetup_token_gargle.rds.enc",
  input = ".meetup_token.rds"
)

#readr::read_rds(".meetup_token.rds")
