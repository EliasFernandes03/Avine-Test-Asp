<%@ Language=VBScript %>
<html>  
<head>  
<title>Registro de Dados no Banco de Dados</title>  
</head>  
<body>  

<%
' Defina as credenciais de conexão com o banco de dados
Dim connectionString
connectionString = "DRIVER={MySQL ODBC 8.3 ANSI Driver}; SERVER=localhost; PORT=3306; DATABASE=db_companies; USER=root; PASSWORD=1234;"

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
    Response.Write("Dados cadastrados com sucesso.")
Else
    Response.Write("Erro ao cadastrar os dados: " & Err.Description)
End If

' Feche a conexão com o banco de dados
conn.Close
Set conn = Nothing
%>

</body>  
</html>
