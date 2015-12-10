<%-- 
    Document   : hotel-cadastrar-ok
    Created on : Nov 25, 2015, 6:42:56 PM
    Author     : paton
--%>

<%@page import="dao.HotelDAO"%>
<%@page import="modelo.Hotel"%>
<%@include file="cabecalho.jsp"%>
<%
    //buscar as informacoes do formulario
    String cep= request.getParameter("txtCep");
    String idhotel=request.getParameter("txtIdhotel");
    String cnpj=request.getParameter("txtCnpj");
   
    
    //criar meu objeto modelo
    Hotel hotel=new Hotel();
    
    //Adiciono os valores enviados 
    
    hotel.setIdhotel(idhotel);
    hotel.setCep(cep);
    hotel.setCnpj(cnpj);
    
    // instanciar minha classe de acesso  a dados
    HotelDAO dao= new HotelDAO();
    
    //manda inserir
    dao.incluir (hotel);
    %>
         <h1 class="centro">Cadastro do Hotel</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
            
             <a href="hotel.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
