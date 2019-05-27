<%@page import="java.util.Objects"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@include file="../../includes/verificar-login.jsp" %>
 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Gerenciar Usuários</title>
		
		<jsp:include page="../../includes/base-head.jsp" />
	</head>
	<body>
		<jsp:include page="../../includes/header-navbar.jsp" />
		
		<div class="container container--custom mt-6">
			
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col" class="text-center"></th>
			      <th scope="col" class="text-center">Nome</th>
			      <th scope="col" class="text-center">E-mail</th>
			      <th scope="col" class="text-center">Sexo</th>
			      
			      <th scope="col" class="text-center"></th>
			      <th scope="col" class="text-center"></th>
			    </tr>
			  </thead>
			  <tbody>
			    <c:forEach items="${alunos}" var="aluno">
					<tr>
				      <th scope="row">${aluno.id}</th>
				      <td class="text-center">${aluno.nome} ${aluno.sobrenome}</td>
				      <td class="text-center">${aluno.email}</td>
				      <td class="text-center">${aluno.sexo}</td>
				     
				      <td class="text-center">
				      	<a href="#">
			      			<i class="fa fa-pencil text-info" class="cursor-pointer"></i>
				      	</a>
				      </td>
				      
				       <td class="text-center">
				      	<a href="/nexus-web/controller?action=ExcluirAluno&idAluno=${aluno.id}">
			      			<i class="fa fa-close text-primary" class="cursor-pointer"></i>
				      	</a>
				      </td>
				    </tr>
				</c:forEach>
			  </tbody>
			</table>
			
			<div class="d-flex justify-content-center mt-5">
				<a class="btn btn-icon btn-3 btn-outline-primary btn-lg"
					href="/nexus-web/pages/aluno/cadastrar.jsp">
					<span class="btn-inner--icon"><i class="fa fa-user-plus"></i></span>
				    <span class="btn-inner--text">Novo Aluno</span>
			    </a>
			</div>
		</div>
		
		<jsp:include page="../../includes/base-scripts.jsp" />
	</body>
</html>