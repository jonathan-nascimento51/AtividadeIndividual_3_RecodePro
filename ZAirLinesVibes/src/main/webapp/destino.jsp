<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Destinos | Air Lines Vibes</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<link rel="stylesheet" href="css/stylePrincipal.css">
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
    
    <main class="container mt-5 mb-5">
      <div style="padding-bottom: 30px;">
        <h1 class="text-dark">Destinos</h1>
      </div>
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
          <div class="card">
            <img src="img/praia da pipa.png" class="card-img-top" alt="Praia da Pipa, Rio Grande do Norte">
            <div class="card-body bg-dark text-white">
              <h5 class="card-title">Praia da Pipa, Rio Grande do Norte</h5>
              <p class="card-text">
                O litoral do Rio Grande do Norte está entre os posts mais 
                acessados no Viagens Cine e continua sendo um dos melhores lugares para viajar no Brasil.
              </p>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <img src="img/Foz-do-Iguacu-O-que-Fazer-4.jpg" class="card-img-top" alt="cataratas do iguaçu">
            <div class="card-body bg-dark text-white">
              <h5 class="card-title">Cataratas do Iguaçu, PR</h5>
              <p class="card-text">
                As Cataratas do Iguaçu formam um conjunto de mais de 200 quedas,
                maiores do que as famosas Cataratas do Niágara, nos Estados Unidos.
              </p>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <img src="img/Lencois-Maranhenses-O-que-fazer-Dicas-2.jpg" class="card-img-top" alt="Ilhas Maldivas" style="height: 236px;">
            <div class="card-body bg-dark text-white">
              <h5 class="card-title">Lençóis Maranhenses, MA</h5>
              <p class="card-text">
                A Rota das Emoções é um roteiro concebido pelo Sebrae para incentivar 
                o turismo por três Estados brasileiros: Maranhão, Piauí e Ceará.
              </p>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <img src="img/Serra-Gaucha-Roteiro-do-Vinho-41.jpg" class="card-img-top" alt="Serra Gaúcha, RS" style="height: 236px;">
            <div class="card-body bg-dark text-white">
              <h5 class="card-title">Serra Gaúcha, RS</h5>
              <p class="card-text">
                          Em menos de 2 horas a partir do Aeroporto de Porto Alegre, 
                você já chega em Bento Gonçalves, a principal cidade da região. 
                Fora que la voce encontra as pessoas mais lindas do brasil.
              </p>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <img src="img/Jalapao-Tocantins-Roteiro-Viagem-21.jpg" class="card-img-top" alt="Jalapão, Tocantins" style="height: 236px;">
            <div class="card-body bg-dark text-white">
              <h5 class="card-title">Jalapão, Tocantins</h5>
              <p class="card-text">
                Imagine um destino com cachoeiras, dunas, chapadões, rios de águas cristalina em um
                dos melhores lugares para viajar no Brasil, especialmente para gosta de ecoturismo.
              </p>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <img src="img/10-Lugares-para-Viajar-Brasil-2.jpg" class="card-img-top" alt="Paraty, Rio de Janeiro">
            <div class="card-body bg-dark text-white">
              <h5 class="card-title">Paraty, Rio de Janeiro</h5>
              <p class="card-text">
                Paraty é um daqueles lugares que reúne o melhor de dois mundos. 
                O charmoso e preservado centro histórico
                reúne cultura e excelente gastronomia. E além disso, temos as praias.
              </p>
            </div>
          </div>
        </div>
      </div>
    </main>
    
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
        <p class="text-dark" style="text-align: center;">© 2022 Copyright: Air Lines Vibes</p>
      </div>
    </footer>


	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>