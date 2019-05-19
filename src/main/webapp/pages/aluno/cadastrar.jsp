<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastrar Aluno</title>

    <link rel="icon" href="../../img/dumbbell.svg">

    <!-- Bootstrap 4 -->

    <link rel="stylesheet" href="../../node_modules/bootstrap/dist/css/bootstrap.min.css">

    <!-- Argon Design System - Bootstrap 4 Theme -->

    <!-- Argon Design System * Vendor -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="../../node_modules/argon-design-system-free/assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
    <link href="../../node_modules/argon-design-system-free/assets/vendor/font-awesome/css/font-awesome.min.css"
        rel="stylesheet">
    <!-- Argon Design System * Theme -->
    <link type="text/css" href="../../node_modules/argon-design-system-free/assets/css/argon.min.css" rel="stylesheet">

    <link rel="stylesheet" href="../../css/main.css?v=1">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-default">
        <div class="container">
            <a class="navbar-brand" href="#"> NEXUS </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-default"
                aria-controls="navbar-default" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar-default">
                <div class="navbar-collapse-header">
                    <div class="row">
                        <div class="col-6 collapse-brand">
                            <a href="index.html"> <img src="../../img/dumbbell.svg"></a>
                        </div>
                        <div class="col-6 collapse-close">
                            <button type="button" class="navbar-toggler" data-toggle="collapse"
                                data-target="#navbar-default" aria-controls="navbar-default" aria-expanded="false"
                                aria-label="Toggle navigation">
                                <span></span> <span></span>
                            </button>
                        </div>
                    </div>
                </div>

                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link nav-link-icon" href="#"> <i class="ni ni-favourite-28"></i>
                            <span class="nav-link-inner--text d-lg-none">Discover</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-icon" href="#"> <i class="ni ni-notification-70"></i> <span
                                class="nav-link-inner--text d-lg-none">Profile</span>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link nav-link-icon" href="#" id="navbar-default_dropdown_1" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="ni ni-settings-gear-65"></i> <span
                                class="nav-link-inner--text d-lg-none">Settings</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbar-default_dropdown_1">
                            <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another
                                action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="mt-5">
        <div class="container">
            <h2 class="text-center">
                <span class="mr-4">Registrar Novo Aluno</span>
                <img width="30" src="../../img/dumbbell.svg">
            </h2>

            <div class="card mt-5">
                <div class="card-body">
                    <form action="/nexus-web/controller?action=CadastrarAluno" method="POST" id="form-cadastrar-aluno">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Nome</label>
                                    <input type="text" name="nome" class="form-control" id="input-nome"
                                        placeholder="João Henrique">
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>Sobrenome</label>
                                    <input type="text" name="sobrenome" class="form-control" id="input-sobrenome"
                                        placeholder="da Silva Nunes">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Data de Nascimento</label>
                                    <input type="text" name="dataNascimento" class="form-control datepicker"
                                        id="input-data-nascimento" placeholder="DD/MM/AAAA">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>E-mail</label>
                                    <input type="email" name="email" class="form-control" id="inputEmail"
                                        placeholder="example@mail.com">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Celular</label>
                                    <input type="text" name="celular" class="form-control" id="input-celular"
                                        placeholder="(99) 9 9999-9999">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Telefone Fixo</label>
                                    <input type="text" name="telefoneFixo" class="form-control" id="input-telefone-fixo"
                                        placeholder="(99) 3333-3333">
                                </div>
                            </div>
                        </div>

                        <div class="row mt-5">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Peso</label>
                                    <input type="text" name="peso" class="form-control" id="input-peso"
                                        placeholder="65">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Altura</label>
                                    <input type="text" name="altura" class="form-control" id="input-altura"
                                        placeholder="1.80">
                                </div>
                            </div>
                            <div class="col-md-3 ml-2">
                                <label>Sexo</label>
                                <div class="d-flex flex-row ml-3">
                                    <div class="custom-control custom-radio mb-3 p-2 mr-5">
                                        <input name="sexo" class="custom-control-input" id="masculino" type="radio"
                                            value="masculino">
                                        <label class="custom-control-label" for="masculino">Masculino</label>
                                    </div>
                                    <div class="custom-control custom-radio mb-3 p-2 ml-5">
                                        <input name="sexo" class="custom-control-input" id="feminino" type="radio"
                                            value="feminino">
                                        <label class="custom-control-label" for="feminino">Feminino</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div style="width: 40%; margin: auto;" class="mt-5">
                            <div class="row no-gutters">
                                <div class="col-md-6">
                                    <button class="btn btn-icon btn-3 btn-primary" type="submit">
                                        <span class="btn-inner--icon">
                                            <i class="ni ni-send"></i>
                                        </span>
                                        <span class="btn-inner--text">
                                            Salvar
                                        </span>
                                    </button>
                                </div>
                                <div class="col-md-6">
                                    <button class="btn btn-icon btn-3 btn-outline-primary" type="button">
                                        <span class="btn-inner--icon">
                                            <i class="ni ni-basket"></i>
                                        </span>
                                        <span class="btn-inner--text">
                                            Limpar Campos
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </main>

    <!-- Scripts de terceiros (Bibliotecas, Frameworks, etc...)-->
    <script src="../../node_modules/jquery/dist/jquery.min.js"></script>
    <script src="../../node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../../node_modules/argon-design-system-free/assets/js/argon.min.js"></script>
    <script
        src="../../node_modules/argon-design-system-free/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <script src="../../node_modules/jquery-mask-plugin/dist/jquery.mask.min.js"></script>

    <!-- Scripts do Projeto -->
    <script src="../../js/pages/aluno.js"></script>
</body>

</html>