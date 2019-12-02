<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="roteiro.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
<title></title>
<script type="text/javascript" src="roteiro.js"></script>
	<link rel="stylesheet" type="text/css" href="atv.css">
</head>
<body class="body2">

<div class="container body-content ">
		<div class="row">
			<div class="col-lg-1"></div>
			
			<div class="col-lg-10">
				<div class="container centered" id="conteudo">
				
	<form action="./RoteiroSalvar" method="get">
		<input name="id" type="hidden" value="${roteiro.id}">
		
		<div class="row">
			<div class="form-group col-lg-12">
				<label for="codigo">Codigo</label>
				<input class="form-control" name="codigo" id="codigo" type="text" value="${roteiro.codigo}">
			</div>
		</div>
		
		<div class="row">
			<div class="form-group col-lg-6">
				<label for="tipo">Tipo</label>
				<input class="form-control" id="tipo" name="tipo" type="text" value="${roteiro.tipo}">
			</div>
			<div class="form-group col-lg-6">
				<label for="descricao">Descrição</label>
				<input class="form-control" name="descricao" id="descricao" type="text" value="${roteiro.descricao}">
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-lg-6 col-sm-12">
				<label>Pontos Cadastrados</label>
				<div class="form-group">
					<div class=" ms-lista">
						<ul class="list-group list-group-flush" id="listaPontos">
							<c:forEach var="p" items="${pontos}">
								<li class="list-group-item" value="${p.id}">${p.descricao}</li>
							</c:forEach>

						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-sm-12">
				<label>Pontos do Roteiro</label>
				<div class="ms-lista">
					<ul id="lstTag" class="list-group list-group-flush"></ul>
				</div>
			</div>
		</div>
		<button class="btn btnPadrao" type="submit">Enviar</button>
	</form>
</div>
</div>
</div>
</div>
</body>
</html>