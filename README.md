## Introdução
 - Repositório de auxílio com arquivos ASP clássico para efetuar o cadastro no banco de dados


## Como usar
- Clone o projeto para a sua maquina `git clone https://github.com/EliasFernandes03/Avine-Test-Asp.git`
- Se faz necessário alguns passos para a utilização desse projeto, o primeiro passo é que o formulário do react esteja rodando, portanto vá até a rota `https://github.com/EliasFernandes03/Avine-test` e siga os passos para subir a aplicação.

 - Depois se faz necessário dos seguintes passos :
     Configurar IIS e dar as devidas permissões. 
     Se faz necessario o uso da biblioteca Connector/ODBC.
     Configurar odbc para o mariadb.
     Ir no arquivo `insertData.asp` e preencher os dados das credenciais da connectionString com os do seu banco e o seu driver.

- Aqui está um exemplo de como poderia ser essa string:
    `connectionString = "DRIVER={MySQL ODBC 8.3 ANSI Driver}; SERVER=localhost; PORT=3306; DATABASE=db_companies; USER=root; PASSWORD=9999;"`
- Como o driver é o Mysql, verifique qual o que você está usando para a correta conexão com o banco, o mesmo vale para as outras credenciais.

## Considerações

- A idéia era isolar esses arquivos de credenciais em um .env com as credenciais de banco, porém a solução encontrada era bastante custosa e deixaria o código não tão legível.
