# **CSI606-2022-01 - Presencial - Proposta de Trabalho Final**

## *Aluno: Israel Chad Vader*

--------------

<!-- Este documento tem como objetivo apresentar o projeto desenvolvido, considerando o que foi definido na proposta e o produto final. -->

### Resumo

  A finalidade dessa aplicação é servir como um sistema web para a gestão de impressoras e toners, com uma interface de usuário intuitiva e moderna. As principais funcionalidades compreendem a possibilidade de executar operações CRUD sobre todos os componentes fundamentais da aplicação.

  **Restrições:** neste trabalho serão desconsiderados certos relacionamentos entre tabelas de Banco de Dados por questões de tempo e propósito. Também optou-se por não fazer uso de Softwares ORM e escrever os comandos SQL na mão e na raça. Javascript PURO no Frontend, sem uso de Frameworks.

  **Ferramentas utilizadas:**
  - Servidor com Node, Express e PostgreSQL.
  - Frontend com Javascript.
  - Procurou-se aplicar conceitos da arquitetura MVC no Frontend da aplicação.

### 1. Funcionalidades implementadas
  - CRUD Impressora
  - CRUD Toner
  - CRUD Departamento
  - CRUD Proprietário
  
### 2. Funcionalidades previstas e não implementadas
<!-- Descrever as funcionalidades que eram previstas e não foram implementas, apresentando uma breve justificativa do porquê elas não foram incluídas -->
  - Incorporar um comportamento semelhante ao de um SPA, eliminando os contantes reloads nas páginas sem uso de frameworks.
  - Componentização.

### 3. Outras funcionalidades implementadas
<!-- Descrever as funcionalidades implementas além daquelas que foram previstas, caso se aplique.  -->
  Nada a declarar.

### 4. Principais desafios e dificuldades
<!-- Descrever os principais desafios encontrados no desenvolvimento do trabalho, quais foram as dificuldades e como elas foram superadas e resolvidas. -->
  Principal dificuldade: não utilizar o Prisma. Principal acerto: utilizar Javascript puro.

### 5. Instruções para instalação e execução
  1. Baixe os arquivos
  2. Inicie um servidor de Banco de Dados PostgreSQL e rode o arquivo `script.sql`
  3. Modifique a variável DATABASE_URL no arquivo `/api/.env` com os dados de acesso do seu servidor de Banco de Dados.
  4. Instale as dependências da API com o comando `npm install`
  5. Inicie a API com o comando `npm run dev`
  6. Inicie um servidor HTTP (ex: Live Server) e nele abra o arquivo `/frontend/view/index.html`
  7. Em caso de dúvidas, problemas ou sugestões fale com o autor!

### 6. Referências
<!-- Referências podem ser incluídas, caso necessário. Utilize o padrão ABNT. -->
  Nada a declarar.
