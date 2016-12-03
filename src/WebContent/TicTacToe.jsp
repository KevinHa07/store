
<%
	if (session.getAttribute("reset") != null) {
		session.removeAttribute("gameBoard");
		
	}

	if(session.getAttribute("gameBoard") == null){
		char [] gameBoard = new char[9];
		for(int x=0; x<9; x++){
			gameBoard[x] = ' ';
		}
		session.setAttribute("gameBoard", gameBoard);
	}
	char[] gameBoard = (char[])session.getAttribute("gameBoard");
	
	session.setAttribute("playerTurn", "X");//switch this back and forth
	
	if(session.getAttribute("Location") != null){
		int location = (Integer)session.getAttribute("Location");
		//gameBoard[location] = 
	}
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tic Tac Toe</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>


	<div class="container">

		<div class="page-header">
			<h1>
				Player <%out.println(session.getAttribute("playerTurn"));%>'s Turn <small>Tic Tac Toe</small>
			</h1>
		</div>
		
		<a href='#' class='thumbnail'><img
			src='http://placehold.it/150/E8117F/ffffff?text=X' alt='X'></a> 
			<a href='#' class='thumbnail'><img src='http://placehold.it/150/78ddfa/ffffff?text=O' alt='O'></a>

		<div class="row">
			<div class="col-sm-offset-3 col-sm-2 col-xs-4 text-center">
				
				<a href='TicTacToe.jsp?location=0' class='thumbnail'> <img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>

			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=1' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=2' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
		</div>
		<!--  end row -->
		<div class="row">
			<div class="col-sm-offset-3 col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=3' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=4' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=5' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
		</div>
		<!--  end row -->
		<div class="row">
			<div class="col-sm-offset-3 col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=6' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=7' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href='TicTacToe.jsp?location=8' class='thumbnail'><img src='http://placehold.it/150/cccccc?text=_' alt='Open Space'></a>
			</div>
		</div>
		<!--  end row -->

		<p class="text-center">
			<a href="TicTacToe.jsp?reset" class="btn btn-lg btn-primary">New Game</a>
		</p>
	</div>
	<!-- end container -->


</body>
</html>