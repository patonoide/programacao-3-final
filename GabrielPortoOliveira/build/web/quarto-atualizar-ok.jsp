<%-- 
    Document   : quarto-atualizar-ok
    Created on : Dec 8, 2015, 4:25:13 PM
    Author     : paton
--%>
<%@include file= "cabecalho.jsp"%>
<%@page import="modelo.Hotel"%>
<%@page import="modelo.Cliente"%>
<%@page import="modelo.Quarto"%>
<%@page import="dao.QuartoDAO"%>
<%
//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String idquarto = request.getParameter("txtIdquarto");
String numero = request.getParameter("txtNumero");
String idhotel = request.getParameter("hotel"); // Chave estrangeira
String idcliente = request.getParameter("cliente");


QuartoDAO dao = new QuartoDAO();
Quarto obj = dao.buscarPorChavePrimaria(idquarto);


//Montar as FK - chave estrangeira
Cliente objCliente = new Cliente();

objCliente.setIdcliente(idcliente);

Hotel objHotel = new Hotel();
objHotel.setIdhotel(idhotel);


obj.setIdquarto(idquarto);
obj.setNumero(numero);

dao.alterar(obj);
%>
         <h1 class="centro">Atualização do Quarto</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="quarto.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
