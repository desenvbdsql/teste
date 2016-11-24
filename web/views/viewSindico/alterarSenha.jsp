<!DOCTYPE html>
<html>
    <head>
        <%
            String contextPath = request.getContextPath();
        %>
        <%
            String nome = null;
            nome = session.getAttribute("nome").toString();
        %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Home</title>    
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
                <div class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>P</b>JT</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Projeto</b>5º</span>
                </div>

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
                                            <a href="Sindico?flag=perfil" class="btn btn-default btn-flat">Perfil</a>

                                        </div>
                                        <div class="pull-right">
                                            <a href="index.html" class="btn btn-default btn-flat">Sair</a>
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
                        <li class="active"><a href="<%=contextPath%>/views/viewSindico/homeSindico.jsp"><i class="fa fa-home"></i> <span>Inícío</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/administradoraSindico.jsp"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aloSindico.jsp"><i class="fa fa-phone"></i> <span>Alô Sindico</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/assembleia.jsp"><i class="fa fa-group"></i> <span>Assembléia</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/alterarSenha.jsp"><i class="fa fa-key"></i> <span>Alterar Senha</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/ocorrencia.jsp"><i class="fa fa-bullhorn"></i> <span>Ocorrência</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aviso.jsp"><i class="fa fa-thumb-tack"></i> <span>Quadro Aviso</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/suporte.jsp"><i class="fa fa-wrench"></i> <span>Suporte Técnico</span></a></li>  <!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content">
                    <!-- conteudo) -->

                    <div>

                        <div class="box">
                            <div class="box-header">
                                <h2>
                                    <span class="ion ion-key"></span><span class="glyphicon-class"> Alterar Senha</span></h2>
                            </div>
                            <div class="callout callout-info">
                                <p>
                                    Alterar Senha - Aqui é possível alterar a sua senha.</p>
                            </div>
                            <div class="box-body">

                                <span class="failureNotification">

                                </span>
                                <div id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_ChangeUserPasswordValidationSummary" class="failureNotification" style="display:none;">

                                </div>

                                <form action="<%=contextPath%>/Controlec" method="POST">

                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <input name="senhaAtual" type="password" id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_CurrentPassword" class="form-control" placeholder="Senha Atual">
                                            <div class="input-group-addon">
                                                <i class="fa fa-lock"></i>
                                            </div>
                                        </div>
                                        <span id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_CurrentPasswordRequired" title="A antiga Senha é obrigatória" class="failureNotification" style="visibility:hidden;">*</span>
                                        <div class="input-group">
                                            <input name="senhaNova" type="password" id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_NewPassword" class="form-control" placeholder="Nova Senha">
                                            <div class="input-group-addon">
                                                <i class="fa fa-lock"></i>
                                            </div>
                                        </div>
                                        <span id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_NewPasswordRequired" title="A nova Senha é obrigatória." class="failureNotification" style="visibility:hidden;">*</span>
                                        <div class="input-group">
                                            <input name="confSenhaNova" type="password" id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_ConfirmNewPassword" class="form-control" placeholder=" Confirmar Nova Senha">
                                            <div class="input-group-addon">
                                                <i class="fa fa-lock "></i>
                                            </div>
                                        </div>
                                        <p>
                                        </p>
                                        <span id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_ConfirmNewPasswordRequired" title="A nova senha deve ser confirmada." class="failureNotification" style="display:none;">*</span>
                                        <span id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_NewPasswordCompare" class="failureNotification" style="display:none;">*</span>
                                        <p>
                                            <input type="hidden" name="flag" value="altSenhaSindico">
                                            <input type="submit" name="btTrocaSenha" value="Trocar Senha" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions( & quot; ctl00$ContentPlaceHolder1$ChangePassword1$ChangePasswordContainerID$Button2 & quot; , & quot; & quot; , true, & quot; ChangeUserPasswordValidationGroup & quot; , & quot; & quot; , false, false))" id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_Button2" class="btn btn-block btn-success">
                                            <input type="submit" name="ctl00$ContentPlaceHolder1$ChangePassword1$ChangePasswordContainerID$Button1" value="Cancelar" id="ContentPlaceHolder1_ChangePassword1_ChangePasswordContainerID_Button1" class="btn btn-block btn-warning">
                                        </p><div class="login-box-body">
                                            <div class="cor-letra">

                                            </div>
                                        </div>
                                        <p></p>
                                    </div>

                                </form>

                            </div> </div>

                    </div>
                    <!-- /.box -->
                </section>

                <!-- Main content -->

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
        </div>
    </aside><!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->


</body>
</html>
