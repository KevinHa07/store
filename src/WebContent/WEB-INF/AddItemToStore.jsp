<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
	<title>Store Front</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">	
	<%-- <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css"> --%>
</head>
<body>
<form action="AddItemToSearch" method="post">
		<div class="row">
			<div class="col-xs-9 col-sm-10">
				<div class="form-group">
					<label class="sr-only" for="search">Search</label>
					<input type="text" class="form-control" id="name" name="name" placeholder="item name">
				</div>
				<div class="form-group">
					<label class="sr-only" for="search">Search</label>
					<input type="text" class="form-control" id="description" name="description" placeholder="item description">
				</div>
				<div class="form-group">
					<label class="sr-only" for="search">Search</label>
					<input type="text" class="form-control" id="quantity" name="quantity" placeholder="item quantity">
				</div>
				<div class="form-group">
					<label class="sr-only" for="search">Search</label>
					<input type="text" class="form-control" id="price" name="price" placeholder="item price">
				</div>
				
			</div>
			<div >
				<button type="submit" class="btn btn-success btn-block">Add Item</button>
			</div>
		</div>
	</form>
</body>
</html>