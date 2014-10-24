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
		<label>Dado</label>
			<input type="text" name="tweet.mensagem" placeholder="Digite seu nome aqui">
			<input type="submit" name="enviar" value="Enviar">
	</form>

	</body>
</html>