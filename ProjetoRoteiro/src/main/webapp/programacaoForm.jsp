<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="body2">
	<form action="./ProgramacaoSalvar" method="post">
		C�digo do roteiro: <select name = "roteiro">
							<option value="">Selecione</option>
							<c:forEach var="r" items="${roteiros}">
							<option value="${r.id}">${r.codigo}
							</option>
							</c:forEach>
						</select> <br>
		Data: <input type="date" name ="dia"> <br>
		Hora de sa�da: <input type="time" name="horaIda"> <br>
		Hora de retorno: <input type="time" name="horaVolta"> <br>
		Placa do �nibus: <select name = "onibus">
							<option value="">Selecione</option>
							<c:forEach var="o" items="${onibus}">
							<option value="${o.id}">${o.placa}
							</option>
							</c:forEach>
						</select> <br>
		Nome do motorista: <select name = "motorista">
							<option value="">Selecione</option>
							<c:forEach var="m" items="${motoristas}">
							<option value="${m.id}">${m.nome}
							</option>
							</c:forEach>
						</select>
		
		
		
		<button type="submit">Salvar</button>
	</form>
</body>
</html>