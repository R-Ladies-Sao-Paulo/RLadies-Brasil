library(cyphr)

# opções ------------------------------------------------------------------

# algumas funções só precisam ser rodadas localmente
# para renovar o token. se estiver rodando fora
# do actions, aqui fica automaticamente como TRUE
local <- interactive()

# se não precisar criptografar o token
# novamente, deixar aqui como FALSE
crypto <- FALSE

# se quiser resetar a senha do token,
# colocar aqui como TRUE. se uma senha
# já estiver carregada no Renv, deixar FALSE
reset_pwd <- FALSE


# criptografa o token -----------------------------------------------------

# caminho do token para criptografar / criptografado
crypt_path <- 'inst/secret/meetup_token_cyphr.rds'

if (crypto) {
  # cria um diretório temporário para
  # armazenar o token sem criptografia
  token_path <- tempfile(fileext = '.rds')
  
  # renovar token no meetup (rodar apenas localmente)
  meetupr::meetup_auth(
    token = NULL,
    cache = TRUE,
    set_renv = FALSE,
    token_path = token_path
  )
  
  if (reset_pwd) {
    # gerando uma senha aleatória
    sodium_key <- sodium::keygen()
    Sys.setenv('MEETUPR_PWD' = sodium::bin2hex(sodium_key))
  }
  
  # se quiser copiar a senha, rodar (apenas localmente)
  if (local) {
    Sys.getenv('MEETUPR_PWD')
  }
  
  # criptografando a senha e passando para o cyphr
  key <- cyphr::key_sodium(sodium::hex2bin(Sys.getenv('MEETUPR_PWD')))
  
  # criptografando o arquivo .rds com o token
  cyphr::encrypt_file(token_path,
                      key = key,
                      dest = crypt_path)
  
}

# autentica no meetup -----------------------------------------------------

# se já não estiver carregada, puxa a chave da criptografia
key <- cyphr::key_sodium(sodium::hex2bin(Sys.getenv('MEETUPR_PWD')))

# desencripta temporariamente para usar na autenticação
temp_token <- tempfile(fileext = '.rds')

cyphr::decrypt_file(crypt_path,
                    key = key,
                    dest = temp_token)

# autentica usando o arquivo temporário
meetupr::meetup_auth(token = temp_token)