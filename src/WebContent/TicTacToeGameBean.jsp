<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<% 

//tictacbean.bean.tictactoe game = new cs3220.bean.tictactoe();




%>
<jsp:useBean class="tictacbean.tictactoe" id="game" scope="session" />

<jsp:setProperty property="*" name="game" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TicTacBean</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>

				
	<div class="container">

		<div class="page-header">
			<h1>
				Player <jsp:getProperty property="player" name="game" />'s Turn <small>TicTacToe</small>
			</h1>
		</div>
					   
		<div class="row">
			<div class="col-sm-offset-3 col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=0">${game.board[0]}</a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=1">${game.board[1]}</a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=2">${game.board[2]}</a>
			</div>
		</div>
		<!--  end row -->
		<div class="row">
			<div class="col-sm-offset-3 col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=3">${game.board[3]}</a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=4">${game.board[4]}</a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=5">${game.board[5]}</a>
			</div>
		</div>
		<!--  end row -->
		<div class="row">
			<div class="col-sm-offset-3 col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=6">${game.board[6]}</a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=7">${game.board[7]}</a>
			</div>
			<div class="col-sm-2 col-xs-4 text-center">
				<a href="TicTacToeGameBean.jsp?location=8">${game.board[8]}</a>
			</div>
		</div>
		<!--  end row -->
		<div class="row">
			<div class="col-sm-offset-3 col-sm-2 col-xs-4 text-center">
				<p> ${game.winner}</p>
			</div>
		</div>
		<p class="text-center">
			<a href="TicTacToeGameBean.jsp?reset=0" class="btn btn-lg btn-primary">New Game</a>
		</p>
	</div>
	<!-- end container -->


</body>
</html>