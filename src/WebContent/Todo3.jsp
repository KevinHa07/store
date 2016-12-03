<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%



%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>CS3220 ToDo App</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
</head>
<body>
<div class="container">

	<div class="page-header">
	  <h1>ToDo <small>CS3220</small></h1>
	</div>

	<form class="form-inline" action="Updata" method="post">
		<div class="form-group">
			<span id="remaining">2</span> of <span id="total">3</span> Todos [ <a href="Archive">Archive</a> ]
		</div>
	  <div class="form-group">	    
	    <input type="todo" name="post" class="form-control" placeholder="Enter a Todo">
	  </div>	  
	  <button type="submit" class="btn btn-default">Add</button>
	</form>

	<table class="table table-bordered table-striped table-hover">
		<tr>
			<th>Title</th>
			<th>Action</th>
		</tr>
		
		<tr>
				<c:forEach items="${entries}" var="entry">
					
					<td>${entry.post}</td>

					<td>
					<a class="btn btn-primary btn-sm" href="Update?id=1&state=done">Mark as Done</a>
					</td>
				</c:forEach>

			</tr>
		
		<tr>
			<td>Add an item to todo list</td>
			<td>
				<a class="btn btn-primary btn-sm" href="Update?id=2&state=done">Mark as Done</a>
			</td>
		</tr>
		
		<tr>
			<td>
				<s>Complete an item on todo list</s>
			</td>
			<td>
				<a class="btn btn-success btn-sm" href="Update?id=3&state=notdone">Mark as Not Done</a>
			</td>
		</tr>
	</table>
	
	
</div>
</body>
</html>