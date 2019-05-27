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

	<article >
		<header >
			<div >
				<img width="280px" height="395px" src="http://cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_large.png?v=1435245145"
					class="product-featured-image" />
				<h1 class="product-nome">${produto.nome}</h1>
				<
				<p class="product-description">${produto.descricao}</p>
			</div>
		</header>

		<section class="buy-options clearfix">
			<form action="/carrinho/add" method="post" class="container">
				<input type="hidden" value="${produto.id}" name="produtoId" >
				<ul id="variants" class="clearfix">
				
						<li class="buy-option">
							<input type="radio" name="tipoPreco" class="variant-radio" id="tipoPreco" value="AQUI COLOQUE O TIPO DO PRECO" checked="checked" /> 
							<label class="variant-label">AQUI COLOQUE O TIPO DO PRECO</label> 
							<small class="compare-at-price">R$ 39,90</small>
							<p class="variant-price">AQUI COLOQUE O VALOR DO PRECO</p>
						</li>
						
				</ul>
				<button type="submit" class="submit-image icon-basket-alt" title="Compre Agora AQUI COLOQUE O TITULO"></button>
			</form>
		</section>
</body>
</html>