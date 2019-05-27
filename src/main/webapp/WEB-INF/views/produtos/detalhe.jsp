<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Produtos</title>
</head>
<body>

	<div class="container">
		<h1>Cadastro de Produtos</h1>
		<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST"
			commandName="produto" enctype="multipart/form-data">
			<div>
				<label>Nome</label> <input type="text" name="nome" />
				<form:errors path="nome" />
			</div>
			<div>
				<label>Descrição</label>
				<textarea rows="10" cols="20" name="descricao"></textarea>
				<form:errors path="descricao" />
			</div>
			<div>
				<label>Preço</label> <input type="text" name="preco" />
			</div>

			<div>
				<label>Sumário</label> 
				<input name="imagem" type="file" />
			</div>

			<button type="submit">Cadastrar</button>
		</form:form>
	</div>
</body>
</html>