<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
	<title>Shopping Cart</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">	
	<%-- <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css"> --%>
</head>
<body>
<div class="container">

	<!-- Page Header -->
	<div class="page-header">
		<h2>
			Shopping Cart
		</h2>
	</div>

	<c:if test="${empty shoppingcart}">
		<div class="jumbotron">
			<h1>Uh-Oh! <small>There are no items in your shopping cart.</small></h1>
		</div>
	</c:if>

	<c:if test="${not empty shoppingcart}">
	<table class="table table-hover table-striped table-bordered">
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Total Cost</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="cost" value="${0}"/>
			<c:forEach items="${shoppingcart}" var="shoppingcart">
				<tr>	
					<td>
						${shoppingcart.name}	
					</td>				
					<td>	
						${shoppingcart.description}	
					</td>
					<td>
						${shoppingcart.price}	
					</td>
					<td>
						${shoppingcart.quantity}	
					</td>
					<td>
						<c:set var="price" value="${shoppingcart.price}"/>
						<c:set var="quantity" value="${shoppingcart.quantity}"/>
						<c:set var="cost" value="${price * quantity}"/>
						$${cost}
					</td>
				</tr>
			</c:forEach>
			 
			
			
			
			
		</tbody>
	</table>
	<c:set var="totalAll" value = "${0}"/>
	</c:if>
	<c:forEach items="${shoppingcart}" var="shoppingcart">
		<c:set var="totalPrice" value="${shoppingcart.price}"/>
		<c:set var="totalQuantity" value="${shoppingcart.quantity}"/>
		<c:set var="totalCost" value="${totalPrice * totalQuantity}"/>
		<c:set var="totalAll" value="${totalAll + totalCost}"/>
	</c:forEach>
	<p align="right">Total: $${totalAll}</p>
	<p align="right">
		
		<a class="btn btn-default btn-xs" href="Checkout"><img src="http://www.ecommercepartners.net/blog/wp-content/uploads/2013/03/11954275791751619642cart_pommi_02.svg_.hi_-300x244.png" alt="cart" width="28" height="28">Checkout</a>
	</p>
	
</body>
</html>
