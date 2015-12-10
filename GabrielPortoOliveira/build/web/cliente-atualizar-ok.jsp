<%-- 
    Document   : cliente-atualizar-ok
    Created on : Nov 24, 2015, 8:56:42 PM
    Author     : paton
--%>

<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file = "cabecalho.jsp" %>

<%

    
    String nome = request.getParameter("txtNome");
    String sexo = request.getParameter("txtSexo");
    String idade = request.getParameter("txtIdade");
    String idcliente= request.getParameter("txtIdcliente");
    //buscar o registro pela chav primaria
    //alterar os demais valores enviados pelo usuario
    //mandar alterar
    ClienteDAO dao = new ClienteDAO();

    Cliente obj = dao.buscarPorChavePrimaria(idcliente);

    
    //atualizar demais informações enviadas
    obj.setNome(nome);
    obj.setIdcliente(idcliente);
    obj.setSexo(sexo);
    obj.setIdade(idade);
    dao.alterar(obj);

%>

<div>

    <h3> atualizacao do Cliente </h3> 

    <p> O registro foi atualizado com sucesso.</p>

    <a href = "cliente.jsp" > Voltar para a página anterior </a>

</div></body>
</html>


