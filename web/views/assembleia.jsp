
<%@page import="models.AssembleiaDAO"%>
<%@page import="beans.Assembleia"%>
<%@page import="beans.Assembleia"%>
<%@page import="java.util.List"%>
<%@page import="controlers.LoginServ"%>
<%@page import="controlers.LogoutServ"%>

<!DOCTYPE html>
<html>
    <head>
        <%
            String contextPath = request.getContextPath();

            List<Assembleia> listaAssembleia = new AssembleiaDAO().Pesquisar();

            String nome = null;
            nome = session.getAttribute("nome").toString();
        %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Assembleia</title>    
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
                                    <img src="<%=contextPath%>/dist/img/smile.png" class="user-image" alt="User Image">
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span class="hidden-xs"><%=nome%></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- The user image in the menu -->
                                    <li class="user-header">
                                        <img src="<%=contextPath%>/dist/img/smile.png" class="img-circle" alt="User Image">
                                        <p>
                                            <%=nome%>

                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="<%=contextPath%>/views/perfil.jsp" class="btn btn-default btn-flat">Perfil</a>

                                        </div>
                                        <div class="pull-right">
                                            <form action="/Condominio3/LogoutServ" method="POST">
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
                            <img src="<%=contextPath%>/dist/img/smile.png" class="img-circle" alt="User Image">
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
                        <li class="active">
                            <a href="<%=contextPath%>/views/home.jsp"><i class="fa fa-home"></i> <span>Inícío</span></a></li>
                        <li><a href="<%=contextPath%>/views/administradora.jsp"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="<%=contextPath%>/views/aloSindico.jsp"><i class="fa fa-phone"></i> <span>Alô Sindico</span></a></li>
                        <li><a href="<%=contextPath%>/views/assembleia.jsp"><i class="fa fa-group"></i> <span>Assembléia</span></a></li>
                        <li><a href="<%=contextPath%>/views/alterarSenha.jsp"><i class="fa fa-key"></i> <span>Alterar Senha</span></a></li>
                        <li><a href="<%=contextPath%>/views/ocorrencia.jsp"><i class="fa fa-bullhorn"></i> <span>Ocorrência</span></a></li>
                        <li><a href="<%=contextPath%>/views/aviso.jsp"><i class="fa fa-thumb-tack"></i> <span>Quadro Aviso</span></a></li>
                        <li><a href="<%=contextPath%>/views/suporte.jsp"><i class="fa fa-wrench"></i> <span>Suporte Técnico</span></a></li>
                    </ul><!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">

                <section class="content">
                    <!-- conteudo) -->

                    <style type="text/css">
                        .botaoEditar
                        {
                            background: url(/imagens/edit.png) no-repeat;
                            cursor: pointer;
                            border: none;
                            width: 25px;
                            height: 30px;
                        }

                        .botaoVisualizar
                        {
                            background: url(/imagens/lupa.png) no-repeat;
                            cursor: pointer;
                            border: none;
                            width: 25px;
                            height: 30px;
                        }

                        .botaoPDF
                        {
                            background: url(/imagens/pdf.png) no-repeat;
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
                        function windowOpen(token) {
                            var url = 'AtaCondominio.aspx?token=' + token
                            myWindow = window.open(url, '_blank', 'scrollbars=no,resizable=no')
                            myWindow.focus()
                            return false;
                        }
                        //Vizualizar
                        function ExibeAssembleia(token) {
                            var obj = new Object();
                            obj.token = token;
                            var parametros = JSON.stringify(obj);

                            $.ajax({
                                type: "POST",
                                url: "wfVisualizaAssembleia.aspx/exibeAssembleia",
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

                            document.getElementById("hfAssembleia").value = arr[0];
                            document.getElementById("ContentPlaceHolder1_txtTitulo").value = arr[1].replace('Ë', ',');
                            document.getElementById("txtData").value = arr[2];
                            document.getElementById("txtHorario").value = arr[3];
                            document.getElementById("ContentPlaceHolder1_txtOrdem").value = arr[4].replace('Ë', ',');
                            document.getElementById("cboTorre").value = arr[5];
                            document.getElementById("txtLocal").value = arr[6];

                            openModal();
                        }

                        function openModal() {
                            $('#myModal').modal('show');
                        }
                        ;

                        function closeModal() {
                            $('#myModal').modal('hide');
                            document.getElementById("txtLocal").value = "";
                            document.getElementById("txtData").value = "";
                            document.getElementById("txtHorario").value = "";
                            document.getElementById("ContentPlaceHolder1_txtOrdem").value = "";
                            document.getElementById("ContentPlaceHolder1_txtTitulo").value = "";
                            document.getElementById("hfAssembleia").value = "";
                            document.getElementById("cboTorre").value = 1;
                        }
                        ;

                    </script>

                    <div>

                        <div class="box">
                            <div class="box-header">
                                <h2>
                                    <span class="ion ion-person-stalker"></span><span class="glyphicon-class">
                                        Assembleias</span>
                                </h2>
                            </div>
                            <div class="callout callout-info">
                                <p>
                                    Assembleias do Condominio</p>
                            </div>
                            <!-- CADASTRO -->
                            <div class="margin">




                            </div>






                            <!-- /.modal -->
                            <!-- FIM CADASTRO -->
                            <div class="box box-tool box-solid">
                                <div class="box-header with-border">
                                    <h3 class="box-title">
                                        Assembleias Cadastradas</h3>
                                    <div class="box-tools pull-right">
                                    </div>
                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body" style="display: block;">
                                    <div class="box-body">
                                        <div>
                                            <table class="table table-bordered table-striped dataTable" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_dgvAssembleia" style="border-collapse:collapse;">
                                                <tr>
                                                    <th scope="col">Detalhes</th>
                                                    <th scope="col">Download ATA</th>
                                                    <th scope="col">Titulo</th>
                                                    <th scope="col">Data</th>
                                                    <th scope="col">Horário</th>
                                                </tr>
                                                <%

                                                    if (listaAssembleia.size() == 0) {
                                                %>
                                                <p>Sem dados de aviso</p>
                                                <%
                                                } else {

                                                    for (Assembleia assembleia : listaAssembleia) {
                                                %>
                                                <tr>
                                                    <td><a href="<%=contextPath%>/views/exibirAssembleia.jsp?token=<%=assembleia.getIdAssembleia()%>">Exibir</a></td>
                                                    <td></td>

                                                    <td><%=assembleia.getTitulo()%></td>
                                                    <td><%=assembleia.getData()%></td>
                                                    <td><%=assembleia.getHorario()%></td>

                                                </tr>
                                                <%
                                                        }
                                                    }
                                                %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.box-body -->
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

</body>
</html>
