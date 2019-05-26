<%@page import="java.util.Objects"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
		
		<c:forEach item="usuarios" var="usuario">
		</c:forEach>
		
		<jsp:include page="../../includes/base-scripts.jsp" />
	</body>
</html>