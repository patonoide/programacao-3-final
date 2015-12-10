<%-- 
    Document   : cliente-cadastrar
    Created on : Nov 24, 2015, 9:09:31 PM
    Author     : paton
--%>

<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro do Cliente</h1>
            
            <div>
                
                <form action="cliente-cadastrar-ok.jsp" method="post">
                    <label>Nome:</label><input type="text" name="txtNome" /><br />
                    <label>Código Cliente:</label><input type="text" 
                                                   name="txtIdcliente" /><br />
                    <label>Sexo:</label><input type="text" name="txtSexo"/><br />
                    <label>Idade:</label><input type="text" name="txtIdade" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
