<%-- 
    Document   : menu
    Created on : 23 de out. de 2024, 07:55:12
    Author     : Milena
--%>

<%@page import="data.Banco"%>
<%
    String login = request.getParameter("login");
    String senha = request.getParameter("senha");
    
    out.print("LOGIN = " + login);
    out.print("<br>");
    out.print("SENHA = " + senha);
    out.print("<br>");
    out.print("<br>");
    
    Banco b = new Banco();
    String nomeCompleto = b.getUsuario(login);
    String senhaBanco = b.getSenha(login);
    
    if(senha.equals(senhaBanco)){
    
        out.println("<h1>CADASTRAR LIVROS</h1>");
        out.println("<h1>CONSULTAR LIVROS</h1>");
        out.println("<h1>ATUALIZAR LIVROS</h1>");
        out.println("<h1>DELETAR LIVROS</h1>");
    }else{
            out.println("<h1>USU�RIO OU SENHA INCORRRETOS</h1>");
    }
    
    out.print("Nome Completo = " + nomeCompleto);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>