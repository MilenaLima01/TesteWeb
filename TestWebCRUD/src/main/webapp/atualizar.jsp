<%-- 
    Document   : atualizar
    Created on : 31 de out. de 2024, 09:20:25
    Author     : Milena
--%>

<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String tituloAntigo = request.getParameter("tituloantigo");
            String tituloNovo = request.getParameter("titulonovo");
            String autor = request.getParameter("autor");
            String edicao = request.getParameter("edicao");
            String editora = request.getParameter("editora");
            String ano = request.getParameter("ano");
            String codigo = request.getParameter("codigo");
            String exemplares = request.getParameter("exemplares");
            
            if(id == null) {
        %>
        
        <form action="atualizar.jsp" method="POST" border="1">
            TITULO ANTIGO    <input type="text" name="tituloantigo"><br>
            TITULO NOVO      <input type="text" name="titulonovo"><br>
            AUTOR            <input type="text" name="autor"><br>
            EDICAO           <input type="text" name="edicao"><br>
            EDITORA          <input type="text" name="editora"><br>
            ANO              <input type="text" name="ano"><br>
            CODIGO           <input type="text" name="codigo"><br>
            EXEMPLARES       <input type="text" name="exemplares"><br>
            <input type="submit" value="ENVIAR">
        </form>
        
        <%
            }else{
                Banco b = new Banco();

                b.atualizarLivro(tituloAntigo, tituloNovo, autor, edicao, editora, ano, codigo, exemplares);
        %>
        
        <h1>LIVRO ATUALIZADO COM SUCESSO</h1>
        
        <%
            }
        %>
    </body>
</html>
