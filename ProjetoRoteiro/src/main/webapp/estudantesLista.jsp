<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="atv.css">
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body class="body2">

	<a class="btn btn-default" href="./EstudanteForm">Cadastrar Estudante</a>

	<div class="container body-content ">
		<div class="row">
			<div class="col-lg-1"></div>

			<div class="col-lg-10">
				<div class="container centered" id="conteudo">
					<table class="table">
						<thead>
							<tr>
								<th>Nome</th>
								<th>CPF</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="e" items="${estudantes}">
								<tr>
									<td>${ e.nome}</td>
									<td>${e.cpf}</td>
									<td><a href="./EstudanteExcluir?id=${e.id}">Excluir</a>|
									<a href="./EstudanteForm?id=${e.id}">Editar</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>