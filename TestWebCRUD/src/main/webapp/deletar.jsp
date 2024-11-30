<%-- 
    Document   : deletar
    Created on : 31 de out. de 2024, 09:02:57
    Author     : Milena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String titulo = request.getParameter("titulo");
            if(titulo == null) {
        %>
        <form action="deletar.jsp" method="POST" border="1">
            TITULO <input type="text" name="titulo"><br>
            <input type="submit" value="DELETAR">
        </form>
        <%
            }else{
        %>
        <h1>LIVRO DELETADO COM SUCESSO</h1>
        <%
            }
        %>
    </body>
</html>
