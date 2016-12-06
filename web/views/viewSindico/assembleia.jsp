<%@page import="models.AssembleiaDAO"%>
<%@page import="beans.Assembleia"%>
<%@page import="beans.Assembleia"%>
<%@page import="java.util.List"%>
<%@page import="controlers.LogoutServ"%>
<%@page import="controlers.LoginServ"%>

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
        <script src="<%=contextPath%>/dist/js/sweetalert.min.js"></script>

        <link href="<%=contextPath%>/dist/css/sweetalert.css" rel="stylesheet" type="text/css"/>
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
                            <img src="<%=contextPath%>/dist/img/avatar04.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>Sindico</p>
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
                        <li><a href="<%=contextPath%>/views/viewSindico/suporte.jsp"><i class="fa fa-wrench"></i> <span>Suporte Técnico</span></a></li><!-- /.sidebar-menu -->
                        <li><a href="<%=contextPath%>/views/viewSindico/listaUsuario.jsp"><i class="fa fa-list"></i> <span>Lista Usuários</span></a></li>
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


                    <div class="box">
                        <div class="box-header">
                            <h2>
                                <span class="ion ion-person-stalker"></span><span class="glyphicon-class">
                                    Controle de Assembleias</span>
                            </h2>
                        </div>
                        <div class="callout callout-info">
                            <p>
                                Controle das Assembleias do Condominio</p>
                        </div>
                        <!-- CADASTRO -->
                        <div class="margin">
                            <div class="btn-group">
                                <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal" data-backdrop="static" id="btnModal">
                                    Nova Assembleia</button>
                            </div>
                        </div>
                        
                         
                        
                          <form action="/Condominio/AssembleiaServ" method="POST">
                        <div class="modal fade" id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <!--<input type="hidden" name="ctl00$ContentPlaceHolder1$hfAssembleia" id="hfAssembleia">-->
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="closeModal();">
                                            <span aria-hidden="true">×</span></button>
                                        <h4 class="modal-title">
                                            Cadastro de Assembleia</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="box-body">
                                            <div class="form-group">
                                                <label>
                                                    Título:</label>
                                                <input name="titulo" type="text" id="ContentPlaceHolder1_txtTitulo" class="form-control" placeholder="Digite aqui ...">
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    Ordem do dia:</label>
                                                <textarea name="ordem" rows="2" cols="20" id="ContentPlaceHolder1_txtOrdem" class="form-control" placeholder="Digite aqui ..."></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>
                                                    Data:</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                    <input name="dataAssembleia" type="text" id="txtData" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label>
                                                    Horário:</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-clock-o"></i>
                                                    </div>
                                                    <input name="horario" type="time" id="txtHorario" class="form-control" data-inputmask="'alias': 'hh/MM/ss'" data-mask="">
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label>
                                                    Local:
                                                </label>
                                                <input name="local" type="text" id="txtLocal" class="form-control" placeholder="Digite aqui ...">
                                            </div>
                                         
                                        </div>
                                        <!-- /.box-body -->
                                    </div>
                                    
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal" onclick="closeModal();">
                                            Fechar</button>
                                        <input type="submit"  value="Salvar" name="flag" onclick="return validaCampos();"  class="btn btn-info pull-right">
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                          </form>    
                                                   
                        <!-- /.modal -->
                        <!-- FIM CADASTRO -->

                        <div class="modal fade" id="uploadATA">
                            <div class="modal-dialog">
                                <div class="modal-content">


                                    <input type="file" name="ctl00$ContentPlaceHolder1$fuAta" id="ContentPlaceHolder1_fuAta">
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$UploadButton" value="Upload" id="ContentPlaceHolder1_UploadButton">
                                    <span id="ContentPlaceHolder1_StatusLabel">Upload status: </span>

                                </div>
                            </div></div>

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
                                            <tbody>
                                                <tr>
                                                    <th scope="col">Upload ATA</th>
                                                    <th scope="col">Editar</th>
                                                    <th scope="col">Excluir</th>
                                                    <th scope="col">Titulo</th>
                                                    <th scope="col">Data</th>
                                                    <th scope="col">Horário</th>
                                                    <th scope="col">Ordem do Dia</th>
                                                    <th scope="col">Local</th>
                                                </tr>
                                                
                                                      <%
                                                            if (listaAssembleia.size() == 0) {
                                                        %>
                                                    <p>Sem dados de aviso</p>
                                                    <%
                                                    } else {

                                                        for (Assembleia assembleia : listaAssembleia) {
                                                    %>
                                                
                                                <form action="/Condominio/AssembleiaServ"method="POST">
                                                <tr>
                                                    <input type="hidden" name="idAssembleia" value="<%=assembleia.getIdAssembleia()%>"> 
                                                    <td>Nenhum Registro</td>
                                                    <td align="center" style="width:5%;"><input type="submit"  class="btn btn-info btn-sm pull-right" value="Editar" name="flag"  onclick="checkDelete(); return false;"></td>
                                                    <td align="center"><input type="submit"  id="" class="btn btn-danger btn-sm pull-right" value="Excluir" name="flag"  onclick="return excluir();"></td>
                                                    <td ><input type="text" class="form-control" name="titulo" value="<%=assembleia.getTitulo()%>"/></td>
                                                    <td ><input type="text" class="form-control" name="dataAssembleia" value="<%=assembleia.getData()%>"/></td>
                                                    <td ><input type="text" class="form-control" name="horario" value="<%=assembleia.getHorario()%>"/></td>
                                                    <td ><textarea style="width:100%;" type="text" name="ordem" rows="3" name="local" ><%=assembleia.getOrdem()%></textarea></td>
                                                    <td ><input type="text" class="form-control" name="local" value="<%=assembleia.getLocal()%>"/></td>
                                                    
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
                            </div>
                            
                            <!-- /.box-body -->
                        </div>
                    </div>


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
