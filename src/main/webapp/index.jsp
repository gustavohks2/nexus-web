<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.ltp.nexus.model.dao.AlunoDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            AlunoDAO alunoDAO = new AlunoDAO();
            out.println(alunoDAO.getString());
        %>
    </body>
</html>
