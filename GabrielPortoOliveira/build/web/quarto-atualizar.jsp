<%-- 
    Document   : quarto-atualizar
    Created on : Dec 8, 2015, 4:24:59 PM
    Author     : paton
--%>

<%@include file= "cabecalho.jsp"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Hotel"%>
<%@page import="dao.HotelDAO"%>
<%@page import="modelo.Quarto"%>
<%@page import="dao.QuartoDAO"%>
</html><%
  if(request.getParameter("idquarto") == null)
    {
        response.sendRedirect("quarto.jsp");
        return;
    }
  
    String idquarto = request.getParameter("idquarto");
    QuartoDAO dao = new QuartoDAO();
    Quarto obj = dao.buscarPorChavePrimaria(idquarto);
    //Achou a disciplina? se não achou volta pra lista
    if(obj==null)
    {
        response.sendRedirect("quarto.jsp");
        return;
    }
    
    
    

    HotelDAO hDAO = new HotelDAO();
    List<Hotel> hLista = hDAO.listar();

    ClienteDAO cDAO = new ClienteDAO();
    List<Cliente> cLista = cDAO.listar();


%>


    <h1 class="centro">Atualização do Quarto</h1>

    

        <form action="quarto-atualizar-ok.jsp" method="post">
            <label>Código:</label><input type="text" name="txtIdquarto" value="<%=obj.getIdquarto()%>" readonly/><br />

            <label>Número:</label><input type="text" name="txtNumero" value="<%=obj.getNumero()%>"/><br />
           
            <label>Cliente:</label>
            <select name="cliente">
                <option value="">Selecione</option>
                <%                            //percorrer minha lista de cursos
                String selected = "";    
                for (Cliente c : cLista) {
                     if(c.getIdcliente() == obj.getIdcliente().getIdcliente())
                     {
                         selected = "selected";
                     }
                %>
                <option value="<%=c.getIdcliente()%>" <%=selected%>><%=c%></option>
                <%
                    selected = "";
                    }
                %>
            </select><br />
            <label>Hotel</label>
            <select name="hotel">
                <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                selected = "";
                for (Hotel h : hLista) {
                    if(h.getIdhotel()== obj.getIdhotel().getIdhotel())
                     {
                         selected = "selected";
                     }
                %>
                    <option value="<%=h.getIdhotel()%>" <%=selected%>><%=h%></option>
                <%
                selected = "";
                }
                %>
            </select>
            <br />
            
            <input type="submit" value="Atualizar" />
        </form>
    </>
</div>
</main>
</div>


</body>
</html>
