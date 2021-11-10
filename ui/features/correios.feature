# language: pt
# encode: UTF-8

@correios
Funcionalidade: Realizar os consultas no site dos correios
  

@correios_01
Cenario:
  Dado que entrei no site dos correios
  Quando realizo a pesquisa de cep invalido retornando a pagina inicial apos a consulta
  E realizo a pesquisa de cep valido retornando a pagina inicial apos a consulta
  E consulto o codigo de rastreamento invalido
  Entao valido que o codigo não foi localizado
