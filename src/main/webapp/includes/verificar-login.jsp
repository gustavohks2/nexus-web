<%@page import="java.util.Objects"%>

<%
	if (Objects.isNull(session.getAttribute("usuario"))) response.sendRedirect("/nexus-web/index.jsp");
%>