<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap.css"/>">
		<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap/css/bootstrap-theme.css"/>">  
		<title>Insert title here</title>
	</head>
	<body>

<div class="container" style="margin-top:85px">

	<div class="row">
		<div class="col-lg-6 col-lg-offset-3">
			<div class="panel panel-primary">
					
					<div class="panel-heading">
						<h3>Twittar </h3>
					</div>
				
		
					<form action="${linkTo[IndexController].twitar}" method="post">
						
						<div class="panel-body">
						
							<div class="form-group">
								<label class="label-control">Nome</label>
								<input class="form-control" type="text" name="pessoa.nome" placeholder="Digite seu nome aqui">
							</div>
							
							<div class="form-group">
								<label>Menssagem</label>	
								<textarea class="form-control" type="text" rows="3" name="tweet.mensagem"></textarea>
							</div>
						
						</div>
						
						<div class="panel-footer">
						
							<div class="form-group">
								<input class="btn btn-primary pull-right" type="submit" name="enviar" value="Enviar">
								<div style="clear:both"></div>
							</div>
						
						</div>
							
					</form>
					
			</div>
		</div>
	</div>
	
</div>

	</body>
</html>