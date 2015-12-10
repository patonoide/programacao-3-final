<%-- 
    Document   : quarto-cadastrar-ok
    Created on : Dec 3, 2015, 2:09:48 PM
    Author     : paton
--%>
<%@include file= "cabecalho.jsp"%>
<%@page import="modelo.Cliente"%>
<%@page import="modelo.Quarto"%>
<%@page import="dao.QuartoDAO"%>
<%@page import="modelo.Hotel"%>
<%@page import="dao.HotelDAO"%>
<%
//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String idhotel = request.getParameter("Idhotel");
String idcliente = request.getParameter("Idcliente");
String idquarto = request.getParameter("txtIdquarto"); // Chave estrangeira
String numero = request.getParameter("txtNumero");

QuartoDAO dao = new QuartoDAO();
Quarto obj = new Quarto();

//Montar as FK - chave estrangeira
Hotel objHotel = new Hotel();

objHotel.setIdhotel(idhotel);

Cliente objCliente = new Cliente();
objCliente.setIdcliente(idcliente);

//populando o obj disciplina
obj.setIdquarto(idquarto);
obj.setNumero(numero);
obj.setIdhotel(objHotel);
obj.setIdcliente(objCliente);

dao.incluir(obj);


%>
         <h1 class="centro">Cadastro de Disciplina</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <a href="quarto.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
