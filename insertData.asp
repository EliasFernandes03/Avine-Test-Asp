<head>
    <title>Registro de Dados no Banco de Dados</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <%@ Language=VBScript %>
    
    <%
    Dim connectionString
    connectionString = "DRIVER={}; SERVER=localhost; PORT=; DATABASE=; USER=; PASSWORD=;"
    
    Dim conn
    Set conn = Server.CreateObject("ADODB.Connection")
    conn.Open connectionString
    
    Dim razaoSocial, cnpj, logradouro, numero, complemento, municipio, uf
    razaoSocial = Request.Form("razaoSocialInput")
    cnpj = Request.Form("cnpjInput")
    logradouro = Request.Form("logradouroInput")
    numero = Request.Form("numeroInput")
    complemento = Request.Form("complementoInput")
    municipio = Request.Form("municipioInput")
    uf = Request.Form("ufInput")
    
    Dim sql
    sql = "INSERT INTO tb_companies (razao_social, cnpj, logradouro, numero, complemento, municipio, uf) " & _
          "VALUES ('" & razaoSocial & "', '" & cnpj & "', '" & logradouro & "', '" & numero & "', '" & complemento & "', '" & municipio & "', '" & uf & "')"
    
    conn.Execute sql
    
    If Err.Number = 0 Then
        Response.Write("<div class='alert alert-success' role='alert'>Dados cadastrados com sucesso.</div>")
    Else
        Response.Write("<div class='alert alert-danger' role='alert'>Erro ao cadastrar os dados: " & Err.Description & "</div>")
    End If
    
    conn.Close
    Set conn = Nothing
    
    %>
    
    <button class="btn btn-primary" onclick="window.location.href = 'http://localhost:5173'">Voltar</button>
    
    </body>
    