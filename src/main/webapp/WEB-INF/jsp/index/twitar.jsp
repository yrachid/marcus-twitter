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
		<c:forEach items="${tweetList }" var="tweet" >
			
			<p>${tweet.mensagem}</p>
			
		</c:forEach>

	</body>
</html>