<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Promoção | Air Lines Vibes</title>
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
    
    <main class="container">
      <h1 class="text-dark" style="padding-top: 40px;">
        As melhores promoções para você!
      </h1>
      <div class="mt-5 mb-5">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 justify-content-center">
          
          <div class="col">
            <div class="card" style="width: 18rem;">
              <img src="img/peru.jpg" class="card-img-top" alt="imagem do peru">
              <div class="card-body bg-dark text-white">
                <h5 class="card-title">Peru</h5>
                <p class="card-text">Tão magnífica quanto os prédios de arquitetura colonial e as grandes paredes em pedra maciça erguidas pelos Incas.</p>
              </div>
              <ul class="list-group list-group-flush bg-dark">
                <li class="list-group-item bg-dark"><strike class="text-danger">De R$ 2.229,99</strike></li>
                <li class="list-group-item bg-dark text-white" style="font-size: 20px;">Por R$ 1.699,90</li>
              </ul>
              <div class="card-body bg-dark">
                <a href="#" class="card-link btn btn-primary w-100">Comprar</a>
              </div>
            </div>
          </div>
    
          <div class="col">
            <div class="card" style="width: 18rem;">
              <img src="img/alaska.jpg" class="card-img-top" alt="imagem do alasca">
              <div class="card-body bg-dark text-white">
                <h5 class="card-title">Alasca</h5>
                <p class="card-text">O Alasca é terra de superlativos. O maior estado americano abriga o maior pico, o maior parque nacional e a maior floresta.</p>
              </div>
              <ul class="list-group list-group-flush bg-dark">
                <li class="list-group-item bg-dark"><strike class="text-danger">De R$ 5.999,99</strike></li>
                <li class="list-group-item bg-dark text-white"style="font-size: 20px;">Por R$ 4.599,90 </li>
              </ul>
              <div class="card-body bg-dark">
                <a href="#" class="card-link btn btn-primary w-100">Comprar</a>
              </div>
            </div>
          </div>
    
          <div class="col">
            <div class="card" style="width: 18rem;">
              <img src="img/alemanha.jpg" class="card-img-top" alt="imagem da alemanha">
              <div class="card-body bg-dark text-white">
                <h5 class="card-title">Alemanha</h5>
                <p class="card-text">Abriga cenários artísticos e de vida noturna, o Portão de Brandemburgo e muitos locais da Segunda Guerra Mundial.</p>
              </div>
              <ul class="list-group list-group-flush bg-dark">
                <li class="list-group-item bg-dark"><strike class="text-danger">De R$ 5.500,85</strike></li>
                <li class="list-group-item bg-dark text-white"style="font-size: 20px;">Por R$ 3.200,00 </li>
              </ul>
              <div class="card-body bg-dark">
                <a href="#" class="card-link btn btn-primary w-100">Comprar</a>
              </div>
            </div>
          </div>
              
          <div class="col">
            <div class="card" style="width: 18rem;">
              <img src="img/espanha.jpg" class="card-img-top" alt="imagem espanha">
              <div class="card-body bg-dark text-white">
                <h5 class="card-title">Espanha</h5>
                <p class="card-text">O clima, as praias, as paisagens, a gastronomia, o patrimônio histórico, seus festivais e seu povo fazem da Espanha um dos países mais visitados do mundo.</p>
              </div>
              <ul class="list-group list-group-flush bg-dark">
                <li class="list-group-item bg-dark"><strike class="text-danger">De R$ 7.699,99</strike></li>
                <li class="list-group-item bg-dark text-white"style="font-size: 20px;">Por R$ 6.500,82 </li>
              </ul>
              <div class="card-body bg-dark">
                <a href="#" class="card-link btn btn-primary w-100">Comprar</a>
              </div>
            </div>
          </div>
    
          <div class="col">
            <div class="card" style="width: 18rem;">
              <img src="img/portugal.jpg" class="card-img-top" alt="imagem de portugal">
              <div class="card-body bg-dark text-white">
                <h5 class="card-title">Portugal</h5>
                <p class="card-text">Portugal é uma grande mistura! Turismo religioso, roteiro gastronômico, tem um dos maiores destinos de enoturismo, que é a região do Douro, tem castelos e lindas paisagens!</p>
              </div>
              <ul class="list-group list-group-flush bg-dark">
                <li class="list-group-item bg-dark"><strike class="text-danger">De R$ 2.229,99</strike></li>
                <li class="list-group-item bg-dark text-white"style="font-size: 20px;">Por R$ 1.899,89 </li>
              </ul>
              <div class="card-body bg-dark">
                <a href="#" class="card-link btn btn-primary w-100">Comprar</a>
              </div>
            </div>
          </div>
    
          <div class="col">
            <div class="card" style="width: 18rem;">
              <img src="img/india.jpg" class="card-img-top" alt="imagem da India">
              <div class="card-body bg-dark text-white">
                <h5 class="card-title">India</h5>
                <p class="card-text">Reconhecida por suas cores, religião, comidas condimentadas e figuras como Buda.</p>
              </div>
              <ul class="list-group list-group-flush bg-dark">
                <li class="list-group-item bg-dark"><strike class="text-danger">De R$ 9.429,99</strike></li>
                <li class="list-group-item bg-dark text-white"style="font-size: 20px;">Por 7.929,89 R$ </li>
              </ul>
              <div class="card-body bg-dark">
                <a href="#" class="card-link btn btn-primary w-100">Comprar</a>
              </div>
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