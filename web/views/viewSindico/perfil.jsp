<%@page import="controlers.LoginServ"%>
<%@page import="controlers.LogoutServ" %>
<%@page import="models.UsuarioDao" %>
<%@page import="beans.Usuario" %>

<!DOCTYPE html>
<html>
    <head>
        <%
            String contextPath = request.getContextPath();
        %>
        <%
            String nome = "N/A";
            String email = "N/A";
            nome = session.getAttribute("nome").toString();
            email = session.getAttribute("email").toString();
        %>
        <%
            Usuario userSindico = new UsuarioDao().pesquisarUsuario(nome, email);
        %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Perfil</title>    
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">    
        <link rel="stylesheet" href="<%=contextPath%>/bootstrap/css/bootstrap.min.css">    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="<%=contextPath%>/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="<%=contextPath%>/dist/css/skins/skin-blue.min.css">
        <script src="<%=contextPath%>/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="<%=contextPath%>/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=contextPath%>/dist/js/app.min.js"></script>

    </head>
    <body class="hold-transition skin-blue layout-boxed sidebar-mini">
        <div class="wrapper">

            <!-- Main Header -->
            <header class="main-header">

                <!-- Logo -->
                <a href="#" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>P</b>JT</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Projeto</b>5�</span>
                </a>

                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <!-- Menu toggle button -->
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">0</span>
                                </a>


                                <!-- Notifications Menu -->
                            <li class="dropdown notifications-menu">
                                <!-- Menu toggle button -->
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">0</span>
                                </a>


                                <!-- Tasks Menu -->
                            <li class="dropdown tasks-menu">
                                <!-- Menu Toggle Button -->
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-flag-o"></i>
                                    <span class="label label-danger">0</span>
                                </a>


                            </li>
                            <!-- User Account Menu -->
                            <li class="dropdown user user-menu">
                                <!-- Menu Toggle Button -->
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <!-- The user image in the navbar-->
                                    <img src="<%=contextPath%>/dist/img/avatar04.png" class="user-image" alt="User Image">
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span class="hidden-xs"><%=nome%></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- The user image in the menu -->
                                    <li class="user-header">
                                        <img src="<%=contextPath%>/dist/img/avatar04.png" class="img-circle" alt="User Image">
                                        <p>
                                            <%=nome%>

                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="<%=contextPath%>/views/viewSindico/perfil.jsp" class="btn btn-default btn-flat">Perfil</a>
                                        </div>
                                        <div class="pull-right">
                                            <form action="/Condominio/LogoutServ" method="POST">
                                                <!--<a href="<%new LogoutServ();%>" class="btn btn-default btn-flat">Sair</a>-->
                                                <input  type="submit" class="btn btn-default btn-flat" value="Sair">
                                            </form>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">

                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">

                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="<%=contextPath%>/dist/img/avatar04.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p><%=nome%></p>
                            <!-- Status -->
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>


                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu">
                        <li class="header">MENU</li>
                        <!-- Optionally, you can add icons to the links -->
                        <li class="active"><a href="<%=contextPath%>/views/viewSindico/homeSindico.jsp"><i class="fa fa-home"></i> <span>In�c�o</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/administradoraSindico.jsp"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aloSindico.jsp"><i class="fa fa-phone"></i> <span>Al� Sindico</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/assembleia.jsp"><i class="fa fa-group"></i> <span>Assembl�ia</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/alterarSenha.jsp"><i class="fa fa-key"></i> <span>Alterar Senha</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/cadastroUsuario.jsp"><i class="fa fa-user-plus"></i> <span>Cadastro Usuario</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/ocorrencia.jsp"><i class="fa fa-bullhorn"></i> <span>Ocorr�ncia</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aviso.jsp"><i class="fa fa-thumb-tack"></i> <span>Quadro Aviso</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/suporte.jsp"><i class="fa fa-wrench"></i> <span>Suporte T�cnico</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/listaUsuario.jsp"><i class="fa fa-list"></i> <span>Lista Usu�rios</span></a></li>
                    </ul><!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->

                <section class="content">
                    <!-- conteudo) -->

                    <script type="text/javascript">
                        function validaPerfil() {
                            if (document.getElementById("ContentPlaceHolder1_txtEmail").value == "") {
                                alert("O Email n�o pode estar vazio");
                                document.getElementById("ContentPlaceHolder1_txtEmail").focus();
                                return false;
                            }
                            if (document.getElementById("ContentPlaceHolder1_txtNome").value == "") {
                                alert("O Nome n�o pode estar vazio");
                                document.getElementById("ContentPlaceHolder1_txtNome").focus();
                                return false;
                            }
                            var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
                            var emailid = document.getElementById("ContentPlaceHolder1_txtEmail").value;
                            var matchArray = emailid.match(emailPat);
                            if (matchArray == null) {
                                alert("O Email esta no formato incorreto. Tente novamente.");
                                document.getElementById("ContentPlaceHolder1_txtEmail").focus();
                                return false;
                            } else {
                                $('#idWait').modal('show');
                            }
                            ;
                        }
                        ;
                    </script>
                    <script type="text/javascript">
                        function validaExtencao() {
                            var file = document.getElementById("flFotoPerfil");
                            var validFilesTypes = ["jpg", "jpeg"];
                            var path = file.value;
                            var ext = path.substring(path.lastIndexOf(".") + 1, path.length).toLowerCase();
                            var isValidFile = false;


                            for (var i = 0; i < validFilesTypes.length; i++) {
                                if (ext == validFilesTypes[i]) {
                                    isValidFile = true;
                                    break;
                                }
                            }
                            if (!isValidFile) {
                                alert('Exten��o de Arquivo Inv�lida. Exnten��o permitida (.JPEG/.JPG)');
                                isValidFile = false;
                            } else {
                                $('#idWait').modal('show');
                            }
                            ;
                            return isValidFile;
                        }
                        ;
                    </script>

                    <div>

                        <!-- WAIT -->
                        <div id="idWait" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Aguarde ...</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="progress progress active">
                                            <div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                                <span class="sr-only">100% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="box">
                            <div class="box-header">
                                <h2>
                                    <span class="ion ion-edit"></span><span class="glyphicon-class"> Alterar Perfil</span></h2>
                            </div>
                            <div class="callout callout-info">
                                <p>
                                    Alterar Perfil - Aqui � poss�vel alter sua foto, nome e e-mail.</p>
                            </div>

                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="box-body box-profile">
                                    <img id="ContentPlaceHolder1_logo" class="profile-user-img img-responsive img-circle" src="dist/img/avatar04.png">
                                    <h3 class="profile-username text-center">
                                    </h3>
                                    <div class="box box-info">
                                        <div class="box-header with-border">
                                            <h3 class="box-title">
                                                Alterar Foto de Perfil</h3>
                                            <div class="box-tools pull-right">
                                                <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                                    <i class="fa fa-minus"></i>
                                                </button>
                                            </div>
                                            <!-- /.box-tools -->
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-body" style="display: block;">
                                            <input type="file" name="ctl00$ContentPlaceHolder1$flFotoPerfil" id="flFotoPerfil" style="width:400px;">
                                            <p class="text-red">
                                                A foto deve ter no maximo 1MB e o seu formato .JPG</p>
                                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnAlteraFotoPerfil" value="Alterar foto perfil" onclick="return validaExtencao();" id="ContentPlaceHolder1_btnAlteraFotoPerfil" class="btn btn-info pull-right">
                                        </div>
                                        <!-- /.box-body -->
                                    </div>
                                    <!-- /.box -->
                                    <form action="<%=contextPath%>/CadastroMoradorServ" method="POST">
                                        <div class="box-body">
                                            <div class="form-group">
                                                <input name="idU" type="hidden" value="<%=userSindico.getIdUsuario()%>" id="ContentPlaceHolder1_txtNome" class="form-control">
                                                <label for="ContentPlaceHolder1_txtNome">Nome: </label>
                                                <input name="nomeU" type="text" value="<%=userSindico.getNome()%>" id="ContentPlaceHolder1_txtNome" class="form-control"><!-- id="ContentPlaceHolder1_txtNome", value="Sindico" -->
                                                <label for="ContentPlaceHolder1_txtEmail">Email: </label>
                                                <input name="emailU" type="text" value="<%=userSindico.getEmail()%>" id="ContentPlaceHolder1_txtEmail" class="form-control"><!-- id="ContentPlaceHolder1_txtEmail", value="Sindico@hotmail.com" -->
                                            </div>
                                        </div>
                                        <div class="box-footer">
                                            <input type="submit" name="flag" value="Alterar Perfil" onclick="return validaPerfil();" id="ContentPlaceHolder1_btnAlteraPerfil" class="btn btn-info pull-right"><!-- ctl00$ContentPlaceHolder1$btnAlteraPerfil -->
                                        </div>
                                    </form>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>
                    <!-- fim conteudo-->
                </section>

            </div><!-- /.content-wrapper -->

            <!-- Main Footer -->
            <footer class="main-footer">
                <!-- Default to the left -->
                <strong>Copyright &copy; 2016 <a href="#">Beta</a>.</strong> Projeto.
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
            </aside><!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div><!-- ./wrapper -->


    </body>
</html>
