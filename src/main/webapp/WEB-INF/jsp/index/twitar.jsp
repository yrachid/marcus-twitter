<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>Insert title here</title>
	</head>
	<body>
		<!-- Lembrar que a lista é de tweet ou de qualquer outra classe padrão VRaptor  -->
		<h2>Listando os Tweets</h2>
		<c:forEach items="${pessoaList }" var="pessoa" >
			
			<h3>${pessoa.nome}</h3>
			
			<c:forEach items="${pessoa.tweets}" var="tweet" >
			
				<p>${tweet.mensagem} </p>
				<p>
					<a href="${linkTo[IndexController].editar}?id=${tweet.id}"> Editar </a>
					<a href="${linkTo[IndexController].excluir}?id=${tweet.id}"> Excluir </a>
				</p>
			
			</c:forEach>
			
		</c:forEach>

	</body>
</html>