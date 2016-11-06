<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Assembleia</title>    
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <%
            String contextPath = request.getContextPath();
            System.out.println("[EU] Home.jsp - contextPath() " + contextPath);
        %>
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
                                    <img src="dist/img/user9.jpg" class="user-image" alt="User Image">
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span class="hidden-xs">Rangel Paolo</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- The user image in the menu -->
                                    <li class="user-header">
                                        <img src="dist/img/user9.jpg" class="img-circle" alt="User Image">
                                        <p>
                                            Rangel Paolo - Estagiário

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
                        <li class="active">
                            <a href="<%=contextPath%>/views/home.jsp"><i class="fa fa-home"></i> <span>Inícío</span></a></li>
                        <li><a href="<%=contextPath%>/views/administradora.jsp"><i class="fa fa-files-o"></i> <span>Administradora</span></a></li>
                        <li><a href="<%=contextPath%>/views/aloSindico.jsp"><i class="fa fa-phone"></i> <span>Alô Sindico</span></a></li>
                        <li><a href="<%=contextPath%>/views/assembleia.jsp"><i class="fa fa-group"></i> <span>Assembléia</span></a></li>
                        <li><a href="<%=contextPath%>/views/ocorrencia.jsp"><i class="fa fa-bullhorn"></i> <span>Ocorrência</span></a></li>
                        <li><a href="<%=contextPath%>/views/aviso.jsp"><i class="fa fa-thumb-tack"></i> <span>Quadro Aviso</span></a></li>
                        <li><a href="<%=contextPath%>/views/suporte.jsp"><i class="fa fa-wrench"></i> <span>Suporte Técnico</span></a></li>
                        </li>
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
                            <div class="modal fade" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <input type="hidden" name="ctl00$ContentPlaceHolder1$hfAssembleia" id="hfAssembleia">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="closeModal();">
                                                <span aria-hidden="true">×</span></button>
                                            <h4 class="modal-title">
                                                Assembleia</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="box-body">
                                                <div class="form-group">
                                                    <label>
                                                        Título:</label>
                                                    <input name="ctl00$ContentPlaceHolder1$txtTitulo" type="text" id="ContentPlaceHolder1_txtTitulo" disabled="disabled" class="aspNetDisabled form-control" placeholder="Digite aqui ..." style="background-color:White;">
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        Ordem do dia:</label>
                                                    <textarea name="ctl00$ContentPlaceHolder1$txtOrdem" rows="2" cols="20" id="ContentPlaceHolder1_txtOrdem" disabled="disabled" class="aspNetDisabled form-control" placeholder="Digite aqui ..." style="background-color:White;"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        Data:</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                        <input name="ctl00$ContentPlaceHolder1$txtData" type="text" id="txtData" disabled="disabled" class="aspNetDisabled form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask="" style="background-color:White;">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>
                                                        Horário:</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-clock-o"></i>
                                                        </div>
                                                        <input name="ctl00$ContentPlaceHolder1$txtHorario" type="text" id="txtHorario" disabled="disabled" class="aspNetDisabled form-control" data-inputmask="'alias': 'hh/MM/ss'" data-mask="" style="background-color:White;">
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label>
                                                        Local:
                                                    </label>
                                                    <input name="ctl00$ContentPlaceHolder1$txtLocal" type="text" id="txtLocal" disabled="disabled" class="aspNetDisabled form-control" placeholder="Digite aqui ..." style="background-color:White;">
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        Torres:</label>
                                                    <select name="ctl00$ContentPlaceHolder1$cboTorre" id="cboTorre" disabled="disabled" class="aspNetDisabled form-control" style="background-color:White;">
                                                        <option selected="selected" value="1">Todas</option>
                                                        <option value="2">A</option>
                                                        <option value="3">B</option>
                                                        <option value="4">C</option>
                                                        <option value="5">D</option>
                                                        <option value="6">E</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal" onclick="closeModal();">
                                                Fechar</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
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
                                                <tbody><tr>
                                                        <th scope="col">Detalhes</th><th scope="col">Download ATA</th><th scope="col">Titulo</th><th scope="col">Data</th><th scope="col">Horário</th>
                                                    </tr><tr>
                                                        <td colspan="7">Nenhum Registro Encontrado</td>
                                                    </tr>
                                                </tbody></table>
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

<script src="<%=contextPath%>/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="<%=contextPath%>/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=contextPath%>/dist/js/app.min.js"></script>

</body>
</html>
