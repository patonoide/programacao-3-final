<%-- 
    Document   : hotel-excluir-ok
    Created on : Nov 25, 2015, 6:43:38 PM
    Author     : paton
--%>

<%@page import="modelo.Hotel"%>
<%@page import="dao.HotelDAO"%>
<%@include file="cabecalho.jsp"%>
<%
 String idhotel= request.getParameter("idhotel");
HotelDAO dao = new HotelDAO();
Hotel obj = dao.buscarPorChavePrimaria(idhotel);
dao.excluir(obj);
%>
         <h1 class="centro">Exclusão do Hotel</h1>
            
         <div>
             O Registro <%=idhotel%> foi excluído com sucesso.<br />
             <a href="hotel.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
