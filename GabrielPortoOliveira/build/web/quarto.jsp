<%-- 
    Document   : quarto
    Created on : Dec 2, 2015, 4:43:38 PM
    Author     : paton
--%>

<%@page import="dao.QuartoDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Quarto"%>
<%@include file= "cabecalho.jsp"%>
<%
    QuartoDAO dao = new QuartoDAO();
    List <Quarto> quartos;
    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        quartos=dao.listar(txtFiltro);
    }
    else
    {
        quartos = dao.listar();
    }
    %>
   
<div>
    <h1 class="centro">Quartos</h1>

    <div>
        <a href="quarto-cadastrar.jsp">Novo Quarto</a><br />
         <form action="quarto.jsp" method="post">
            <input type="text" name="txtFiltro" />
            <input type="submit" value="Pesquisar"/><br />
            <table>
                <tr>
                    <th>Código quarto</th>
                    <th>numero</th>
                    
                    <th>Ações</th>
                </tr>
                <%
                    for (Quarto quarto:quartos) {
                %>
                <tr>
                    <td><%=quarto.getIdquarto()%></td>
                    <td><%=quarto.getNumero()%></td>
                    
                    <td><a href="quarto-atualizar.jsp?idquarto=<%=quarto.getIdquarto()%>">Editar</a>
                        <a href="quarto-excluir-ok.jsp?idquarto=<%=quarto.getIdquarto()%>">Excluir</a>
                    </td>

                </tr>


                <% }%>
            </table>

        </form>
    </div>
</div>
</body>
</html>

