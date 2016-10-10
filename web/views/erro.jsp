<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro</title>
    </head>
    <body>
        <h1>Mensagem: <% out.print(request.getAttribute("mensagem"));%></h1>
        <h2><a href="index.html">Voltar</a></h2>
    </body>
</html>
