<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
<title>Cadastrar Motorista</title>
</head>
<body>
<form action="./MotoristaSalvar" method="post">
		<input name="id" type="hidden" value="${motorista.id}"> <br>
		Nome: <input type="text" name="nome" value="${motorista.nome}"><br>
		Descricao: <input type="text" name="descricao" value="${motorista.descricao}"><br>
		Situa��o: <input type="text" name="situacao" value="${motorista.situacao}"><br>
		<button type="submit">Salvar</button>
	</form>

</body>
</html>