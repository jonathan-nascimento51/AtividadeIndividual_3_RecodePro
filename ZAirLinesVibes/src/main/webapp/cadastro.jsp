<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro | Air Lines Vibes</title>
    	<!--CSS sweetAlerts  -->
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    	<!--CSS bootstrap  -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>

<body class="bg-dark h-100" style="padding-top:50px;">

    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    
    <div class="row justify-content-center" style="padding-bottom:10px;">
            <img src="img/logoEmpresa.png" style="width: 90px;">
            <h4 class="text-white text-center p-2">Air Lines Vibes</h4>
    </div>
    
    <div class="white container w-50 rounded p-2 px-3">
        <form action="cadastrar" method="post">
            <div class="input-group mt-2 mb-2">
              <input type="text" class="form-control" placeholder="Nome Completo" maxlength="40" name="nome">
            </div>
            <div class="input-group mt-2 mb-2">
              <input type="email" class="form-control" placeholder="Email" maxlength="60" name="email">
            </div>
            <div class="input-group mt-2 mb-2">
              <input type="password" class="form-control" placeholder="Senha" maxlength="12" name="senha">
            </div>
            <div class="input-group mt-2 mb-2">
              <input type="password" class="form-control" placeholder="Repita a senha" maxlength="12" name="re-senha">
            </div>
            <div class="input-group mt-2 mb-2">
              <input type="text" class="form-control" placeholder="Telefone (DDD000000000)" maxlength="12" name="fone">
            </div>
  
            <div class="row container justify-content-center">
              <div class="col-md-12 pb-md-2 pe-gl-2 col-xl-2 ps-0 pt-2">
                <input type="submit" class="btn btn-primary btn-block" value="Cadastrar">
              </div>
              <div class="col-md-12 col-xl-2 ps-0 pt-2">
                <input type="reset" class="btn btn-secondary btn-block" value="  Limpar  ">
              </div>
            </div>
            <div class="pt-2">
                <a href="entrar.jsp">Já possuo cadastro</a>
            </div> 
        </form>    
    </div>
  
  <!--SWEET ALERTS -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
	
		var status = document.getElementById("status").value;
		
		if (status == "success") {
			swal("Parabéns","Cadastro realizado com sucesso","success")
		}
		if (status == "failed") {
			swal("Failed","Falha ao realizar cadastro","error")
			}		
		if (status == "nomeVazio") {
			swal("Failed","Campo nome deve ser preenchido","error")
			}
		if (status == "emailVazio") {
			swal("Failed","Campo email deve ser preenchido","error")
			}	
		if (status == "senhaVazio") {
			swal("Failed","Campo senha deve ser preenchido","error")
			}
		if (status == "senhaNaoConfere") {
			swal("Failed","Senhas não conferem","error")
			}		
		if (status == "telefoneVazio") {
			swal("Failed","Campo telefone deve ser preenchido","error")
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