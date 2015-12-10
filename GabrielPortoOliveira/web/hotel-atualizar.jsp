<%-- 
    Document   : hotel-atualizar
    Created on : Nov 25, 2015, 6:43:15 PM
    Author     : paton
--%>

<%@page import="modelo.Hotel"%>
<%@page import="dao.HotelDAO"%>
<%@include file="cabecalho.jsp"%>
<% //pegara chave primaria
    String idhotel =request.getParameter("idhotel");
    //busco o registro pela chave no banco de dados
    HotelDAO dao = new HotelDAO();
    //Para chamar pela chave usaremos o método criado
    //que retornará todas informacoes do professor 
    Hotel obj =  dao.buscarPorChavePrimaria (idhotel);
    %>
        <div>
            <h1 class="centro">Atualização do Hotel</h1>
            
            <div>
                
                <form action="hotel-atualizar-ok.jsp">
                    <label>código do hotel:</label><input type="text" value="<%=obj.getIdhotel()%>" name="txtIdhotel"/><br />
                    <label>CEP:</label><input type="text" value="<%=obj.getCep()%>" name="txtCep"/><br />
                    <label>CNPJ:</label><input type="text" value="<%=obj.getCnpj()%>" name="txtCnpj"/><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>

