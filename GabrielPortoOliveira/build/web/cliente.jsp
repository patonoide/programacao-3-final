



<%-- 
    Document   : cliente
    Created on : Nov 24, 2015, 4:28:58 PM
    Author     : paton
--%>

<%@page import="dao.ClienteDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Cliente"%>
<%@include file= "cabecalho.jsp"%>
<%
    ClienteDAO dao = new ClienteDAO();
    
    
    List <Cliente> clientes;

    if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        clientes = dao.listar(txtFiltro);
    }
    else
    {
        clientes = dao.listar();
    }
    %>
<div>
    <h1 class="centro">Cliente</h1>

    <div>
        <a href="cliente-cadastrar.jsp">Novo Cliente</a><br />
        <form action="cliente.jsp" method="post">
            <input type="text" name="txtFiltro" />
            <input type="submit" value="Pesquisar"/><br />
        </form>
            <table>
                <tr>
                    <th>Código Cliente</th>
                    <th>Nome</th>
                    <th>Sexo</th>
                    <th>Idade</th>
                    <th>Ações</th>
                </tr>
                <%
                    for (Cliente cliente:clientes) {
                %>
                <tr>
                    <td><%=cliente.getIdcliente()%></td>
                    <td><%=cliente.getNome()%></td>
                    <td><%=cliente.getSexo()%></td>
                    <td><%=cliente.getIdade()%></td>
                    <td><a href="cliente-atualizar.jsp?idcliente=<%=cliente.getIdcliente()%>">Editar</a>
                        <a href="cliente-excluir-ok.jsp?idcliente=<%=cliente.getIdcliente()%>">Excluir</a>
                    </td>

                </tr>


                <% }%>
            </table>

        
    </div>
</div>
</body>
</html>
