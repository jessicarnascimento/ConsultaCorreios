class Metodos
  include Capybara::DSL

  ################################ WEB ################################
  def alerta_existe(texto)
    assert_selector(EL['alerta'], visible: true, text: texto)
  end

  def clica_pesquisar
    assert_selector(:xpath,EL['btn_pesquisa'], visible: true)
    find(:xpath,EL['btn_pesquisa']).click
  end

  def fecha_cookies
    find(EL['botao_cookies']).click
  end
  
  def foco_browser
    result = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(result)
  end

  def login_web
    visit(DATA[$ambiente]['site_web'])
    @original_window = page.driver.browser.window_handles
  end

  def preenche_cep(cep)
    assert_selector(EL['input_cep'], visible: true)
    find(EL['input_cep']).set(MASSA[cep])
    case cep
    when "cep_invalido"
      screenshot("PreencheCEPInvalido")
    when "cep_valido"
      screenshot("PreencheCEPValido")
    else
      raise "Não foi informado o CEP"
    end
    find(:xpath, EL['pesquisa_cep']).click
  end

  def preenche_rastreamento(texto)
    assert_selector(EL['input_rastreamento'], visible: true)
    find(EL['input_rastreamento']).set(texto)
    screenshot("PreencheRastremento")
    find(:xpath,EL['pesquisa_rastreamento']).click
  end

  def resultado_existe(texto)
    assert_selector(EL['msg_resultado'], visible: true, text: texto)
  end

  def resultado_logradouro(texto)
    assert_selector(:xpath,EL['logradouro'], visible: true, text: texto)
  end

  def resultado_localidade(texto)
    assert_selector(:xpath,EL['localidade'], visible: true, text: texto)
  end
  
  def titulo_existe(texto)
    assert_selector(EL['titulo'], visible: true, text: texto)
  end

  def troca_aba
    original_window = page.driver.browser.window_handles.first
    page.driver.browser.switch_to.window(original_window)
  end
  
  ################################ EVIDENCIAS ################################
  def encerra_filmagem
    sleep(2)
    # @@recorder.stop
  end

  def inicia_filmagem
    nome = ("#{@@tag}-#{@@scn}").gsub(/\s+/, "") #Utiliza o nome da tag e a descrição do cenario para nomear o arquivo de vídeo
    nome = nome.gsub(",Exemplos(#", "_")
    nome = nome.gsub(")", "")
    @@recorder = Metodos.new.screen_recorder(nome)
    # @@recorder.start
  end

  def screen_recorder (cenario)
    advanced = {
    input:    {
        framerate:  30,
        video_size: '1920x1080' #Coloque a resolução recomendada para seu pc. Linux: Configurações -> Monitores -> Resolução. Windows:Na área de trabalho clique com o botão direito e escolha 'Configurações de exibição'. Em “Configurações”, escolhendo a opção “Tela”, localize o link para “Configurações de vídeo avançadas” e clique sobre ele. Agora, basta em ir “Resolução”.
    },
    output:   {
        r:       15, # Framerate
    },
    log:      'recorder.log',
    loglevel: 'level+debug', # For FFmpeg
    }
    ScreenRecorder::Desktop.new(output: "data/video/#{cenario}.mp4", advanced: advanced)
  end

  def screenshot(nome)
    sleep 2
		save_screenshot("data/screenshots/evidencias/#{nome}.png")  
  end

end