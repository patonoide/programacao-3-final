
<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
 String idcliente= request.getParameter("idcliente");
ClienteDAO dao = new ClienteDAO();
Cliente obj = dao.buscarPorChavePrimaria(idcliente);
dao.excluir(obj);
%>
         <h1 class="centro">Exclusão do Cliente</h1>
            
         <div>
             O Registro <%=idcliente%> foi excluído com sucesso.<br />
             <a href="cliente.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
