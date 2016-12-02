<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="models.UsuarioDao"%>
<%@page import="models.TorreDAO"%>
<%@page import="beans.Usuario"%>
<%@page import="beans.Torre"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String contextPath = request.getContextPath();
        %>
        <%
            List<Usuario> listaUsuario = new UsuarioDao().listar();
            //List<Torre> listaTorre = new TorreDAO().buscaTorre();
        %>
        <%
            String nome = null;
            nome = session.getAttribute("nome").toString();
        %>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Lista de usuários</title>    
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
                                            <form action="/Condominio/LogoutServ" method="POST">
                                                <!--<a href="" class="btn btn-default btn-flat">Sair</a>-->
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


                    </ul><!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">

                </section>

                <!-- Main content -->
                <section class="content">
                    <!-- conteudo) -->

                    <script type="text/javascript">
                        $(document).ready(function () {

                            // Dialog Link

                            $('#BtnShowDialog').click(function () {
                                $('#divDialog').dialog('open');
                                return false;
                            });
                            // Modal Link
                            $('#BtnDialog').click(function () {
                                $('#dialogSample').dialog('open');
                                return false;
                            });

                            // Dialog Simple

                            $('#divDialog').dialog({
                                autoOpen: false,
                                width: 600,
                                modal: true,
                                buttons: {
                                    "Ok": function () {
                                        $(this).dialog("close");
                                    },
                                    "Cancel": function () {
                                        $(this).dialog("close");
                                    }
                                }
                            });

                            // Dialog message
                            $("#myModal").dialog({
                                autoOpen: false,
                                modal: true,
                                buttons: {
                                    Ok: function () {
                                        $(this).dialog("close");
                                    }
                                }
                            });
                        });
                    </script>

                    <div>

                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h2>

                                            <span class="fa fa-list"></span><span class="glyphicon-class">
                                                Lista de Usuários</span></h2>
                                    </div>
                                    <div class="callout callout-info">
                                        <p>
                                            Moradores cadastrados </p>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="box-body">
                                        <div>
                                            <table class="table table-bordered table-striped dataTable" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_dgvAdministradora" style="border-collapse:collapse;">
                                                <tbody>
                                                    <tr>
                                                        <th scope="col" colspan="2"></th>
                                                        <th scope="col" colspan="2">Torre</th>
                                                        <th scope="col">Nome</th>
                                                        <th scope="col">Email</th>
                                                        <th scope="col">Apto</th>
                                                    </tr>

                                                    <%
                                                        if (listaUsuario.size() == 0) {
                                                    %>
                                                <p>Sem dados de morador</p>
                                                <%
                                                } else {

                                                    for (Usuario user : listaUsuario) {
                                                %>
                                                <form action="<%=contextPath%>/CadastroMoradorServ" method="POST">
                                                    <tr>
                                                        <td><input type="submit" class="btn btn-success center-block " value="Editar" name="flag" data-toggle="modal" data-target="#myModal" data-backdrop="static" id="Button1"</td>
                                                        <td><input type="submit" class="btn btn-success center-block " value="Excluir" name="flag" data-toggle="modal" data-target="#myModal" data-backdrop="static" id="Button1"</td>
                                                        <td><input type="hidden" class="form-control"  name="idM" value="<%=user.getIdUsuario()%>" /></td><!-- A -->
                                                        <td><input type="text" class="form-control" id="torreM" name="torreM" value="<%=user.getIdTorre()%>" disabled /></td>
                                                        <td><input type="text" class="form-control" id="nomeMorador" name="nomeMorador" placeholder="Nome" value="<%=user.getNome()%>" /></td>
                                                        <td><input type="email" class="form-control" id="emailMorador" name="emailMorador" placeholder="Email" value="<%=user.getEmail()%>" size="50" /></td>
                                                        <td><input type="text" class="form-control" id="aptMorador" name="aptMorador" placeholder="Apt" value="<%=user.getApto()%>" /></td>
                                                        <!--<td><input type="submit" class="btn btn-success btn-block btn-flat" value="editar" name="flag"</td>-->
                                                    </tr>
                                                </form>
                                                <%
                                                    }
                                                }
                                                %>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>

                                    <!-- Modal -->
                                    <div id="myModal" class="modal fade" role="dialog">
                                        <div class="modal-dialog">
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">
                                                        ×</button>
                                                    <h4 class="modal-title">Altera cadastro</h4>
                                                </div>
                                                <div class="modal-body">

                                                    <table  class="table table-bordered table-striped dataTable" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_dgvAdministradora" style="border-collapse:collapse;">
                                                        <tbody><tr>
                                                                <th scope="col">Torre</th><th scope="col">Nome</th><th scope="col">Email</th><th scope="col">Apto</th>

                                                            </tr>
                                                            <tr>

                                                                <td><input style="width:30px"  type="text" name="" value="A"></td>
                                                                <td><input style="width:100%"  type="text" name="" value="Dougla castro"></td>
                                                                <td><input style="width:100%" type="text" name="" value="douglasolive1987@gmail.com.br"></td>
                                                                <td><input style="width:30px"  type="text" name="" value="154"></td>

                                                                <!--<td><input type="submit" class="btn btn-success btn-block btn-flat" value="editar" name="flag"</td>-->

                                                            </tr>
                                                        </tbody></table>
                                                </div>
                                                <div class="box-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closeModal();">
                                                        Fechar</button>

                                                    <input type="submit" name="" value="Salvar" onclick="return validaCadastro();" id="ContentPlaceHolder1_btnSalvar" class="btn btn-info pull-right">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Visualizar Modal -->

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
