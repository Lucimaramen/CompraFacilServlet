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
                background-color: #4F3cd1;
    
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
                color: white;
            }
            .p2{
                margin-left: 30%;
                margin-top: -4%;
                color: white;
            }
            .p3{
                margin-left: 35%;
                margin-top: -4%;
                color: white;
            }
            body{
                padding-bottom: 50px;
            }
            #contatos { cursor: pointer; }
    
        </style>
    </head>
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
                <button class="btn btn-link text-dark fas fa-user"  type="button">Entre</button></a>
    
                <button class="btn btn-link text-dark fas fa-shopping-cart" type="button"></button>
                
              
            </div>
        </nav>
    </header>
    <body>
        <div class="container bg-teste col-12">
            <div class="row">
                <div class="col-12">
                    <img src="../Imagens/Logotipo5.png" class="col-12">
                </div>
    
            </div>
        </div>
        <div class="container-fluid mt-5">
            <div class="row">
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6">
                    <img src="../Imagens/Detergente.PNG" alt="Requeijão"/> 
                    <p><b>Requeijao cremoso Nestle 300Gr</b></p>
    
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"/> Savegnago R$ 5,28 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 4,75 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pão de açucar R$ 4,72 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>
                </div>
    
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6 ">
                    <div>
                    <img src="../Imagens/Detergente.PNG" alt="Feijão"/>
                    </div>
                    <p><b>Feijão Carioca Vasconcelos 1Kg</b></p>
    
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"  /> Savegnago R$ 7,49 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 7,39 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pao de açucar R$ 7,79 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>
                </div>
    
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6 ">
                    <img src="../Imagens/Detergente.PNG" alt="Cerveja"/>     
                    <p><b>Cerveja Sub Zero lata 350ML</b></p>
    
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"  /> Savegnago R$ 2,29 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 2,45 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pao de açucar R$ 2,99 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>
                    
                </div>
    
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6 ">
                    <img src="../Imagens/Detergente.PNG" alt="Leite"/>      
                    <p><b>Leite integral Jussara 1Lt</b></p>
    
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"  /> Savegnago R$ 3,08 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 2,99 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pao de açucar R$ 3,19 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>
                    
                </div>
                
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6 mt-5">
                    <img src="../Imagens/Omo.PNG" alt="Requeijão"/> 
                    <p><b>Requeijao cremoso Nestle 300Gr</b></p>
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"/> Savegnago R$ 5,28 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 4,75 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pão de açucar R$ 4,72 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>
                </div>
            
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6 mt-5">
                    <img src="../Imagens/Omo.PNG" alt="Feijão"/>
                    <p><b>Feijão Carioca Vasconcelos 1Kg</b></p>
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"  /> Savegnago R$ 7,49 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 7,39 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pao de açucar R$ 7,79 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>
                </div>
            
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6 mt-5">
                    <img src="../Imagens/Omo.PNG" alt="Cerveja"/>     
                    <p><b>Cerveja Sub Zero lata 350ML</b></p>
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"  /> Savegnago R$ 2,29 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 2,45 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pao de açucar R$ 2,99 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>
                </div>
            
                <div id="grid" class="col-12 col-md-3 col-lg-3 col-sm-6 mt-5 ">
                    <img class="leite" src="../Imagens/Omo.PNG" alt="Leite"/>      
                    <p><b>Leite integral Jussara 1Lt</b></p>
                    <Label for="mercado">Preços</Label> <br>
                    <input type="radio" name="mercado" value="Savegnago"  /> Savegnago R$ 3,08 <br>
                    <input type="radio" name="mercado" value="Mialich" /> Mialich R$ 2,99 <br>
                    <input type="radio" name="mercado" value="PaoDeAcucar" /> Pao de açucar R$ 3,19 <br> 
                    <button type="button" class="btn btn-button">Adicionar ao carrinho</button>                
                </div> 
            </div>
        </div><br> <br>
        <h2>Serviços</h2>
        <hr>    
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-3 col-md-6 col-sm-6 img1">
                    <a href="servicoAlimento.jsp"><input type="image" src="../Imagens/Alimentos.png"></a>
                </div>
                <div class="col-12 col-lg-3 col-md-6 col-sm-6 img1">
                    <a href="servicoHigiene.jsp"><input type="image" src="../Imagens/Higiene.png"></a>
                </div>
                <div class="col-12 col-lg-3 col-md-6 col-sm-6 img1">
                   <a href="servicoLimpeza.jsp"><input type="image" src="../Imagens/Limpeza.png"></a> 
                </div>
                <div class="col-12 col-lg-3 col-md-6 col-sm-6 img1">
                    <a href="servicoBebe.jsp"><input type="image" src="../Imagens/Higiene.png"></a>
                </div>
            </div>     
        </div>
        <hr>
        <div class="container bg-teste col-12 col-lg-12 col-md-12 col-sm-12 ">
            <p class="p1 col-12"  ><b>Preços e condições de pagamento exclusivos para compras via internet,</b> </p><br>
                <p class="p2 col-12"><b>caso os produtos apresentem divergências de valores,</b></p><br>
                    <p class="p3 col-12"><b>o preço válido é o do carrinho de compras.</b></p><br> 
        </div>
        <hr>
        <div class="container col-12 ">
            <div class="row">
                <div class="col-12 ">
                    <img src="../Imagens/Rodape.png" class="col-12 ">
                </div>
            </div>
        </div>
    </body>
    
</html>