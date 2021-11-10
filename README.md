# Teste Automatizado - ConsultaCorreios
Testes automatizados se fundamentam no uso de ferramentas/scripts para controlar a execução de testes de software, comparando os resultados esperados com os resultados reais.

A automação permite que o teste seja repetido várias vezes, sendo mais fácil encontrar novos erros através da repetição e da simulação de cenários específicos. O objetivo final dos testes automatizados é minimizar os problemas da abordagem manual, o tempo despendido e, consequentemente, o custo final.

## Desafio proposto no teste técnico

Utilizando as ferramentas que preferir crie um teste automatizado que faça o fluxo de ponta a ponta de um cliente que:

  1. Entre no site dos correios;
  2. Procure pelo CEP 80700000;
  3. Confirmar que o CEP não existe;
  4. Voltar a tela inicial;
  5. Procure pelo CEP CEP 01013-001
  6. Confirmar que o resultado seja em “Rua Quinze de Novembro, São Paulo/SP”
  7. Voltar a tela inicial;
  8. Procurar no rastreamento de código o número “SS987654321BR”
  9. Confirmar que o código não está correto;
  10. Fechar o browser;
 
### 🛠️ Ferramentas Utilizadas

Visual Studio Code 1.54 
<br>Ruby 2.6.3
<br>Gems (Disponíveis em:  "https://rubygems.org")

### 🛠️ Bibliotecas do projeto e versões

gem 'capybara', '3.35.3'
<br>gem 'cucumber', '3.1.2'
<br>gem 'pry', '0.11.3'
<br>gem 'rails'
<br>gem 'rspec', '3.6.0'
<br>gem 'rubytree', '1.0.0'
<br>gem 'screen-recorder'
<br>gem 'rufo', '0.12.0'
<br>gem 'selenium-webdriver', '3.142.7'

A ferramenta Cucumber foi utilizada para executar o teste em formato BDD, escrito na liguagem Gherkin. 

WebDrivers: Incluir a localização em sue ambiente Path (versão compatível com o seu navegador):
```
Para Google Chrome -------  https://chromedriver.chromium.org/downloads
Para Mozilla Firefox -----  https://github.com/mozilla/geckodriver/releases
```
### 📑 Linguagem Utilizada

Ruby

### 🏗️ Preparando o Ambiente

Clone o projeto do GitHub em um diretório:

  ```
  cd "seu diretorio"
  git clone https://github.com/jessicarnascimento/testeNovoMundo.git
  ```
Estando na pasta 'testeNovoMundo', crie o arquivo 'Gemfile' com o comando:

  ```
  bundle init
  ```   

Acesse o arquivo 'Gemfile' pelo 'Visual Studio Code', modifique-o da seguinte maneira:

  ```
  source 'https://rubygems.org'

  gem 'capybara', '3.35.3'
  gem 'cucumber', '3.1.2'
  gem 'pry', '0.11.3'
  gem 'rails'
  gem 'rspec', '3.6.0'
  gem 'rubytree', '1.0.0'
  gem 'screen-recorder'
  gem 'selenium-webdriver', '3.142.7'
  ```
    
Então, execute no 'Terminal' o comando abaixo, que instalará as gems:

  ```
  bundle install
  ``` 

Para iniciar o cucumber, execute o comando:

  ```
  cucumber --init
  ``` 
  

### 💻 Executando os testes

Utilize o seguinte comando para executar todos os cenários de teste: 

  ```
  cucumber
  ```
Visualização no console:
</br> <img src="https://github.com/jessicarnascimento/ConsultaCorreios/blob/main/ImagensREADME/StatusCenario.png" />
  
Visualização no browser:
</br><img src="https://github.com/jessicarnascimento/ConsultaCorreios/blob/main/ImagensREADME/correios_01-.gif" />

  
### 🔩 Cenários de Testes

```
Busca pelo cep_invalido, cep_valido e código de rastreamento
```

## 👩‍💻 Autora

<a href="https://www.linkedin.com/in/jessicaribeironascimento/">
 <img style="border-radius: 50%;" width="100" src="https://media-exp1.licdn.com/dms/image/C4E03AQEBWiQHcWVWyg/profile-displayphoto-shrink_400_400/0/1611876863219?e=1642032000&v=beta&t=z3t2Xt8G5Rb2Fi6-wTs_0dTHQUZFQQTXiKaKYFGcq4E"height="100" id="ember408" class="profile-photo-edit__preview ember-view">
  
 <sub><b>Jéssica Ribeiro do Nascimento</b></sub></a>

[![Linkedin Badge](https://img.shields.io/badge/-Jessica_Ribeiro_do_Nascimento-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/jessicaribeironascimento/)](https://www.linkedin.com/in/jessicaribeironascimento/) 
[![Gmail Badge](https://img.shields.io/badge/-jessicarn2210@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:jessicarn2210@gmail.com)](mailto:jessicaribeiro2210@gmail.com)