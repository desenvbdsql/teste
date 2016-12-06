<%@page import="beans.Aviso"%>
<%@page import="java.util.List"%>
<%@page import="models.AvisoDAO" %>

<!DOCTYPE html>
<!-- aviso do sindico -->
<html>
    <head>
        <%
            String contextPath = request.getContextPath();

            List<Aviso> listaAviso = new AvisoDAO().Pesquisar();

            String nome = null;
            nome = session.getAttribute("nome").toString();
        %>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Aviso</title>    
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
    <body class="hold-transition skin-blue  layout-boxed laysidebar-mini">
        <div class="wrapper">

            <!-- Main Header -->
            <header class="main-header">

                <!-- Logo -->
                <div class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>P</b>JT</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Projeto</b>5?</span>
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


                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu">
                        <li class="header">MENU</li>
                        <!-- Optionally, you can add icons to the links -->
                        <li class="active"><a href="<%=contextPath%>/views/viewSindico/homeSindico.jsp"><i class="fa fa-home"></i> <span>Inicio</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/administradoraSindico.jsp"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/aloSindico.jsp"><i class="fa fa-phone"></i> <span>Alô Sindico</span></a></li>
                        <li><a href="<%=contextPath%>/views/viewSindico/assembleia.jsp"><i class="fa fa-group"></i> <span>Assemblêia</span></a></li>
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

                    <div>

                        <style type="text/css">
                            .botaoEditar
                            {
                                background: url(/imagens/edit.png) no-repeat;
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
                        <script language="Javascript" type="text/javascript">
                            function pergunta() {

                                if (confirm("Deseja realmente Salvar?")) {
                                    return true;
                                } else {
                                    return false;
                                }
                            }
                            function validaCampos() {
                                if (document.getElementById("txtTitulo").value == "") {
                                    document.getElementById("lblMensagem").value = "Informe o Titulo do Aviso.";
                                    document.getElementById("txtTitulo").focus();
                                    return false;
                                }

                                if (document.getElementById("txtAviso").value == "") {
                                    document.getElementById("lblMensagem").value = "Informe o Aviso.";
                                    document.getElementById("txtAviso").focus();
                                    return false;
                                }
                            }
                            ;

                            function openModal() {
                                $('#myModal').modal('show');
                            }
                            ;

                            function closeModal() {
                                $('#myModal').modal('hide');
                                document.getElementById("hfcvIdQuadroAviso").value = "";
                                document.getElementById("txtTitulo").value = "";
                                document.getElementById("txtData").value = "";
                                document.getElementById("txtDataExpiracao").value = "";
                                document.getElementById("txtAviso").value = "";
                            }
                            ;

                            function exibeAviso(token) {
                                var obj = new Object();
                                obj.token = token;
                                var parametros = JSON.stringify(obj);
                                $.ajax({
                                    type: "POST",
                                    url: "wfQuadroAvisoCadastro.aspx/exibeAviso",
                                    data: parametros,
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: OnSuccess,
                                    failure: function (response) {
                                        alert(response.d);
                                    }
                                });
                            }

                            function OnSuccess(response) {
                                var res = response.d;
                                var arr = String(res).split(",");

                                document.getElementById("hfcvIdQuadroAviso").value = arr[0];
                                        document.getElementById("txtTitulo").value = arr[1].replace(/?/g, ",");
                                        document.getElementById("txtData").value = arr[2];
                                document.getElementById("txtDataExpiracao").value = arr[3];
                                        document.getElementById("txtAviso").value = arr[4].replace(/?/g, ",");
                                        openModal();
                            }



                        </script>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box">
                                    <div class="box-header">
                                        <h2>
                                            <span class="ion ion-pin"></span><span class="glyphicon-class"> Controle de Quadro de
                                                Avisos</span>
                                        </h2>
                                    </div>
                                    <!-- /.box-header -->
                                    <div class="callout callout-info">
                                        <p>
                                            Controle de Quadro de Avisos do Condominio BeLife</p>
                                    </div>
                                    <div class="margin">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal" data-backdrop="static" id="btnModal">
                                                Novo Aviso</button>
                                        </div>
                                    </div>
                                    <!--Modal-->

                                    <form action="/Condominio/QuadroAviso" method="POST">

                                        <div class="modal fade" id="myModal">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hfcvIdQuadroAviso" id="hfcvIdQuadroAviso">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onClick="closeModal();">
                                                            <span aria-hidden="true">?</span></button>
                                                        <h4 class="modal-title">
                                                            Quadro de Avisos</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="box-body">
                                                            <div class="form-group">
                                                                <span id="ContentPlaceHolder1_Label1">Titulo</span>
                                                                <input name="titulo" type="text" class="form-control">
                                                            </div>
                                                            <div class="form-group">
                                                                <span id="ContentPlaceHolder1_lblData"> Data do Aviso</span>
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </div>
                                                                    <input name="dataAviso" type="text" id="txtData" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                                                </div>
                                                                <!-- /.input group -->
                                                            </div>
                                                            <div class="form-group">
                                                                <span id="ContentPlaceHolder1_lblDataExpiracao"> Data de Expiração do Aviso</span>
                                                                <div class="input-group">
                                                                    <div class="input-group-addon">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </div>
                                                                    <input name="dataExp" type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                                                </div>
                                                                <!-- /.input group -->
                                                            </div>
                                                            <div class="form-group">
                                                                <span id="ContentPlaceHolder1_lblAviso">Aviso</span>
                                                                <textarea name="mensagemAviso" rows="2" cols="20" class="form-control" style="height:200px;"></textarea>
                                                            </div>
                                                        </div>
                                                        <!-- /.box-body -->
                                                    </div>
                                                    <div class="form-group">
                                                        <input name="mensagem" type="text" id="lblMensagem" disabled="disabled" class="aspNetDisabled textoMensagem" style="background-color:White;">
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal" onClick="closeModal();">
                                                            Fechar</button>

                                                        <input type="submit" value="Salvar" name="flag"  onclick="return pergunta();" class="btn btn-info pull-right">

                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                    </form>




                                    <!-- GRID -->
       


                                    

                                        <div class="box-body">
                                            <div>
                                                <table class="table table-bordered table-striped dataTable" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_dgvAviso" style="border-collapse:collapse;">
                                                    <tbody>
                                                        <tr>
                                                            <th scope="col">Editar</th>
                                                            <th scope="col">Excluir</th>
                                                            <th scope="col">Titulo</th>
                                                            <th scope="col">Data do Aviso</th>
                                                            <th scope="col">Data Expiração</th>
                                                            <th scope="col">Mensagem</th>
                                                        </tr>
                                                        
                                                         <%
                                                            if (listaAviso.size() == 0) {
                                                        %>
                                                    <p>Sem dados de aviso</p>
                                                    <%
                                                    } else {

                                                        for (Aviso aviso : listaAviso) {
                                                    %>

                                                <form action="/Condominio/QuadroAviso"method="POST">
                                                    <tr>


                                                        <td align="center" style="width:5%;">

                                                            <input type="submit"  class="btn btn-info btn-sm pull-right" value="Editar" name="flag"  onclick="return pergunta();">
                                                        </td>

                                                        <td style="width:5%" align="center">

                                                            <input type="submit"  id="" class="btn btn-danger btn-sm pull-right" value="Excluir" name="flag"  onclick="return pergunta();">


                                                        </td>

                                                    <input type="hidden" name="idmsg" value="<%=aviso.getIdQuadroAviso()%>">





                                                    <td style="width:20%;"><input type="text" class="form-control" name="titulomsg" value="<%=aviso.getTitulo()%>"/></td>




                                                    <td style="width:15%;"> <div class="input-group">
                                                            <input type="text" class="form-control" name="datamsg" value="<%=aviso.getData()%>"></div></td>




                                                    <td style="width:15%;">
                                                        <div class="input-group">
                                                            <input type="text" name="dataexpmsg" class="form-control" value="<%=aviso.getDataExp()%>"/>
                                                        </div>
                                                    </td>                                                          
                                                    <td style="width:50%;"><textarea style="width:100%;" type="text" rows="5" name="mensagemAviso" ><%=aviso.getMensagemAviso()%></textarea></td>

                                            </div>                                                    </tr>
                                                    </form>
                                        

                                        <%
                                                    }
                                                }
                                            %>


                                        


                                            </tbody>
                                            </table>
                                        </div>
                                </div>
                                </form>
    
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


</body>
</html>
