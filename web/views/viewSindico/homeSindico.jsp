<%@page import="controlers.LogoutServ"%>
<%@page import="controlers.LoginServ"%>

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
                                            <a href="<%=contextPath%>/views/viewSindico/perfil.jsp" class="btn btn-default btn-flat">Perfil</a>

                                        </div>
                                        <div class="pull-right">
                                            <form action="LogoutServ" method="POST">
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
                        <li class="active"><a href="Sindico?flag=home"><i class="fa fa-home"></i> <span>Inícío</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/administradoraSindico.jsp"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aloSindico.jsp"><i class="fa fa-phone"></i> <span>Alô Sindico</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/assembleia.jsp"><i class="fa fa-group"></i> <span>Assembléia</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/alterarSenha.jsp"><i class="fa fa-key"></i> <span>Alterar Senha</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/ocorrencia.jsp"><i class="fa fa-bullhorn"></i> <span>Ocorrência</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aviso.jsp"><i class="fa fa-thumb-tack"></i> <span>Quadro Aviso</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/suporte.jsp"><i class="fa fa-wrench"></i> <span>Suporte Técnico</span></a></li>

                    </ul><!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content">
                    <!-- conteudo) -->

                    <div>

                        <div id="idWait" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">
                                            Aguarde ...</h4>
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

                        <section class="content-header">
                            <small> Bem Vindo </small>
                            <h1>
                                <span id="ContentPlaceHolder1_lblUsuario">Sindico</span>
                                <small> ao site do seu condomínio!</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                                <li class="active">Dashboard</li>
                            </ol>
                        </section>
                        <section class="content">
                            <!-- Small boxes (Stat box) -->
                            <div class="row">
                                <div class="col-lg-3 col-xs-6">
                                    <!-- small box -->
                                    <div class="small-box bg-red">
                                        <div class="inner">
                                            <h3><span id="ContentPlaceHolder1_lblOcorreciasDB">0/0</span></h3>
                                            <p>Ocorrências abertas</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-speakerphone"></i>
                                        </div>
                                        <a href="<%=contextPath%>/views/viewSindico/ocorrencia.jsp" class="small-box-footer">Mais <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div><!-- ./col -->
                                <div class="col-lg-3 col-xs-6">
                                    <!-- small box -->
                                    <div class="small-box bg-yellow">
                                        <div class="inner">
                                            <h3><span id="ContentPlaceHolder1_lblAloSindicoDB">0/0</span></h3>
                                            <p>Alô Sindico</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-android-call"></i>
                                        </div>
                                        <a href="<%=contextPath%>/views/viewSindico/aloSindico.jsp" class="small-box-footer">Mais <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div><!-- ./col -->
                                <div class="col-lg-3 col-xs-6">
                                    <!-- small box -->
                                    <div class="small-box bg-green">
                                        <div class="inner">
                                            <h3><span id="ContentPlaceHolder1_lblAssembleiaDB">0/0</span></h3>
                                            <p>Novas Assembleias</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-person-stalker"></i>
                                        </div>
                                        <a href="<%=contextPath%>/views/viewSindico/assembleia.jsp" class="small-box-footer">Mais <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div><!-- ./col -->
                                <div class="col-lg-3 col-xs-6">
                                    <!-- small box -->
                                    <div class="small-box bg-aqua">
                                        <div class="inner">
                                            <h3><span id="ContentPlaceHolder1_lblFaqDB">1</span></h3>
                                            <p>Avisos cadastrados</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-help"></i>
                                        </div>
                                        <a href="wfFAQ.aspx" class="small-box-footer">Mais <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div><!-- ./col -->
                            </div><!-- /.row -->

                            <div class="row">

                                <!-- PERFIL -->

                                <!-- AVISOS -->
                                <div class="col-md-6">
                                    <div class="box">
                                        <div class="box-body">

                                            <div class="box box-info collapsed-box">
                                                <div class="box-header with-border">
                                                    <h3 class="box-title">Usuários cadastrados</h3>
                                                    <div class="box-tools pull-right">
                                                        <button class="btn btn-box-tool" data-widget="collapse" type="button"><i class="fa fa-plus"></i></button>
                                                    </div>
                                                </div>
                                                <div class="box-body" style="display: none;">
                                                    <div class="progress-group"><span class="progress-text">Torre A</span><span class="progress-number">10/ 112</span><div class="progress md"><div class="progress-bar progress-bar-yellow" style="width: 10.710000%"></div></div></div>   
                                                </div>
                                                <div class="box-body" style="display: none;">
                                                    <div class="progress-group"><span class="progress-text">Torre b</span><span class="progress-number">61/ 112</span><div class="progress md"><div class="progress-bar progress-bar-yellow" style="width: 50.710000%"></div></div></div>   
                                                </div>
                                                <div class="box-body" style="display: none;">
                                                    <div class="progress-group"><span class="progress-text">Torre c</span><span class="progress-number">20 / 112</span><div class="progress md"><div class="progress-bar progress-bar-yellow" style="width: 20.710000%"></div></div></div>   
                                                </div>
                                            </div>                                           

                                        </div><!-- /.box-body -->
                                    </div><!-- /.box -->
                                </div>

                            </div>

                        </section>

                    </div>
                    <!-- fim conteudo-->
                </section>
            </div><!-- /.content-wrapper -->
            <!-- /.content-wrapper -->

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

