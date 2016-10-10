<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Suporte</title>    
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">    
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">


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
                    <span class="logo-lg"><b>Projeto</b>5�</span>
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
                                    <img src="dist/img/user9.jpg" class="user-image" alt="User Image">
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span class="hidden-xs">Rangel Paolo</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- The user image in the menu -->
                                    <li class="user-header">
                                        <img src="dist/img/user9.jpg" class="img-circle" alt="User Image">
                                        <p>
                                            Rangel Paolo - Estagi�rio

                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="Controle?flag=perfil" class="btn btn-default btn-flat">Perfil</a>

                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Sair</a>
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
                            <img src="dist/img/user9.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>Rangel Paolo</p>
                            <!-- Status -->
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>


                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu">
                        <li class="header">MENU</li>
                        <!-- Optionally, you can add icons to the links -->
                        <li class="active"><a href="Controle?flag=home"><i class="fa fa-home"></i> <span>In�c�o</span></a></li>
                        <li><a href="Controle?flag=administradora"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="Controle?flag=alosindico"><i class="fa fa-phone"></i> <span>Al� Sindico</span></a></li>
                        <li><a href="Controle?flag=assembleia"><i class="fa fa-group"></i> <span>Assembl�ia</span></a></li>
                        <li><a href="Controle?flag=ocorrencia"><i class="fa fa-bullhorn"></i> <span>Ocorr�ncia</span></a></li>
                        <li><a href="Controle?flag=aviso"><i class="fa fa-thumb-tack"></i> <span>Quadro Aviso</span></a></li>
                        <li><a href="Controle?flag=suporte"><i class="fa fa-wrench"></i> <span>Suporte T�cnico</span></a></li>
                        </li>
                    </ul><!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">


                </section>

                <section class="content">
                    <!-- conteudo) -->



                    <style type="text/css">
                        .textoMensagem
                        {
                            border: none;
                            color: Red;
                            text-align: center;
                            width: 100%;
                            background-color: #F2F2F2;
                        }

                    </style>

                    <script language="Javascript" type="text/javascript">
                        function validaCampos() {
                            if (document.getElementById("ContentPlaceHolder1_txtAssunto").value == "") {
                                document.getElementById("lblMensagem").value = "Informe o assunto";
                                document.getElementById("ContentPlaceHolder1_txtAssunto").focus();
                                return false;
                            }
                            if (document.getElementById("ContentPlaceHolder1_cboAssunto").selectedIndex == 0) {
                                document.getElementById("lblMensagem").value = "Informe o tipo da solicita��o";
                                document.getElementById("ContentPlaceHolder1_cboAssunto").focus();
                                return false;
                            }
                            if (document.getElementById("ContentPlaceHolder1_txtMensagem").value == "") {
                                document.getElementById("lblMensagem").value = "Informe a mensagem";
                                document.getElementById("ContentPlaceHolder1_txtMensagem").focus();
                                return false;
                            }



                        }
                        ;
                    </script>





                    <div>

                        <div class="box" style="min-height: 350px;">
                            <div class="box-header">
                                <h2>
                                    <span class="ion ion-wrench"></span><span class="glyphicon-class"> Suporte Tecnico</span></h2>
                            </div>
                            <div class="callout callout-info">
                                <p>Bem vindo a pagina de Suporte Tecnico</p>
                            </div>
                            <p class="text-muted well well-sm no-shadow"> Seu contato e muito importante para n�s , aqui voc� pode enviar sugest�es, cr�ticas ou relatar problemas com o Sistema.</p>

                            <div class="box-header with-border">
                                <h3 class="box-title"> Preencha o formul�rio abaixo</h3>
                            </div>

                            <div class="row">
                                <div class="col-xs-4">
                                    <div class="box-body">

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Assunto: </label>
                                            <input name="ctl00$ContentPlaceHolder1$txtAssunto" type="text" id="ContentPlaceHolder1_txtAssunto" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Tipo solicita��o: </label>
                                            <select name="ctl00$ContentPlaceHolder1$cboAssunto" id="ContentPlaceHolder1_cboAssunto" class="form-control">
                                                <option value="Selecione">Selecione</option>
                                                <option value="Cr�ticas">Cr�ticas</option>
                                                <option value="D�vidas">D�vidas</option>
                                                <option value="Problemas">Problemas</option>
                                                <option value="Sugest�es">Sugest�es</option>

                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Mensagem: </label>
                                            <textarea name="ctl00$ContentPlaceHolder1$txtMensagem" rows="10" cols="20" id="ContentPlaceHolder1_txtMensagem" class="form-control"></textarea>
                                        </div>


                                        <div class="form-group">
                                            <input name="ctl00$ContentPlaceHolder1$lblMensagem" type="text" id="lblMensagem" disabled="disabled" class="aspNetDisabled textoMensagem" style="background-color:White;">
                                        </div>

                                        <div class="box-footer">

                                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnEnviar" value="Enviar" onclick="return validaCampos();" id="ContentPlaceHolder1_btnEnviar" class="btn btn-success pull-right">
                                        </div>


                                    </div>


                                </div>
                            </div>









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
        </div>
    </aside><!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->


<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="dist/js/app.min.js"></script>


</body>
</html>
