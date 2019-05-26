<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../../includes/verificar-login.jsp" %>
<html lang="pt-br">
	<head>
		<title>Dashboard Personal</title>
		<jsp:include page="../../includes/base-head.jsp" />
	</head>
	<body>
		<jsp:include page="../../includes/header-navbar.jsp" />
	
		<div class="container mt-5">
			<div class="dashboard">
				<div class="dashboard__row">
               		<div class="dashboard__action-card">
               			<a href="#">
               				<div class="dashboard__action-card-content">
               					<i class="ni ni-circle-08"></i>
               					<h4>Aluno</h4>
               				</div>
               			</a>
               		</div>
               		
               		<div class="dashboard__action-card">
               			<a href="#">
               				<div class="dashboard__action-card-content">
               					<i class="ni ni-user-run"></i>
               					<h4>Treinos</h4>
               				</div>
               			</a>
               		</div>
              	</div>
              		
            	<div class="dashboard__row mt-5">
               		<div class="dashboard__action-card">
               			<a href="#">
               				<div class="dashboard__action-card-content">
               					<i class="ni ni-calendar-grid-58"></i>
               					<h4>Aluno</h4>
               				</div>
               			</a>
               		</div>
               		
               		<div class="dashboard__action-card">
               			<a href="/nexus-web/controller?action=ListarUsuarios">
               				<div class="dashboard__action-card-content">
               					<i class="ni ni-badge"></i>
               					<h4>Usuários</h4>
               				</div>
               			</a>
               		</div>
           		</div>
			</div>
		</div>
	
		<jsp:include page="../../includes/base-scripts.jsp" />
	</body>
</html>
