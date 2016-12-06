<%@page import="controlers.LoginServ"%>
<%@page import="controlers.LogoutServ"%>
<%@page import="java.util.List"%>
<%@page import="models.OcorrenciaDAO"%>
<%@page import="beans.OcorrenciaMorador"%>

<!DOCTYPE html>
<html>
    <head>
        <%
            String contextPath = request.getContextPath();
        %>
        <%
            List<OcorrenciaMorador> listaOcorrencia = null;
            String nome = null;
            nome = session.getAttribute("nome").toString();
            String idUsuario = session.getAttribute("idUsuario").toString();
            String idPerfil = session.getAttribute("idPerfil").toString();
            if(idPerfil.equals("1"))
            {
               listaOcorrencia = new OcorrenciaDAO().listarOcorrencias();
            }else
            {
           
            listaOcorrencia = new OcorrenciaDAO().listarOcorrencias(idUsuario);
            };


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
                        <li class="active"><a href="<%=contextPath%>/views/home.jsp"><i class="fa fa-home"></i> <span>Inícío</span></a></li>
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
                <!-- Content Header (Page header) -->
                <section class="content-header">

                </section>

                <section class="content">
                    <!-- conteudo) -->

                    <style type="text/css">
                        .botaoEditar {
                            background: url(/imagens/edit.png) no-repeat;
                            cursor: pointer;
                            border: none;
                            width: 25px;
                            height: 30px;
                        }

                        .botaoVisualizar {
                            background: url(/imagens/lupa.png) no-repeat;
                            cursor: pointer;
                            border: none;
                            width: 25px;
                            height: 30px;
                        }

                        .textoMensagem {
                            border: none;
                            color: Red;
                            text-align: center;
                            width: 100%;
                            background-color: #F2F2F2;
                        }
                    </style>
                    <script type="text/javascript">

                        function validaCadastro() {

                            if (document.getElementById("txtData").value == "") {
                                document.getElementById("lblMensagem").value = "Informe a Data da Ocorrência.";
                                document.getElementById("txtData").focus();
                                return false;
                            }
                            if (document.getElementById("txtTitulo").value == "") {
                                document.getElementById("lblMensagem").value = "Informe o Titulo da Ocorrência.";
                                document.getElementById("txtTitulo").focus();
                                return false;
                            }
                            if (document.getElementById("ContentPlaceHolder1_txtOcorrencia").value == "") {
                                document.getElementById("lblMensagem").value = "Informe a Ocorrência.";
                                document.getElementById("ContentPlaceHolder1_txtOcorrencia").focus();
                                return false;
                            }
                        }
                        ;

                        function ExibirHoraAtual(token, id) {
                            var obj = new Object();
                            obj.token = token;
                            obj.id = document.getElementById("hfToken").value;
                            var parametros = JSON.stringify(obj);

                            $.ajax({
                                type: "POST",
                                url: "wfOcorrencia.aspx/testeWebMethod",
                                data: parametros, //"{'id' : 'parametros'}",
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

                            document.getElementById("cboOcorrencia").value = arr[0];
                            document.getElementById("txtData").value = arr[1];
                            document.getElementById("txtTitulo").value = arr[2].replace('Ë', ',');
                            document.getElementById("ContentPlaceHolder1_txtOcorrencia").value = arr[3].replace('Ë', ',');
                            document.getElementById("hfOcorrencia").value = arr[4];

                            openModal();
                        }

                        //Vizualizar
                        function ExibeOcorrencia(token, id) {
                            var obj = new Object();
                            obj.token = token;
                            obj.id = document.getElementById("hfToken").value;
                            var parametros = JSON.stringify(obj);

                            $.ajax({
                                type: "POST",
                                url: "wfOcorrencia.aspx/exibeOcorrencia",
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

                            document.getElementById("txtViewTipoOcorrencia").value = arr[0];
                            document.getElementById("txtViewDataOcorrencia").value = arr[1];
                            document.getElementById("txtViewTituloOcorrencia").value = arr[2].replace('Ë', ',');
                            document.getElementById("txtViewOcorrencia").value = arr[3].replace('Ë', ',');
                            document.getElementById("txtViewStatusOcorrencia").value = arr[4];
                            document.getElementById("txtViewDataResposta").value = arr[5];
                            document.getElementById("txtViewRespostaOcorrencia").value = arr[6].replace('Ë', ',');

                            openModalView();
                        }

                        function pergunta() {

                            if (confirm("Deseja realmente excluir?")) {
                                return true;
                            } else {
                                return false;
                            }
                        }
                    </script>
                    <script type="text/javascript">
                        function openModal() {
                            $('#myModal').modal('show');
                        }

                        var myApp;
                        myApp = myApp || (function () {
                            var pleaseWaitDiv = $('<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false"><div class="modal-header"><h1>Processing...</h1></div><div class="modal-body"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div></div>');
                            return {
                                showPleaseWait: function () {
                                    pleaseWaitDiv.modal();
                                },
                                hidePleaseWait: function () {
                                    pleaseWaitDiv.modal('hide');
                                },
                            };
                        })();

                        function closeModal() {
                            $('#myModal').modal('hide');
                            document.getElementById("cboOcorrencia").value = 1;
                            document.getElementById("txtData").value = "";
                            document.getElementById("txtTitulo").value = "";
                            document.getElementById("ContentPlaceHolder1_txtOcorrencia").value = "";
                            document.getElementById("hfOcorrencia").value = "";
                            document.getElementById("lblMensagem").value = "";
                        }
                    </script>
                    <script type="text/javascript">
                        //Vizualizar
                        function openModalView() {
                            $('#viewModal').modal('show');
                        }

                        function closeModalView() {
                            $('#viewModal').modal('hide');

                            document.getElementById("txtViewTipoOcorrencia").value = "";
                            document.getElementById("txtViewDataOcorrencia").value = "";
                            document.getElementById("txtViewTituloOcorrencia").value = "";
                            document.getElementById("txtViewOcorrencia").value = "";
                            document.getElementById("txtViewStatusOcorrencia").value = "";
                            document.getElementById("txtViewRespostaOcorrencia").value = "";

                        }
                    </script>
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

                        <!-- /.box-header -->
                        <div class="box">
                            <div class="box-header">
                                <h2>
                                    <span class="ion ion-speakerphone"></span><span class="glyphicon-class">Ocorrências</span></h2>
                            </div>
                            <div class="callout callout-info">
                                <p>
                                    Cadastro de Ocorrências
                                </p>
                            </div>
                            <!-- CADASTRO -->
                            <div class="margin">

                                <div class="btn-group">
                                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal" data-backdrop="static" id="Button1">Nova Ocorrência</button>
                                </div>
                            </div>
                            <!-- Modal -->
                            <div id="myModal" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <form action="<%=contextPath%>/OcorrenciaServ" method="POST">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">
                                                    ×</button>
                                                <h4 class="modal-title">Cadastro de Ocorrência</h4>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <input type="hidden" name="ctl00$ContentPlaceHolder1$hfOcorrencia" id="hfOcorrencia">
                                                    <input type="hidden"  id="ChaveOcorrencia" name="ChaveOcorrencia" value=""/>
                                                    <span id="ContentPlaceHolder1_lblCombo"> Tipo de ocorrência: </span>

                                                    <select name="tipoOcorrencia" id="cboOcorrencia">
                                                        <option value="Administracao">Administração</option><!-- 1 -->
                                                        <option value="Convivencia">Convivência</option><!-- 2 -->
                                                        <option value="Limpeza">Limpeza</option><!-- 3 -->
                                                        <option value="Manutencao">Manutenção</option><!-- 4 -->
                                                        <option value="Seguranca">Segurança</option><!-- 5 -->
                                                        <option value="Outros">Outros</option><!-- 6 -->
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <span id="ContentPlaceHolder1_lblData"> Data da Ocorrência</span>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                        <input name="dataOcorrencia" type="text" id="txtData" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                                <div class="form-group">
                                                    <span id="ContentPlaceHolder1_Label1"> Título</span>
                                                    <input name="tituloOcorrencia" type="text" id="txtTitulo" class="form-control" placeholder="Digite o titulo ocorrência ...">
                                                </div>
                                                <div class="form-group">
                                                    <span id="ContentPlaceHolder1_Label2"> Ocorrência</span>
                                                    <textarea name="ocorrencia" rows="5" cols="20" id="ContentPlaceHolder1_txtOcorrencia" class="form-control" placeholder="Digite a ocorrência ..."></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <input name="ctl00$ContentPlaceHolder1$lblMensagem" type="text" id="lblMensagem" disabled="disabled" class="aspNetDisabled textoMensagem">
                                                </div>
                                            </div>
                                            <div class="box-footer">
                                                <button type="button" class="btn btn-default" onclick="closeModal();">
                                                    Fechar</button>
                                                <input type="submit" name="flag" value="Gravar" onclick="return validaCadastro();" id="ContentPlaceHolder1_btnSalvar" class="btn btn-info pull-right">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Visualizar Modal -->
                            <div id="viewModal" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">
                                                ×</button>
                                            <h4 class="modal-title">Ocorrência</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <span id="ContentPlaceHolder1_lblViewTipoOcorrencia"> Tipo de ocorrência: </span>
                                                    <input name="ctl00$ContentPlaceHolder1$txtViewTipoOcorrencia" type="text" id="txtViewTipoOcorrencia" disabled="disabled" class="aspNetDisabled form-control" style="background-color:White;">
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <span id="ContentPlaceHolder1_lblViewDataOcorrencia"> Data da Ocorrência</span>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                        <input name="ctl00$ContentPlaceHolder1$txtViewDataOcorrencia" type="text" id="txtViewDataOcorrencia" disabled="disabled" class="aspNetDisabled form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="" style="background-color:White;">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <span id="ContentPlaceHolder1_lblViewTituloOcorrencia"> Título</span>
                                                <input name="ctl00$ContentPlaceHolder1$txtViewTituloOcorrencia" type="text" id="txtViewTituloOcorrencia" disabled="disabled" class="aspNetDisabled form-control" style="background-color:White;">
                                            </div>
                                            <div class="form-group">
                                                <span id="ContentPlaceHolder1_lblViewOcorrencia"> Ocorrência</span>
                                                <textarea name="ctl00$ContentPlaceHolder1$txtViewOcorrencia" rows="5" cols="20" id="txtViewOcorrencia" disabled="disabled" class="aspNetDisabled form-control" style="background-color:White;"></textarea>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <span id="ContentPlaceHolder1_lblViewStatusOcorrencia"> Situação da Ocorrência</span>
                                                    <input name="ctl00$ContentPlaceHolder1$txtViewStatusOcorrencia" type="text" id="txtViewStatusOcorrencia" disabled="disabled" class="aspNetDisabled form-control" style="background-color:White;">
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <span id="ContentPlaceHolder1_Label3"> Data da Resposta</span>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                        <input name="ctl00$ContentPlaceHolder1$txtViewDataResposta" type="text" id="txtViewDataResposta" disabled="disabled" class="aspNetDisabled form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="" style="background-color:White;">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <span id="ContentPlaceHolder1_lblViewRespostaOcorrencia"> Resposta</span>
                                                <textarea name="ctl00$ContentPlaceHolder1$txtViewRespostaOcorrencia" rows="5" cols="20" id="txtViewRespostaOcorrencia" disabled="disabled" class="aspNetDisabled form-control" style="background-color:White;"></textarea>
                                            </div>
                                        </div>
                                        <div class="box-footer">
                                            <button type="button" class="btn btn-default" onclick="closeModalView();">
                                                Fechar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Visualizar Modal-->
                            <!-- ModalPopupExtender -->
                            <div class="box box-tool box-solid">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Ocorrências Cadastradas</h3>

                                    <!-- /.box-tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body" style="display: block;">
                                    <div class="box-body">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$hfToken" id="hfToken" value="1673">
                                        <div>
                                            <table class="table table-bordered table-striped dataTable" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_dgvOcorrencia" style="border-collapse:collapse;">
                                                <tbody>
                                                    <tr>
                                                        <th scope="col">Visualizar</th>
                                                        <th scope="col">Editar</th>
                                                        <th scope="col">Excluir</th>
                                                        <th scope="col">Ocorrência</th>
                                                        <th scope="col">Tipo</th>
                                                        <th scope="col">Data </th>
                                                        <th scope="col">Situação</th>
                                                    </tr>
                                                    <%
                                                        if (listaOcorrencia.size() == 0) {
                                                    %>
                                                <p>Nenhum Registro Encontrado</p>
                                                <%
                                                } else {

                                                    for (OcorrenciaMorador oco : listaOcorrencia) {
                                                %>
                                                <form action="<%=contextPath%>/OcorrenciaServ" method="POST">
                                                    <tr>
                                                        <td><a href="<%=contextPath%>/views/exibeOcorrencia.jsp?token=<%=oco.getChaveOcorrencia()%>">Exibir</a></td>
                                                        <input type="hidden" class="form-control" id="idOcorrenciaM" name="idOcorrenciaM" value="<%=oco.getIdOcorrencia()%>" />
                                                        <td><input type="submit" class="btn btn-info pull-right" value="Editar" name="flag" id="Button1" /></td>
                                                        <td><input type="submit" class="btn btn-danger pull-right" value="Excluir" name="flag" id="Button1" /></td>
                                                        <td><input type="text" class="form-control" id="tituloOcorrenciaM" name="tituloOcorrenciaM" placeholder="Titulo ocorrência" value="<%=oco.getTituloOcorrencia()%>" /></td>
                                                        <td><input type="text" class="form-control" id="tipoOcorrenciaM" name="tipoOcorrenciaM" placeholder="Tipo ocorrência" disabled value="<%=oco.getTipoOcorrencia()%>" /></td>
                                                            <!--<select name="tipoDaOcorrencia">
                                                            <option selected="selectd"></%=oco.getTipoOcorrencia()%></option>
                                                            <option value="Administracao">Administração</option>
                                                            <!-- 1<option value="Convivencia">Convivência</option>
                                                                <option value="Limpeza">Limpeza</option>
                                                                <option value="Manutencao">Manutenção</option>
                                                                <option value="Seguranca">Segurança</option> 
                                                                <option value="Outros">Outros</option>
                                                            </select>-->
                                                        <!-- <td colspan="8">Nenhum Registro Encontrado</td> -->
                                                        <!--<td><input type="text" class="form-control" id="tipoOcorrenciaM" name="tipoOcorrenciaM" placeholder="Tipo ocorrência" value="</%=oco.getTipoOcorrencia()%>" /></td>-->
                                                        <td><input type="text" class="form-control" id="dataOcorrenciaM" name="dataOcorrenciaM" placeholder="Data ocorrência" disabled value="<%=oco.getDataOcorrencia()%>" /></td>
                                                        <td><input type="text" class="form-control" id="situacaoOcorrenciaM" name="situacaoOcorrenciaM" disabled value="<%=oco.getStatusOcorrencia()%>" /></td>
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


        <!-- jQuery 2.1.4 -->
        <script src="<%=contextPath%>/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.5 -->
        <script src="<%=contextPath%>/bootstrap/js/bootstrap.min.js"></script>
        <!-- Select2 -->
        <script src="<%=contextPath%>/plugins/select2/select2.full.min.js"></script>
        <!-- InputMask -->
        <script src="<%=contextPath%>/plugins/input-mask/jquery.inputmask.js"></script>
        <script src="<%=contextPath%>/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>

        <!-- date-range-picker -->


        <!-- AdminLTE App -->
        <script src="<%=contextPath%>/dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<%=contextPath%>/dist/js/demo.js"></script>
        <!-- Page script -->
        <script>
                                                $(function () {
                                                    //Initialize Select2 Elements
                                                    $(".select2").select2();

                                                    //Datemask dd/mm/yyyy
                                                    $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
                                                    //Datemask2 mm/dd/yyyy
                                                    $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
                                                    //Money Euro
                                                    $("[data-mask]").inputmask();

                                                });
        </script>

    </body>
</html>
