<%-- 
    Document   : hotel-cadastrar
    Created on : Nov 25, 2015, 6:42:44 PM
    Author     : paton
--%>

<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro do Cliente</h1>
            
            <div>
                
                <form action="hotel-cadastrar-ok.jsp" method="post">
                    <label>Código do Hotel:</label><input type="text" name="txtIdhotel" /><br />
                    <label>CEP:</label><input type="text" 
                                                   name="txtCep" /><br />
                    <label>CNPJ:</label><input type="text" 
                                                   name="txtCnpj" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>

