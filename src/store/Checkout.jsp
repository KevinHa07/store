<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
	<title>Checkout</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">	
	<%-- <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css"> --%>
</head>
<body>
<div class="container">

	<!-- Page Header -->
	<div class="page-header">
		<h2>
			Checkout
		</h2>
	</div>
	<c:choose>
	<c:when test="${not requestScope.orderComplete }">
	<form action="Checkout" method="post">
		<div class="row">
			<div class="col-xs-9 col-sm-10">
				<div class="form-group">
					Name: <input type="text" class="form-control" id="username" name="username">
					<c:if test="${requestScope.userNameHasError}">
						<font color="red">Invalid Name.</font>
					</c:if>
				</div>
				<div class="form-group">
					Email Address: <input type="text" class="form-control" id="email" name="email">
					<c:if test="${requestScope.emailHasError}">
						<font color="red">Invalid Email.</font>
					</c:if>
				</div>
				<c:if test="${not empty error}">
					<p class="well-sm bg-danger">${error}</p>
				</c:if>
			</div>
			

		<c:if test="${empty shoppingcart}">
			<div class="jumbotron">
				<h1>Uh-Oh! <small>There are no threads to display. Try making one for everyone to see!</small></h1>
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
		<h2><b>Total:</b>$${totalAll}</h2>
		
			<div class="col-xs-3 col-sm-2">
				<button type="submit" class="btn btn-success btn-block"><b>Complete Purchase</b></button>
			</div>
			</div>
		</form>
		</c:when>
		<c:otherwise>
			<h1><p><b>You have completed your order. Your order number is ${requestScope.orderNumber} Thank you for shopping at Electronics 4 Days. Hope to see you again soon.</b></p></h1>
		</c:otherwise>
	</c:choose>
</div>

</body>
</html>
