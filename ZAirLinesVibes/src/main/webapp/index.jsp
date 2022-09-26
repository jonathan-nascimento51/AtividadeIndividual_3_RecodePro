<%
	if(session.getAttribute("name") == null) {
		response.sendRedirect("entrar.jsp");
	}
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Air Lines Vibes</title>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="css/stylePrincipal.css">
</head>
<body>

	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

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

    <figure>
      <div class="pb-2">
         <img class="img" src="img/foto-grande-noronha-07-2000x1333-11.jpg" alt="">
      </div>
    </figure>
    
    <div class="container bg-dark w-75 rounded pt-2">
      <form action="cadastraPassagem" method="post">
          <div class="container pt-2 pb-2">
            <h2 class="text-white bg-none">Tem interesse em viajar?</h2>
          </div>
          <div class="row justify-content-center">
          	  <div class="col-10 col-xl-4 col-lg-10 pb-lg-2 col-sm-10">
                <input type="text" class="form-control" name="fk_usuario" placeholder="Insira seu email cadastrado"><%=request.getAttribute("email") %></input>
              </div>
              <div class="col-10 pb-4 col-lg-3 col-xl-3 mb-xl-2">
                <div class="input-group">
                  <label class="input-group-text">Classe</label>
                  <select class="form-select" name="classe">
                  	<option value="Econômica" selected>-- Selecione a classe</option>
                    <option value="Econômica">Econômica</option>
                    <option value="Executivo">Executiva</option>
                    <option value="1° Classe">1° Classe</option>
                  </select>
                </div>
              </div>
              <div class="col-10 pb-4 col-lg-5 col-xl-4">
                <div class="input-group">
                  <label class="input-group-text">Quantos passageiros: </label>
                  <select class="form-select" name="qtdPassageiro">
                  	<option value="1 Passageiro" selected>-- Selecione n° passageiros</option>
                    <option value="1 Passageiro">1 Passageiro</option>
                    <option value="2 Passageiros">2 Passageiros</option>
                    <option value="3 Passageiros">3 Passageiros</option>
                  </select>
                </div>
              </div>
          </div>

          <div class="row justify-content-center pb-3">
              <div class="pb-4 col-5 mx-1 pb-2 col-xl-2">
                <input class="form-control" type="text" placeholder="Local Partida" name="partida">
              </div>
              <div class="pb-4 col-5 mx-1 pb-2 col-xl-2">
                <input class="form-control" type="text" placeholder="Local Destino" name="destino">
              </div>
              <div class="pb-4 col-5 mx-1 pb-2 col-xl-2">
                <div class="input-group">
                  <div class="input-group-text">Ida</div>
                  <input type="date" class="form-control" name="dataPartida">
                </div>
              </div>
              <div class="pb-4 col-5 mx-1 pb-2 col-xl-2">
                <div class="input-group">
                  <div class="input-group-text">Volta</div>
                  <input type="date" class="form-control" name="dataDestino">
                </div>
              </div>
              <div class="d-xl-block gap-2 d-grid col-10 col-xl-2">
                <button type="submit" class="btn btn-primary">Quero viajar</button>
              </div>
          </div>
      </form>
    </div>
    
    <main class="container pt-3">
      <h2 class="text-dark pb-3">Destinos Mais Visitados:</h2>
      <div class="row text-dark" style="text-align: center;">
        <div class="col-lg-4">
          <img class="rounded pb-1" style="width: 200px;" src="img/bonito.img" alt="foto de bonito" width="140" height="140">
          <h2>Bonito - MS</h2>
          <p>Conhecida pelos rios de água translúcida, como o Rio da Prata, 
               um destino repleto de peixes. 
               O Abismo Anhumas é uma enorme caverna coberta de estalactites que permite a prática de rapel
                e de mergulho num lago subterrâneo.
          </p>
          <p><a class="btn btn-dark" href="#" role="button">Ver Mais »</a></p>
        </div>

        <div class="col-lg-4">
          <img class="rounded pb-1" style="width: 200px;" src="img/pantanal.png" alt="foto do pantanal" width="140" height="140">
          <h2>Pantanal - MS</h2>
          <p>O Complexo do Pantanal, ou simplesmente Pantanal, é um bioma 
              constituído principalmente por uma savana estépica, alagada em sua maior parte, 
              com 250 mil quilômetros quadrados de extensão e uma altitude média de 100 metros.
          </p>
          <p><a class="btn btn-dark" href="#" role="button">Ver Mais »</a></p>
        </div>

        <div class="col-lg-4">
          <img class="rounded pb-1" style="width: 200px;" src="img/praia da pipa.png" alt="foto da praia da pipa" width="140" height="140">
          <h2>Praia da Pipa - RN</h2>
          <p>A Praia de Pipa é uma famosa praia localizada no município de Tibau do Sul,
               capital do estado do Rio Grande do Norte, Brasil.
                É o principal balneário do Litoral Sul do estado, que inclui praias como Ponta do Madeiro, Praia do Amor.
          </p>
          <p><a class="btn btn-dark" href="#" role="button">Ver Mais »</a></p>
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
        <p class="text-dark">© 2022 Copyright: Air Lines Vibes</p>
      </div>
    </footer>

	  		<!--SWEET ALERTS -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">	
	var status = document.getElementById("status").value;
	
	if (status == "success") {
		swal("Parabéns","Interesse inserido!","success")
	}
	else if (status == "invalidEmail") {
		swal("Falhou","Por favor, insira seu email de cadastro","error")
	}
	else if (status == "invalidPartida") {
		swal("Falhou","Por favor, insira o local de partida","error")
	}
	else if (status == "invalidDestino") {
		swal("Falhou","Por favor, insira o local de destino","error")
	}
	else if (status == "invalidDataIda") {
		swal("Falhou","Por favor, Insira a data da ida","error")
	}
	else if (status == "invalidDataVolta") {
		swal("Falhou","Por favor, insira a data da volta","error")
	}	
	</script>

    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

</body>
</html>