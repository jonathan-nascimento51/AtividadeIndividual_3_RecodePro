<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">	
	<title>Entrar | Air Lines Vibes</title>
		<!-- CSS SWEETALERTS -->
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
		<!-- CSS BOOTSTRAP -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="bg-dark h-100" style="padding-top:80px;">

    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    
    <div class="row justify-content-center" style="padding-bottom:20px;">
            <img src="img/logoEmpresa.png" style="width: 50px;">
            <h4 class="text-white text-center p-2">Air Lines Vibes</h4>
    </div>
    
    <div class="white container w-50 rounded p-3">
        <form class="container" action="entrar" method="post">
            <div class="pb-4">
                <input class="form-control" type="email" maxlength="60" name="email" placeholder="Digite seu email">
            </div>
            <div class="pb-4">
                <input class="form-control" type="password" maxlength="12" name="senha" placeholder="Digite sua senha">
            </div>
            <div class="pb-2 text-center">
            	<button type="submit" class="col-3 btn btn-primary">Entrar</button>
       		</div>
        </form>
        
        <div class="container">
       		<a href="cadastro.jsp">Cadastre-se</a>
       </div>
       
                    	<!-- Botão para acionar modal -->
       <div class="row container">
            <button type="button" class="btn btn-link pb-1 text-start" data-toggle="modal" data-target="#ExemploModalCentralizado">
                Esqueceu sua senha?
            </button>
       </div>
                
                            <!-- Modal -->
        <div class="modal fade" id="ExemploModalCentralizado" tabindex="-1" role="dialog" aria-labelledby="TituloModalCentralizado" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="TituloModalCentralizado">Redefinir Senha</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                         <form action="redefinir" method="get">
                            <div class="input-group mt-1 mb-3">
                                 <input type="email" class="form-control" placeholder="Digite seu email" maxlength="60" name="r-email">
                           </div>
                           <div class="input-group mt-2 mb-3">
                                 <input type="password" class="form-control" placeholder="Digite sua nova senha" maxlength="12" name="r-senha">
                           </div>
                           <button class="btn btn-primary btn-block" type="submit" value="redefinir">Redefinir</button>
                         </form>                     
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
          </div>
        </div>     
    </div>
  
  		<!--SWEET ALERTS -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
	
	var status = document.getElementById("status").value;
	
	if (status == "failed") {
		swal("Desculpa","Nome de usuário ou senha incorretos","error")
	}
	else if (status == "invalidEmail") {
		swal("Desculpa","Por favor, insira seu email","error")
	}
	else if (status == "invalidSenha") {
		swal("Desculpa","Por favor, insisra sua senha","error")
	}
	else if (status == "invalidReSenha") {
		swal("Desculpa","Por favor, insisra sua nova senha","error")
	}
	else if (status == "correctReSenha") {
		swal("Parabéns","Senha redefinida com sucesso!","success")
	}
	
	</script>
	
		<!-- BOOTSTRAP JS E POOPER -->
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
      integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
      crossorigin="anonymous"
    ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    
</body>
</html>