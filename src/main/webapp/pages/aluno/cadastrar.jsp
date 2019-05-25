<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

	<head>
	    <title>Cadastrar Aluno</title>
		<jsp:include page="../../includes/base-head.jsp"/>
	</head>
	
	<body>
	    <jsp:include page="../../includes/header-navbar.jsp"/>
	
	    <main class="mt-5">
	        <div class="container">
	            <h3 class="text-center">
	                <span class="mr-4 text-uppercase">Registrar Novo Aluno</span>
	                <i class="ni ni-single-02 text-primary"></i>
	            </h3>
	
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
	                                    <button class="btn btn-icon btn-3 btn-outline-primary" type="reset">
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
	
	    <jsp:include page="../../includes/base-scripts.jsp"/>
	</body>

</html>