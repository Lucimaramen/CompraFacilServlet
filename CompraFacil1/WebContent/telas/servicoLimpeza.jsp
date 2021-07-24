<%@page import="modelo.CompraFacilProduto"%>
<%@page import="modelo.CompraFacil"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Combo Limpeza</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
          <script src="https://kit.fontawesome.com/a7cd58b4a6.js" crossorigin="anonymous"></script>
          <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <link rel="stylesheet" type="text/css" href="" />
        <style type="text/css">
    
           img{
              width: 150px;
              height: 150px;
              object-fit: contain;
            }
           .bg-teste{
              width: 2500px;
              height: 150px;
              object-fit: contain;
              background-color: #D9D3D3;            

           }
           .bg-paragrafo{
              width: 2500px;
              height: 100px;
              object-fit: contain;
              background-color: #D9D3D3;            
            }
              
           .btn-button{
                background-color: black;
                color: white;
            }  
            .container-fluid{
                padding-left: 90px;
            }
           .p1{
                margin-left: 25%;
                color: black;
            }
            .p2{
                margin-left: 30%;
                margin-top: -4%;
                color: black;
            }
            .p3{
                margin-left: 35%;
                margin-top: -4%;
                color: black;
            }
            body{
                padding-bottom: 50px;
            }
            #contatos { cursor: pointer; }
    
        </style>
    </head>
<body> 
    <%
//Verifica se o usuário está autenticado
HttpSession sessao = request.getSession();
String usuarioAutenticado = null;

try{
	usuarioAutenticado = (String) sessao.getAttribute("cliente");
	if (usuarioAutenticado.equals(null)){
		response.sendRedirect("CompraControlador?operacao=login");
	}
}catch(Exception e){
	response.sendRedirect("CompraControlador?operacao=login");
}
%>
    <header>
        <nav class="navbar navbar-expand-sm  navbar-light bg-light">
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Serviços</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="servicoHigiene.jsp">Combo Higiene</a>
                        <a class="dropdown-item" href="servicoAlimento.jsp">Combo Alimentos</a>
                        <a class="dropdown-item" href="servicoBebe.jsp">Combo Bebe</a>
                        <a class="dropdown-item" href="servicoLimpeza.jsp">Combo Limpeza</a>
                    </div>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="atendimento.jsp">Atendimento</a>
                  </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Contatos
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item "><b>Telefone</b><br>
                    (16)3626-0920<br><b>Horario de atendimento</b><br>Segunda a Sexta, das 08 às 16hs.</a>
                  </div>
                </li>
              </ul>
              
                <input class="form-control col-md-4 " type="search" placeholder="Pesquisar por produto" aria-label="Search">
                <button class="fas fa-search btn btn-primary btn-lg mr-sm-4"  type="submit"></button>
                
                <a class="nav-link" href="cadastroN.jsp">
                <button class="btn btn-link text-dark fas fa-user" type="button"><p><%=usuarioAutenticado %></p></button></a>
                <a href="Autenticacao">Sair</a>
            
    
                <button class="btn btn-link text-dark fas fa-shopping-cart" type="button"></button>
                
              
            </div>
        </nav>
    </header>
                
<jsp:useBean id="produto" class="modelo.CompraFacilProduto"></jsp:useBean>
<jsp:useBean id="daoCompraFacil" class="dao.DaoCompraFacil"></jsp:useBean>

<%
List<CompraFacilProduto> listaProduto =(List<CompraFacilProduto>)request.getAttribute("listaRegistro");
%>

    <div class="container bg-teste col-12">
        <div class="row">
            <div class="col-12">
                <img src="Imagens/Logotipo5.PNG" class="col-12">
            </div>

        </div>
    </div>   

    <div class="container-fluid mt-5" >
   <div class="row">
    
    <%for(CompraFacilProduto produto1: listaProduto) { %>
    
    
            <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6">
                    <%//out.println(produto1.getCodprod());%> 
                                         
                    <div class="col-12 text-center">
                           <a targer="blank" href="telas/Imagens/<%=produto1.getFoto() %>">
                           <img src="telas/Imagens/<%=produto1.getFoto() %>"></a></div>      
                                         
                   <div class="col-12 text-center">                    
                    <b><%out.println(produto1.getNomeProduto());%></b></div>
                      
                     <div class="col-12 text-center">
                       <p>Valor R$:  <%out.println(produto1.getValorproduto());%></p></div>     
                     
                             
                    <%//out.println(produto1.getCategoria());%> 
      
                    <%//out.println(produto1.getCodbarra());%>
                    <a href="CompraControlador?operacao=formUpdate&intcodprod=<%=produto1.getCodprod()%>">
                    <button type="button" style="margin-right: 30px;" class="btn btn-warning btn-sm"><b>Alterar</b></button></a>
                    <a href="CompraControlador?operacao=delete&intcodprod=<%=produto1.getCodprod()%>">
                    <button type="button" class="btn btn-danger btn-sm"><b>Excluir</b></button></a>      
                                              
            </div>
<%} %>
</div>
</div>
    
        
        
        <br> <br>
        <h2>Serviços</h2>
        <hr>   
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
              <form action="CompraControlador" method="post">
                 <input type="hidden" name="operacao" value="selectCategoria">          
                  <a href="telas/servicoAlimento.jsp"><input type="image" name="imagem" id="imagem" src="Imagens/Alimentos.png"></a>
              </form>
            </div>
            <div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
                  <form action="CompraControlador" method="post">
                     <input type="hidden" name="operacao" value="selectCategoriaHigiene">          
                     <a href="telas/servicoHigiene.jsp"><input type="image" name="higiene" id="higiene" src="Imagens/Higiene.png"></a>
                  </form>  
            </div>
            
            <div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <a href="telas/servicoLimpeza.jsp"><input type="image" name="limpeza" id="limpeza" src="Imagens/Limpeza.png"></a>
                  </form>                        
            </div>
        </div>     
    </div>
    <hr>
    <div class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12 ">
        <p class="p1 col-12"  ><b>Preços e condições de pagamento exclusivos para compras via internet,</b> </p><br>
            <p class="p2 col-12"><b>caso os produtos apresentem divergências de valores,</b></p><br>
                <p class="p3 col-12"><b>o preço válido é o do carrinho de compras.</b></p><br> 
    </div>
      
    <div class="container col-12 ">
            <div class="row">
                <div class="col-12 ">
                    <img src="Imagens/Rodape.png" class="col-12 ">
                </div>
            </div>
        </div> 

</body>    
</html>