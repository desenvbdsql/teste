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
        <title>Ocorrência</title>    
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
                        <li class="active"><a href="<%=contextPath%>/views/viewSindico/homeSindico.jsp"><i class="fa fa-home"></i> <span>Inícío</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/administradoraSindico.jsp"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aloSindico.jsp"><i class="fa fa-phone"></i> <span>Alô Sindico</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/assembleia.jsp"><i class="fa fa-group"></i> <span>Assembléia</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/alterarSenha.jsp"><i class="fa fa-key"></i> <span>Alterar Senha</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/cadastroUsuario.jsp"><i class="fa fa-user-plus"></i> <span>Cadastro Usuario</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/ocorrencia.jsp"><i class="fa fa-bullhorn"></i> <span>Ocorrência</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aviso.jsp"><i class="fa fa-thumb-tack"></i> <span>Quadro Aviso</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/suporte.jsp"><i class="fa fa-wrench"></i> <span>Suporte Técnico</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/listaUsuario.jsp"><i class="fa fa-list"></i> <span>Lista Usuários</span></a></li>
                    </ul>
                    <!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->

                <section class="content">
                    <!-- conteudo) -->

                    <style type="text/css">
                        .link
                        {
                            color: White;
                        }
                        .botaoResponder
                        {
                            background: url(/imagens/chat-reply.png) no-repeat;
                            cursor: pointer;
                            border: none;
                            width: 25px;
                            height: 30px;
                        }
                        .textoMensagem
                        {
                            border: none;
                            color: Red;
                            text-align: center;
                            width: 100%;
                            background-color: #F2F2F2;
                        }
                    </style>

                    <script type="text/javascript">
                        function validaCadastro() {


                            if (document.getElementById("ContentPlaceHolder1_txtResposta").value == "") {
                                document.getElementById("lblMensagem").value = "Informe a Resposta para Ocorrência.";
                                document.getElementById("txtData").focus();
                                return false;
                            }
                        }
                        ;

                        function pergunta() {

                            if (confirm("Deseja realmente excluir a mensagem ?")) {
                                return true;
                            } else {
                                return false;
                            }
                        }
                        ;

                        function perguntaFinalizar() {

                            if (confirm("Deseja realmente finalizar ?")) {
                                return true;
                            } else {
                                return false;
                            }
                        }
                        ;

                        //Vizualizar
                        function ExibeOcorrencia(token) {
                            var obj = new Object();
                            obj.token = token;
                            var parametros = JSON.stringify(obj);

                            $.ajax({
                                type: "POST",
                                url: "wfOcorrenciaControle.aspx/exibeOcorrencia",
                                data: parametros,
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: OnSuccessView,
                                failure: function (response) {
                                    alert(response.d);
                                }
                            });
                        }

                        function OnSuccessView(response) {
                            var res = response.d;
                            var arr = String(res).split(",");

                            document.getElementById("hfOcorrencia").value = arr[0];
                            document.getElementById("txtUsuario").value = arr[8];
                            document.getElementById("txtTipoOcorrencia").value = arr[1];
                            document.getElementById("txtData").value = arr[2];
                            document.getElementById("txtTitulo").value = arr[3].replace('Ë', ',');
                            document.getElementById("ContentPlaceHolder1_txtOcorrencia").value = arr[4].replace('Ë', ',');
                            document.getElementById("ContentPlaceHolder1_txtResposta").value = arr[7].replace('Ë', ',');

                            openModal();
                        }
                        ;


                        function openModal() {
                            $('#myModal').modal('show');
                        }
                        ;
                        function closeModal() {
                            $('#myModal').modal('hide');
                            document.getElementById("txtTipoOcorrencia").value = "";
                            document.getElementById("txtData").value = "";
                            document.getElementById("txtTitulo").value = "";
                            document.getElementById("ContentPlaceHolder1_txtOcorrencia").value = "";
                            document.getElementById("hfOcorrencia").value = "";
                            document.getElementById("lblMensagem").value = "";
                        }
                        ;


                        function limpaFiltro() {
                            document.getElementById("ContentPlaceHolder1_txtAssunto").value = "";
                            document.getElementById("ContentPlaceHolder1_txtMoradorBusca").value = "";
                            document.getElementById("txtDataBusca").value = "";

                        }
                        ;

                    </script>

                    <div class="box-header">
                        <h2>
                            <span class="ion ion-speakerphone"></span><span class="glyphicon-class"> Controle de Ocorrências</span></h2>
                    </div>

                    <div class="col-md-3">
                        <!-- Menu Lateral-->
                        <div class="box box-solid" >
                            <div class="box-header with-border">
                                <h3 class="box-title">
                                    Mensagens</h3>
                                <div class="box-tools">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="box-body no-padding">
                                <div class="box-body">
                                    <div class="btn btn-block btn-primary">
                                        <a id="ContentPlaceHolder1_btnTodas" class="link" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$btnTodas','')">Todas</a>
                                        <span id="ContentPlaceHolder1_lblTodas" class="label label-primary pull-right">0</span>
                                    </div>
                                    <div class="btn btn-block btn-success">
                                        <a id="ContentPlaceHolder1_btnRespondidas" class="link" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$btnRespondidas','')">Fechadas</a>
                                        <span id="ContentPlaceHolder1_lblRespondidas" class="label label-primary pull-right">0</span>
                                    </div>
                                    <div class="btn btn-block btn-danger">
                                        <a id="ContentPlaceHolder1_btnNaoRespondidas" class="link" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$btnNaoRespondidas','')">Abertas</a>
                                        <span id="ContentPlaceHolder1_lblNaoRespondidas" class="label label-primary pull-right">0</span>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /. box -->

                        <!-- Menu Filtro-->
                        <div class="box box-solid" >
                            <div class="box-header with-border">
                                <h3 class="box-title">
                                    Filtro</h3>
                                <div class="box-tools">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="box-body no-padding">
                                <div class="box-body">
                                    <div class="has-feedback">

                                        <input name="ctl00$ContentPlaceHolder1$txtAssunto" type="text" id="ContentPlaceHolder1_txtAssunto" placeholder="Assunto" class="form-control input-sm">

                                        <br>    
                                    </div>
                                    <div class="has-feedback">

                                        <input name="ctl00$ContentPlaceHolder1$txtMoradorBusca" type="text" id="ContentPlaceHolder1_txtMoradorBusca" placeholder="Morador" class="form-control input-sm">

                                        <br>
                                    </div>
                                    <div class="has-feedback">

                                        <input name="ctl00$ContentPlaceHolder1$txtDataBusca" type="text" id="txtDataBusca" placeholder="Data" class="form-control input-sm" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">

                                        <br>
                                    </div>
                                    <div class="btn btn-block btn-info">
                                        <a id="btnFiltrar" class="link" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$btnFiltrar','')">Buscar</a>
                                    </div>
                                    <div class="btn btn-block btn-warning">
                                        <a id="ContentPlaceHolder1_btnRemoverFiltro" class="link" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$btnRemoverFiltro','')">Remover Filtro</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- Menu Filtro-->
                        <!-- /. box -->
                    </div>

                    <div class="col-md-9">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">
                                    <span id="ContentPlaceHolder1_lblTitulo">Todas as Mensagens</span></h3>
                            </div>
                            <!-- /.box-header -->

                            <div class="box-body">
                                <div>
                                    <table class="table table-bordered table-striped dataTable" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_dgvAloSindico" style="border-collapse:collapse;">
                                        <tbody><tr>
                                                <th scope="col">Responder</th><th scope="col">Finalizar</th><th scope="col">Excluir</th><th scope="col">Assunto</th><th scope="col">Data </th><th scope="col">Enviada por:</th><th scope="col">Situação</th>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>

                            </div>

                            <!-- fim conteudo-->
                        </div>
                    </div>

                </section> 

            </div>
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
