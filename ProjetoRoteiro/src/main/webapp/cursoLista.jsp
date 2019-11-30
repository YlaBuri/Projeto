<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="atv.css">
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
<title>Lista de Cursos</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body class="body2">

<br />
	
		
			<a class="btn btn-default" href= "./CursoForm">Novo Curso</a>
	
<br />

	<div class="container body-content ">
		<div class="row">
			<div class="col-lg-1"></div>
			
			<div class="col-lg-10">
				<div class="container centered" id="conteudo">
	<table class="table table">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Nome</th>
				<th scope="col">Instituicao</th>
				<th scope="col">Duracao</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${cursos}">
			<tr>
				<td scope="row">${c.id}</td>
				<td>${c.nome}</td>
				<td>${c.instituicao.nome}</td>
				<td>${c.duracao}</td>
				<td><a href='./CursoForm?id=${c.id}'><i class="material-icons">edit</i></a> <a
					href='./CursoExcluir?id=${c.id}'><i class="material-icons">delete</i></a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	</div>
</div>
	<a href="./Painel">Painel</a>
</body>
</html>