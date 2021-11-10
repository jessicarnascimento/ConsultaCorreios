Dado("que entrei no site dos correios") do
  Metodos.new.login_web
	Metodos.new.inicia_filmagem
	Metodos.new.screenshot("InicioSiteCorreios")
end

Quando("realizo a pesquisa de cep invalido retornando a pagina inicial apos a consulta") do
	Metodos.new.fecha_cookies
  Metodos.new.titulo_existe("Busca CEP ou Endereço")
	Metodos.new.preenche_cep("cep_invalido")
	Metodos.new.foco_browser
	Metodos.new.resultado_existe("Não há dados a serem exibidos")
	Metodos.new.screenshot("PaginaBuscaCEP_cep_invalido")
	Metodos.new.troca_aba
end

Quando("realizo a pesquisa de cep valido retornando a pagina inicial apos a consulta") do
  Metodos.new.titulo_existe("Busca CEP ou Endereço")
	Metodos.new.preenche_cep("cep_valido")
	Metodos.new.foco_browser
	Metodos.new.resultado_existe("Resultado da Busca por Endereço ou CEP")
	Metodos.new.resultado_logradouro("Rua Quinze de Novembro")
	Metodos.new.resultado_localidade("São Paulo/SP")
	Metodos.new.screenshot("PaginaBuscaCEP_cep_valido")
	Metodos.new.troca_aba
end

Quando("consulto o codigo de rastreamento invalido") do
  Metodos.new.titulo_existe("Acompanhe seu objeto")
	Metodos.new.preenche_rastreamento(MASSA['codigo_invalido'])
end

Entao("valido que o codigo não foi localizado") do
	Metodos.new.foco_browser
	sleep 10 #Pausa na automação para inserir manualmente o captcha
	Metodos.new.alerta_existe("Objeto não encontrado na base de dados dos Correios.")
	Metodos.new.screenshot("PaginaBuscaRastreamento")
  Metodos.new.encerra_filmagem
end