
<%@page import="modelo.Hotel"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.HotelDAO"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    ClienteDAO cdao= new ClienteDAO();
    List<Cliente> clista=cdao.listar();
    HotelDAO hdao=new HotelDAO();
    List<Hotel> hlista=hdao.listar();
    %>
        <div>
            <h1 class="centro">Cadastro do Cliente</h1>
            
            <div>
                
                <form action="quarto-cadastrar-ok.jsp" method="post">
                    <label>Código Quarto:</label><input type="text" 
                                                   name="txtIdquarto" /><br />
                    <label>Número:</label><input type="text" name="txtNumero" /><br />
                    
                    <label>Código cliente:</label>
                    <select name="Idcliente">
                   
                  <option value="">Selecione</option>
                        <%
                            for(Cliente citem:clista)
                            {
                                
                            %>
                            
                            <option value="<%=citem.getIdcliente()%>">
                                <%=citem%>
                            </option>
                            <%}%>
                    </select>
                    </br>
                            
                    <label>Código hotel:</label><select name="Idhotel">
                        <option value="">Selecione</option>
                        <%
                            for(Hotel hitem:hlista)
                            {
                                
                            %>
                            
                            <option value="<%=hitem.getIdhotel()%>">
                                <%=hitem%>
                            </option>
                        
                         <%}%>
                        
                        
                        
                        
                        
                    </select>
                    
                 
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
