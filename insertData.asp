<html>  
<head>  
<title>Registro de Dados no Banco de Dados</title>  
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>  
<body>  
<%@ Language=VBScript %>

<%
' Defina as credenciais de conexão com o banco de dados
Dim connectionString
connectionString = "DRIVER={}; SERVER=; PORT=; DATABASE=; USER=; PASSWORD=;"

' Tente estabelecer a conexão com o banco de dados
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open connectionString

' Receber os valores dos campos do formulário
Dim razaoSocial, cnpj, logradouro, numero, complemento, municipio, uf
razaoSocial = Request.Form("razaoSocialInput")
cnpj = Request.Form("cnpjInput")
logradouro = Request.Form("logradouroInput")
numero = Request.Form("numeroInput")
complemento = Request.Form("complementoInput")
municipio = Request.Form("municipioInput")
uf = Request.Form("ufInput")

' Montar a instrução SQL de inserção
Dim sql
sql = "INSERT INTO tb_companies (razao_social, cnpj, logradouro, numero, complemento, municipio, uf) " & _
      "VALUES ('" & razaoSocial & "', '" & cnpj & "', '" & logradouro & "', '" & numero & "', '" & complemento & "', '" & municipio & "', '" & uf & "')"

' Executar a consulta SQL de inserção
conn.Execute sql

' Verificar se houve erro na execução da consulta
If Err.Number = 0 Then
    Response.Write("<div class='alert alert-success' role='alert'>Dados cadastrados com sucesso.</div>")
Else
    Response.Write("<div class='alert alert-danger' role='alert'>Erro ao cadastrar os dados: " & Err.Description & "</div>")
End If

' Feche a conexão com o banco de dados
conn.Close
Set conn = Nothing

%>

<button class="btn btn-primary" onclick="window.location.href = 'http://localhost:5173'">Voltar</button>

</body>  
</html>
