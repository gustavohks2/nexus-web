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
			      <th scope="col" class="text-center">Nome de Usuário</th>
			      <th scope="col" class="text-center">Tipo de Perfil</th>
			    </tr>
			  </thead>
			  <tbody>
			    <c:forEach items="${usuarios}" var="usuario">
					<tr>
				      <th scope="row">${usuario.id}</th>
				      <td class="text-center">${usuario.usuario}</td>
				      <td class="text-center">-</td>
				      <td class="text-center">-</td>
				    </tr>
				</c:forEach>
			  </tbody>
			</table>
		
		</div>
		
		<jsp:include page="../../includes/base-scripts.jsp" />
	</body>
</html>