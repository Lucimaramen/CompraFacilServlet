<%@page import="modelo.CompraFacilProduto"%>
<%@page import="dao.DaoCompraFacil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Cliente</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:useBean id="produto" class="modelo.CompraFacilProduto"></jsp:useBean>
<jsp:useBean id="daoCompraFacil" class="dao.DaoCompraFacil"></jsp:useBean>

</head>

<body>
<%
DaoCompraFacil dao = new DaoCompraFacil();
List<CompraFacilProduto> listaProduto =new ArrayList<CompraFacilProduto>();

String nomePesquisa = "";
nomePesquisa = request.getParameter("pesquisa");

if(nomePesquisa == null){
	listaProduto = dao.select();
}else{
	listaProduto = dao.selectNome(nomePesquisa);

}
%>

<div class="container col-12">
<h2>Exibição de Rigistros</h2>
<div class="card">
<div class="card-header">
<span><b>Listagem de Registro</b></span>
<div style="float:right">
<form action="exibe.jsp" method="post">
<label for="pesquisa">Nome:</label>
<input type="text" name="pesquisa" id="pesquisa">
<input class="btn btn-success btn-sm" type="submit" value="Pesquisa">

</form>
</div>

</div>
</div>
<table class="table table-striped table-bordered table-hover">
<tr>
      <th><b>CodProduto</b></th>
      <th><b>NomeSupermercado</b></th>
      <th><b>Categoria</b></th>
      <th><b>NomeProduto</b></th>
      <th><b>Valoproduto</b></th>
      <th><b>Imagem</b></th>
      <th><b>Codbarra</b></th>
      
</tr>
<%for(CompraFacilProduto produto1: listaProduto) { %>

<tr>
      <td class="text-center" ><%out.println(produto1.getCodbarra());%></td>
      <td><%out.println(produto1.getNomeSupermercado());%></td>
      <td><%out.println(produto1.getCategoria());%></td>
      <td><%out.println(produto1.getNomeProduto());%></td>      
      <td><%out.println(produto1.getValorproduto());%></td>      
      <td><%out.println(produto1.getFoto());%></td>      
      <td><%out.println(produto1.getCodbarra());%></td>      
      
      
      <td><a href= "formUpdate.jsp?idAlteracao=<%//=aluno2.getIdAluno()%>">
      <button type="button" style="margin-right: 30px;" class="btn btn-warning btn-sm"><b>Alterar</b></button></a>
      <a href="Delete.jsp?id=<%//=aluno2.getIdAluno()%>">
      <button type="button" class="btn btn-danger btn-sm"><b>Excluir</b></button></a>      
      </td>
</tr>       
      
<%} %>      

</table>
<a data-toggle="modal" data-target="#modal-cadastro">
<button type="button" class="btn btn-outline-success btn-sm">Novo registro</button></a> 
</div> 

      
</body>
</html>