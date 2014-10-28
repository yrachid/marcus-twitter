<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
   
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>Insert title here</title>
	</head>
	<body>

	<form action="${linkTo[IndexController].twitar}" method="post">
		<label>Nome</label>
			<input type="text" name="pessoa.nome" placeholder="Digite seu nome aqui">
		<label>Menssagem</label>	
			<input type="text" name="tweet.mensagem">
			<input type="submit" name="enviar" value="Enviar">
	</form>

	</body>
</html>