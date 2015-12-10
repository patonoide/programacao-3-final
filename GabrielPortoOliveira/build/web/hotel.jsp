<%-- 
    Document   : quarto
    Created on : Nov 24, 2015, 4:28:48 PM
    Author     : paton
--%>

<%@page import="dao.HotelDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Hotel"%>
<%@include file= "cabecalho.jsp"%>
<%
    HotelDAO dao = new HotelDAO();
    
     List <Hotel> hoteis;
    //Verificar se veio algo do filtro, 
    //se vier eu filtro pro nome
    //caso contrário eu trago todos os professores
    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        hoteis = dao.listar(txtFiltro);
    }
    else
    {
        hoteis = dao.listar();
    }
    %>
<div>
    <h1 class="centro">Hotel</h1>

    <div>
        <a href="hotel-cadastrar.jsp">Novo Hotel</a><br />
         <form action="hotel.jsp" method="post">
            <input type="text" name="txtFiltro" />
            <input type="submit" value="Pesquisar"/><br />
        </form>
        <table>
                <tr>
                    <th>Código Hotel</th>
                    
                    <th>CEP</th>
                    <th>CNPJ</th>
                </tr>
                <%
                    for (Hotel hotel:hoteis) {
                %>
                <tr>
                    <td><%=hotel.getIdhotel()%></td>
                    <td><%=hotel.getCep()%></td>
                   <td><%=hotel.getCnpj()%></td>
                    <td><a href="hotel-atualizar.jsp?idhotel=<%=hotel.getIdhotel()%>">Editar</a>
                        <a href="hotel-excluir-ok.jsp?idhotel=<%=hotel.getIdhotel()%>">Excluir</a>
                      
                    </td>

                </tr>


                <% }%>
            </table>

       
    </div>

</div>


</body>
</html>
