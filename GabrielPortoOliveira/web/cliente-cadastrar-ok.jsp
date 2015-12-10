

<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@include file="cabecalho.jsp"%>
<%
    //buscar as informacoes do formulario
    String nome= request.getParameter("txtNome");
    String idcliente=request.getParameter("txtIdcliente");
    String sexo=request.getParameter("txtSexo");
    String idade=request.getParameter("txtIdade");
    
    
    //criar meu objeto modelo
    Cliente cliente=new Cliente();
    
    //Adiciono os valores enviados 
    cliente.setNome(nome);
    cliente.setIdcliente(idcliente);
    cliente.setSexo(sexo);
    cliente.setIdade(idade);
    
    // instanciar minha classe de acesso  a dados
    ClienteDAO dao= new ClienteDAO();
    
    //manda inserir
    dao.incluir (cliente);
    %>
         <h1 class="centro">Cadastro de Cliente</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
            
             <a href="cliente.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>

