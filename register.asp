<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Registro</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Formulário de Registro</h1>
        <form action="insertData.asp" method="post">
            <div class="container mt-5">
                <h2>Dados do CNPJ</h2>
                <div class="form-group">
                    <label for="razaoSocialInput">Razão Social:</label>
                    <input type="text" class="form-control" id="razaoSocialInput" name="razaoSocialInput" value="<%= Request.QueryString("razaoSocial") %>" >
                </div>
                <div class="form-group">
                    <label for="cnpjInput">CNPJ:</label>
                    <input type="text" class="form-control" id="cnpjInput" name="cnpjInput" value="<%= Request.QueryString("cnpj") %>" >
                </div>
                <div class="form-group">
                    <label for="logradouroInput">Logradouro:</label>
                    <input type="text" class="form-control" id="logradouroInput" name="logradouroInput" value="<%= Request.QueryString("logradouro") %>" >
                </div>
                <div class="form-group">
                    <label for="numeroInput">Número:</label>
                    <input type="text" class="form-control" id="numeroInput" name="numeroInput" value="<%= Request.QueryString("numero") %>" >
                </div>
                <div class="form-group">
                    <label for="complementoInput">Complemento:</label>
                    <input type="text" class="form-control" id="complementoInput" name="complementoInput" value="<%= Request.QueryString("complemento") %>" >
                </div>
                <div class="form-group">
                    <label for="municipioInput">Município:</label>
                    <input type="text" class="form-control" id="municipioInput" name="municipioInput" value="<%= Request.QueryString("municipio") %>" >
                </div>
                <div class="form-group">
                    <label for="ufInput">UF:</label>
                    <input type="text" class="form-control" id="ufInput" name="ufInput" value="<%= Request.QueryString("uf") %>" >
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
    </div>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
