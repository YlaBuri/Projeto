<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="atv.css">
<title>Insert title here</title>
<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body class="body2">
	<nav class="navbar navbar-light barraNavegacao">
		
	</nav>

	<nav class="navbar  navbar-expand-lg navbar-light barraNavegacao2" >
		<a class="navbar-brand" href="#">LOGO</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active itensNavbar">
					<a class="nav-link " href="./Perfil">IN�CIO<span class="sr-only">(current)</span></a>
				</li>

				<li class="nav-item dropdown itensNavbar">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						SERVI�OS
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="./EstudanteListar">ESTUDANTES</a>
						<a class="dropdown-item" href="./IntituicaoListar">INSTITUI��ES</a>
						<a class="dropdown-item" href="./RoteiroListar">ROTEIROS</a>
						<a class="dropdown-item" href="#">PONTOS</a>
						<a class="dropdown-item" href="./CursoLista">CURSOS</a>
						<a class="dropdown-item" href="#">VE�CULOS</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						FUNCIONARIOS
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="./MotoristaLista">MOTORISTAS</a>
						<a class="dropdown-item" href="#">ADMINISTRADORES</a>
					</div>
				</li>

				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						NOTIFICA��ES
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">OP��O 1</a>
						<a class="dropdown-item" href="#">OP��O 2</a>
					</div>
				</li>
				
			</ul>
		</div>
	</nav>

	<div class="container body-content ">
		<div class="row">
			<div class="col-lg-1"></div>
			
			<div class="col-lg-10">
				<div class="container centered" id="conteudo">
					<div class="row centered">
						<h4 class="titulo">PERFIL</h4>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-4">
							
						</div>
						<div class="col-lg-8">
							
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-lg-1"></div>
		</div>
	</div>

   
            <footer class="footer">
                <p class="labelFooter">&copy; 2019 Regi�o Metropolitana LTDA.</p>
            </footer>


</body>
</html>