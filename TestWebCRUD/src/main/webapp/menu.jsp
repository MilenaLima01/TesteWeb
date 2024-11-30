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
    
        out.println("<h1><a href='cadastrar.jsp'>CADASTRAR LIVROS</a></h1>");
        out.println("<h1><a href='consultar.jsp'>CONSULTAR LIVROS</a></h1>");
        out.println("<h1><a href='atualizar.jsp'>ATUALIZAR LIVROS</a></h1>");
        out.println("<h1><a href='deletar.jsp'>DELETAR LIVROS</a></h1>");
    }else{
            out.println("<h1>USUÁRIO OU SENHA INCORRRETOS</h1>");
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
        <h1>Login</h1>
    </body>
</html>
