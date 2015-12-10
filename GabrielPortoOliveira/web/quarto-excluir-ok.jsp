<%-- 
    Document   : quarto-excluir-ok
    Created on : Dec 8, 2015, 4:25:42 PM
    Author     : paton
--%>
<%@include file= "cabecalho.jsp"%>
<%@page import="modelo.Quarto"%>
<%@page import="dao.QuartoDAO"%>
<%
    //receber a chave primária
    //buscar o registro correspondente a C.P.
    //excluir o registro
    if(request.getParameter("idquarto") == null)
    {
        response.sendRedirect("quarto.jsp");
        return;
    }
    
    String idquarto = request.getParameter("idquarto");
    QuartoDAO dao = new QuartoDAO();
    Quarto obj = dao.buscarPorChavePrimaria(idquarto);
    String msg = "";
    if(obj!=null)
    {
        dao.excluir(obj);
        msg = "Registro excluído com sucesso";
    }
    else
    {
       msg = "Erro ao excluir o registro"; 
    }
    
    
%>
         <h1 class="centro">Exclusão do Quarto</h1>
            
         <div>
             <%=msg%>.<br />
             <a href="quarto.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
