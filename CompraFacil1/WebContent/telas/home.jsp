<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoCompraFacil"%>
<%@page import="modelo.CompraFacilProduto"%>
<html>
<head>
<meta charset="UTF-8">
    <title>Home</title>
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
        background-color: #00008B;            
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
    <nav class="navbar navbar-expand-sm  navbar-light bg-light ">
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="telas/home.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link dropdown-toggle" href="CompraControlador" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Serviços</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="telas/servicoHigiene.jsp">Combo Higiene</a>
                         <a class="dropdown-item" href="telas/servicoAlimento.jsp">Combo Alimentos</a>
                         
                    <a class="dropdown-item" href="telas/servicoBebe.jsp">Combo Bebe</a>
                    <a class="dropdown-item" href="telas/servicoLimpeza.jsp">Combo Limpeza</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="telas/atendimento.jsp">Atendimento</a>
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
         <divclass="col-3">
             <form class="form-inline my-2 my-lg-0" action="CompraControlador" method="post">
                 <input type="hidden" name="operacao" value="selectNome">
                 <input class="form-control mr-sm-2" type="text" name="pesquisa" id="pesquisa" placeholder="Pesquisa por produto" >
                 <button class="btn btn-primary fas fa-search my-2 my-sm-0" style="margin-left:-51px" type="submit" value="pesquisa"></button>
             </form>
         </div>
            
            <a class="nav-link" href="telas/loginN.jsp">
            <button class="btn btn-link text-dark fas fa-user" type="button"><p><%=usuarioAutenticado %></p></button></a>
            <a href="Autenticacao">Sair</a>

            <button class="btn btn-link text-dark fas fa-shopping-cart" type="button"></button>
            
          
        </div>
    </nav>
</header>
<meta name="viewport" content="width=device-width, initial-scale=1">

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
    <hr>
    <div class="container">
        <h2><b>Compre por categoria</b></h2>     
        <div class="row">
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
              <form action="CompraControlador" method="post">
                 <input type="hidden" name="operacao" value="selectCategoria">          
                 <button style="margin-top:8px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Alimentos</b></button>
              </form>
            </div>
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
                  <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">        
                       <button style="margin-top:8px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Hortifruti</b></button>
                  </form>  
            </div>
            
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <button style="margin-top:8px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Higiene</b></button>
                  </form>                        
            </div>            
                        
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <button style="margin-top:8px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Beleza</b></button>
                  </form>                        
            </div>
                        
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <button style="margin-top:20px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Bebidas</b></button>
                  </form>                        
            </div>
                                   
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <button style="margin-top:20px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Carnes</b></button>
                  </form>                        
            </div>
                                    
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <button style="margin-top:20px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Saúde</b></button>
                  </form>                        
            </div>
                                    
            <div class="col-12 col-lg-3 col-md-4 col-sm-6">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <button style="margin-top:20px" type="submit" class="btn btn-outline-light text-dark" name="imagem" id="imagem" href="telas/servicoLimpeza.jsp"><b>Limpeza</b></button>
                  </form>                        
            </div>
        </div>     
    </div>
     
    <hr>    
    <div class="container">
       <h2><b>Monte seu Combo</b></h2>
         <div class="row">
            <div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
              <form action="CompraControlador" method="post">
                 <input type="hidden" name="operacao" value="selectCategoria">          
                  <a href="telas/servicoAlimento.jsp"><input style="margin-top:20px" type="image" name="imagem" id="imagem" src="Imagens/Alimentos.png"></a>
              </form>
            </div>
            <div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
                  <form action="CompraControlador" method="post">
                     <input type="hidden" name="operacao" value="selectCategoriaHigiene">          
                     <a href="telas/servicoHigiene.jsp"><input style="margin-top:20px" type="image" name="" id="higiene" src="Imagens/Higiene.png"></a>
                  </form>  
            </div>
            
            <div class="col-12 col-lg-4 col-md-6 col-sm-6 img1">
                 <form action="CompraControlador" method="post">
                       <input type="hidden" name="operacao" value="selectCategoriaLimpeza">                   
                       <a href="telas/servicoLimpeza.jsp"><input style="margin-top:20px" type="image" name="imagem" id="imagem" src="Imagens/Limpeza.png"></a>
                  </form>                        
            </div>
        </div>     
    </div>
    <hr>
     

 <div class="container-fluid" >
  <h2><b>Oferta do dia</b></h2>
    
    
    
   <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
      <%for(CompraFacilProduto produto1: listaProduto) { %>      
     
        <div class="carousel-inner">
           <div class="row">
            <div class="col-12 col-lg-3 col-md-3 col-sm-3">            
                    <div class="carousel-item active ">
                        <a targer="blank"  href="telas/Imagens/<%=produto1.getFoto() %>">
                        <img style="margin-top:30px" src="telas/Imagens/<%=produto1.getFoto() %>"></a>
                        <p class="text-center col-12"><b><%out.println(produto1.getNomeProduto());%></b></p>
                        <p class="text-center col-12" style="margin-top:-20px" ><b>Valor R$: <%out.println(produto1.getValorproduto());%></b></p> 
                    </div>
             </div>
           </div>           
        </div>  
     <%} %>               
         
             
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Anterior</span>
        </a>
               
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Próximo</span>
        </a>                                              
    </div>
</div>

    <div class="container bg-paragrafo col-12 col-lg-12 col-md-12 col-sm-12" style="margin-top:40px">
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