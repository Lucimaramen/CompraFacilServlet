<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastro Produto</title>

       
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
       <script src="https://kit.fontawesome.com/a7cd58b4a6.js" crossorigin="anonymous"></script>
       <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
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
    .btn-button{
        background-color: black;
        color: white;
    }   
    body{
        padding-bottom: 50px;
  
    }
    .form-check{
        margin-left: 5%;
    }
    .container1{        
        margin-left: 22%;
        
    }
   
</style>
<body>
    <div class="container bg-teste col-12">
        <div class="row">
            <div class="col-12">
                <img src="Imagens/Logotipo5.PNG" class="col-12">
            </div>

        </div>
    </div>
    <form action="../CompraControlador"class="teste" method="post" enctype="multipart/form-data">>
        <input type="hidden" name="operacao" value="insert1">
    
        <div class="container col-6 mt-5 ">
            <div class="row">
                <div class="col-12 mt-5">
                    <div class="form-group">
                        <label ><b>Supermercado</b></label>
                        <select style= "margin-left:5%" id="nomeSupermercado" name="nomeSupermercado">
                            <option value="savegnago">Savegnago</option>
                            <option value="mialich">Mialich</option>
                            <option value="paodeacucar">Pão de Açúcar</option>
                            <option value="gricki">Gricki</option>
                        </select> 
                    </div>
                    <div class="form-group">
                        <label style=" margin-top:5%" ><b>Codigo do produto</b></label>
                        <input type="text" class="form-control  col-8" id="codprod" placeholder="Insira o codigo do produto" name="codprod" required>
                    </div>
                    <div class="form-group">
                        <label style=" margin-top:5%"><b>Categoria</b></label>
                        <select style= "margin-left:11% " name="categoria" id="categoria">
                            <option value="Limpeza">Limpeza</option>
                            <option value="Higiene">Higiene</option>
                            <option value="Alimentos">Alimentos</option>
                            <option value="Bazar">Bazar</option>
                            <option value="Pereciveis">Perecíveis</option>
                            <option value="FLV">FLV</option>
                        </select> 
                    </div>
                    <div class="form-group ">
                        <label style=" margin-top:5%" ><b>Codigo de Barras</b></label>
                        <input type="text" class="form-control col-8" id="codbarra" placeholder="Insira o codigo do produto" name="codbarra">
                    </div>
                    <div class="form-group">
                        <label style=" margin-top:5%" ><b>Nome</b></label>
                        <input type="text" class="form-control col-8" id="nomeProduto" placeholder="Informe o nome do produto" name="nomeProduto">
                    </div>
                    <div class="form-group">
                        <label style=" margin-top:5%" ><b>Valor</b></label>
                        <input type="text" class="form-control col-6" id="valorproduto" placeholder="Informe o valor do produto" name="valorproduto">
                    </div>
                    <div class="form-group">
                       <label for="foto">Foto:</label>
                        <input class="form-control"type="file"name="foto"id="foto">
                    </div>
                    <button type="submit" class="btn btn-button mt-4 col-4">Continuar</button>
                    <a href="home.jsp"><button type="button" class="btn btn-danger mt-4 col-4">Ir para o site</button></a>                </div>  
            </div>
        </div>
    </form>

</body>
</html>