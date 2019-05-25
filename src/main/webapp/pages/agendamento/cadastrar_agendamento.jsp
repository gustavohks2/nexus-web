<%-- 
    Document   : cadastrar_agendamento
    Created on : 25/05/2019, 19:05:33
    Author     : Wellyson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

	<head>
	    <title>Agendamento</title>
		<jsp:include page="../../includes/base-head.jsp"/>
	</head>
	
	<body>
	    <jsp:include page="../../includes/header-navbar.jsp"/>
	
	    <main class="mt-5">
	        <div class="container">
	            <h3 class="text-center">
	                <span class="mr-4 text-uppercase">Registrar Novo Agendamento</span>
	                <i class="ni ni-book-bookmark"></i>
	            </h3>
	
	            <div class="card mt-5">
	                <div class="card-body">
	                    <form action="/nexus-web/controller?action=AgendarAluno" method="POST" id="form-agendar-aluno">
	                        <div class="row">
	                            
                                    
	
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
