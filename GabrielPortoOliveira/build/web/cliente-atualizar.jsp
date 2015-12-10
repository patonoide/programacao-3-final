
<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<% //pegara chave primaria
    String idcliente =request.getParameter("idcliente");
    //busco o registro pela chave no banco de dados
    ClienteDAO dao = new ClienteDAO();
    //Para chamar pela chave usaremos o método criado
    //que retornará todas informacoes do professor 
    Cliente obj =  dao.buscarPorChavePrimaria (idcliente);
    %>
        <div>
            <h1 class="centro">Atualização do Cliente</h1>
            
            <div>
                
                <form action="cliente-atualizar-ok.jsp">
                    <label>Nome:</label><input type="text" value="<%=obj.getNome()%>" name="txtNome"/><br />
                    <label>Código do cliente:</label><input type="text" value="<%=obj.getIdcliente()%>" name="txtIdcliente"/><br />
                    <label>Sexo:</label><input type="text" value="<%=obj.getSexo()%>" name="txtSexo"/><br />
                    <label>Idade:</label><input type="text" value="<%=obj.getIdade()%>" name="txtIdade"/><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>
