<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Contatos | Air Lines Vibes</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<link rel="stylesheet" href="css/stylePrincipal.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header class="container-fuid fixed-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"><img class="logoNav" src="img/logoEmpresa.png" alt="logoAviao"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-links" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
              <div class="collapse navbar-collapse justify-content-start" id="navbar-links">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a href="index.jsp"class="nav-link text-white">Home</a></li>
                    <li class="nav-item"><a href="promocao.jsp"class="nav-link text-white">Promocões</a></li>
                    <li class="nav-item"><a href="destino.jsp"class="nav-link text-white">Destinos</a></li>
                    <li class="nav-item"><a href="sobreNos.jsp"class="nav-link text-white">Sobre nós</a></li>
                    <li class="nav-item"><a href="contato.jsp"class="nav-link text-white">Contatos</a></li>
                </ul>

                <div class="dropdown mb-2 mt-md-2">
                    <button type="button" class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown">
                    	Perfil
                    </button>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="sair">Sair</a></li>
                    <li><a class="dropdown-item" href="perfil">Perfil</a></li>
                    <li><a class="dropdown-item" href="listarPassagens">Passagens</a></li>
                    </ul>
                </div>
                <button class="btn btn-light ms-lg-2 text-dark"><%= session.getAttribute("name") %></button>
              </div>   
          </div>
        </nav>
    </header>
    
    <form class="container" style="padding-top: 30px;">
      <div style="padding-bottom: 20px;">
        <h1 class="text-dark">Fale Conosco</h1>
      </div>
      
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label text-dark">Nome Completo</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label text-dark">E-mail</label>
        <input type="email" class="form-control" id="exampleInputPassword1">
      </div>

      <div class="row mb-3" style="padding-top: 10px;">
        <div class="col-2">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label text-dark" for="exampleCheck1">Sugestões</label>
        </div>
        <div class="col">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label text-dark" for="exampleCheck1">reclamações</label>
        </div>
      </div>

      <div class="mb-3">
        <label for="exampleFormControlTextarea1" class="form-label text-dark">Deixe seu comentário aqui a baixo:</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    
    <footer class="container-fluid row row-cols-1 row-cols-sm-2 row-cols-md-2 row-cols-lg-5 py-5 my-5 border-top" style="height:200px;">
      <div class="col mb-6"style="padding-left:40px;">
        <a href="index.jsp" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
          <img class="logoNav" src="img/logoEmpresa.png" alt="logo empresa">
        </a>
      </div>
        
      <div class="col mb-3">    
      </div>
        
      <div class="col mb-3">
        <h4 class="text-dark">PRODUTOS</h4>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-dark">Transportes</a></li>
          <li class="nav-item mb-2"><a href="listarPassagens" class="nav-link p-0 text-dark">Passagens</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-dark">Hotéis</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-dark">Pacotes</a></li>
        </ul>
      </div>
        
      <div class="col mb-3">
        <h4 class="text-dark">LINKS ÚTEIS</h4>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="promocao.jsp" class="nav-link p-0 text-dark">Promoções</a></li>
          <li class="nav-item mb-2"><a href="destino.jsp" class="nav-link p-0 text-dark">Destinos</a></li>
          <li class="nav-item mb-2"><a href="contato.jsp" class="nav-link p-0 text-dark">Contato</a></li>
          <li class="nav-item mb-2"><a href="sobreNos.jsp" class="nav-link p-0 text-dark">Sobre nós</a></li>
        </ul>
      </div>
        
      <div class="col mb-3">
        <h4 class="text-dark">FALE-CONOSCO</h4>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-dark">Rua da liberdade - 4200 - RS</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-dark">jonathanturista@hotmail.com</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-dark">51 - 98264 9873</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-dark">51 - 3334 5332</a></li>
        </ul>
      </div>

      <div>
        <p class="text-dark">© 2022 Copyright: Air Lines Vibes</p>
      </div>
    </footer>


	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>