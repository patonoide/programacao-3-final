<%-- 
    Document   : hotel-atualizar-ok
    Created on : Nov 25, 2015, 6:43:27 PM
    Author     : paton
--%>

<%@page import="dao.HotelDAO"%>
<%@page import="modelo.Hotel"%>
<%@include file="cabecalho.jsp"%>
<%
    //buscar as informacoes do formulario
    String idhotel= request.getParameter("txtIdhotel");
    String cep = request.getParameter("txtCep");
    String cnpj = request.getParameter("txtCnpj");
    
    
    //criar meu objeto modelo
    HotelDAO dao=new HotelDAO();
    Hotel obj = dao.buscarPorChavePrimaria(idhotel);
    //Adiciono os valores enviados 
    obj.setIdhotel(idhotel);
    obj.setCep(cep);
    obj.setCnpj(cnpj);
    
    
    //manda inserir
    dao.alterar (obj);
    %>
         <h1 class="centro">Cadastro do Hotel</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
            
             <a href="hotel.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
