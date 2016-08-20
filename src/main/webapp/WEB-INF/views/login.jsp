<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
div {
    
    background-color: lightblue;
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 80px;
}
</style>
</head>

<body>


	<form class="form-horizontal" action="perform_login" method="post">
		

			<div class="panel-body">
				<div class="form-group">
					<label for="text" >User Name:</label> <input type="text"
						name="username" class="form-control"  placeholder="Enter email">
			
					<label for="pwd">Password:</label> <input type="password"
						name="password" class="form-control"  placeholder="Enter password">
				</div>
			</div>


			
				<button type="submit" value="submit" class="btn btn-primary btn-sm">Submit</button>
		
		

	</form>

</body>
</html>