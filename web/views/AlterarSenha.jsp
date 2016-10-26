<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Login</title>

<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="plugins/iCheck/square/blue.css">

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <b>Projeto</b>
        </div><!-- /.login-logo -->
        <div class="login-box-body">
            <p class="login-box-msg">Altera a senha :</p>

            <c:forEach var="apartamento" items="${listaApto}">
                <td> Apto: ${apartamento.apto}</td>

                <form action="Controle" method="POST">
                    <input type="hidden" name="ap" value="${apartamento.apto}"/>
                    <p></p>

                    <div class="form-group has-feedback">

                        <input type="password" class="form-control" name="novaSenha" placeholder="Nova Senha">
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" name="confSenha" placeholder="Confirma Senha">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>

                    <div class="row">
                        <div class="col-xs-4">
                            <input type="hidden" name="flag" value="editSenha">
                            <input  type="submit" class="btn btn-primary btn-block btn-flat" value="Trocar senha">
                        </div><!-- /.col -->

                    </div>
                </form>

            </c:forEach>



        </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="plugins/iCheck/icheck.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
</body>
