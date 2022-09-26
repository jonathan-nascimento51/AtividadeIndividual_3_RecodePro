<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Editar Passagem | Air Lines Vibes</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<link rel="stylesheet" href="css/stylePrincipal.css">
</head>
<body style="padding-top: 92px;">
	<header class="container-fuid fixed-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"><img style="width: 50px;" src="img/logoEmpresa.png" alt="logoAviao"></a>
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
	
	<section class="container w-75 pt-3 bg-dark p-2 mt-4 mb-4 rounded">
        <div class="pb-3 container">
            <h3 class="text-white">Atualizar Passagem:</h3>
        </div>
        <form class="container" action="editarPassagem">
            <div class="input-group pb-3">
                <label class="input-group-text">Id</label>
                <input class="form-control" type="text" name="id" readonly value="<%out.print(request.getAttribute("id"));%>">
            </div>
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="input-group pb-3">
                        <label class="input-group-text">Classe</label>
                        <select class="form-select" name="classe">
                          <option value="Econômica" selected>-- Selecione a classe</option>
                          <option>Econômica</option>
                          <option>Executiva</option>
                          <option>1° Classe</option>
                        </select>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="input-group pb-3">
                        <label class="input-group-text">Quantos passageiros: </label>
                        <select class="form-select" name="qtd">
                          <option value="1 Passageiro" selected>-- Selecione n° passageiros</option>
                          <option>1 Passageiro</option>
                          <option>2 Passageiros</option>
                          <option>3 Passageiros</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="input-group pb-3">
                        <label class="input-group-text">Partida</label>
                        <input class="form-control" type="text" name="partida" value="<%out.print(request.getAttribute("partida"));%>">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="input-group pb-3">
                        <label class="input-group-text">Destino</label>
                        <input class="form-control" type="text" name="destino" value="<%out.print(request.getAttribute("destino"));%>">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="input-group pb-3">
                        <div class="input-group-text">Ida</div>
                        <input type="date" class="form-control" name="dataIda" value="<%out.print(request.getAttribute("dataIda"));%>">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="input-group pb-3">
                        <div class="input-group-text">Volta</div>
                        <input type="date" class="form-control" name="dataVolta" value="<%out.print(request.getAttribute("dataVolta"));%>">
                    </div>
                </div>
            </div>
            <div class="input-group pb-3">
                <label class="input-group-text">Email</label>
                <input class="form-control" type="email" name="usuario" readonly value="<%out.print(request.getAttribute("usuario"));%>">
            </div>
            <div class="w-100 text-center pb-2">
                <button type="submit" class="btn btn-primary w-25">Salvar</button>
            </div>
        </form>
    </section>
    
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