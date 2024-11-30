<%-- 
    Document   : cadastrar
    Created on : 31 de out. de 2024, 09:02:18
    Author     : Milena
--%>

<%@page import="model.Livro"%>
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
            String titulo = request.getParameter("titulo");
            String autor = request.getParameter("autor");
            String edicao = request.getParameter("edicao");
            String editora = request.getParameter("editora");
            String ano = request.getParameter("ano");
            String codigo = request.getParameter("codigo");
            String exemplares = request.getParameter("exemplares");
            
            if(id == null) {
        %>
        
        <form action="cadastrar.jsp" method="POST" border="1">
            ID               <input type="text" name="id"><br>
            TITULO           <input type="text" name="titulo"><br>
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

                Livro l = new Livro();
                
                l.setId(Integer.parseInt(id));
                l.setTitulo(titulo);
                l.setAutor(autor);
                l.setEdicao(Integer.parseInt(edicao));
                l.setEditora(editora);
                l.setAno(Integer.parseInt(ano));
                l.setCodigo(codigo);
                l.setExemplares(Integer.parseInt(exemplares));

                b.cadastrarLivro(l);
            }
        %>
        
        <h1>LIVRO CADASTRADO COM SUCESSO</h1>
    </body>
</html>
