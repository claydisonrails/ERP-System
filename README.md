Dashboard de Relatórios de Clientes
  Este projeto é uma aplicação web construída com Ruby on Rails. Ele inclui funcionalidades de login de usuário usando o Devise, cadastro de clientes, geração de relatórios e              visualização de gráficos interativos para exibir dados de clientes cadastrados no banco de dados.

Funcionalidades
  Login de usuário: Usando a gem Devise para autenticação.
  Cadastro de clientes: Formulários para cadastrar, editar e listar clientes.
  Relatórios: Exibe relatórios gráficos e numéricos de clientes cadastrados.
  Dashboard interativo: Exibe gráficos sobre os clientes cadastrados mensalmente.
  
Tecnologias Utilizadas
  Ruby on Rails: Framework principal para o back-end.
  Devise: Gem utilizada para autenticação de usuários.
  PostgreSQL: Banco de dados utilizado para armazenar informações.
  Chart.js: Biblioteca JavaScript para criar gráficos interativos.
  CSS: Para estilização do layout e design do dashboard.
  
Pré-requisitos
  Ruby 3.2.x ou superior
  Rails 7.x ou superior
  PostgreSQL
  Node.js e Yarn (para a parte de assets e JavaScript)
  
Instalação
  Siga os passos abaixo para configurar e rodar o projeto localmente:

1. Clone o Repositório
  bash
  Copiar código
  git clone (https://github.com/claydisonrails/ERP-System)
  cd nome-do-repositorio
2. Instale as Dependências
  Execute o comando abaixo para instalar as dependências Ruby:
    bundle install
  Instale as dependências JavaScript com o Yarn:
    yarn install
3. Configure o Banco de Dados
  Crie o banco de dados e execute as migrações:
    rails db:create
    rails db:migrate
4. Configure o Devise
  Para configurar o Devise, rode o seguinte comando para criar os arquivos de configuração:
    rails generate devise:install
5. Criando o Modelo de Usuário
    Depois de configurar o Devise, gere o modelo de usuário:
      rails generate devise User
      rails db:migrate
6. Acesse o Projeto
  Inicie o servidor Rails:
   rails server
  Agora você pode acessar o projeto em http://localhost:3000.

Estrutura do Projeto
  Aqui está a estrutura do seu projeto para referência:
app/
  assets/
    stylesheets/
      application.css        # Arquivo principal de CSS
      dashboard.css          # Estilos específicos para o dashboard
  controllers/
    relatorios_controller.rb # Controlador para os relatórios
  views/
    relatorios/
      clientes_dashboard.html.erb # View do dashboard
  models/
    cliente.rb               # Modelo de Cliente
config/
  routes.rb                 # Configurações de rotas
db/
  migrate/
    2023xxxxxx_create_clients.rb # Migração para a tabela clientes
Gemfile                      # Gemas do projeto
Gemfile.lock                 # Versões exatas das gemas
Funcionalidade de Relatório de Clientes
Dashboard
O Dashboard de Relatórios de Clientes exibe um gráfico de barras interativo, mostrando quantos clientes foram cadastrados nos últimos 12 meses. Além disso, exibe o total de clientes cadastrados no mês atual.

Como Funciona
  O gráfico de barras é gerado utilizando a biblioteca Chart.js.
  O número total de clientes cadastrados no mês atual é obtido através de uma query no banco de dados.
  O gráfico exibe a quantidade de clientes cadastrados por mês, com base nos dados armazenados na tabela clientes.
Customizações
  Estilos de CSS: O CSS pode ser modificado no arquivo app/assets/stylesheets/dashboard.css para customizar o layout do dashboard.
  Gráficos: O gráfico de barras pode ser customizado ou alterado para outros tipos, como gráficos de linha ou pizza, alterando as opções do Chart.js.
Contribuindo
  Se você quiser contribuir para o projeto, fique à vontade para abrir uma issue ou enviar um pull request.
    Fork o repositório.
    Crie uma branch para suas alterações (git checkout -b minha-feature).
    Commit suas mudanças (git commit -am 'Adiciona nova feature').
    Push para a branch (git push origin minha-feature).
    Abra um pull request.
Licença
Este projeto está licenciado sob a Licença MIT.
