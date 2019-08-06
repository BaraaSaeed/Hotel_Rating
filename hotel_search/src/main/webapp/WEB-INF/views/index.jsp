<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css" />
</head>
<body>
<h2>Hotel Search</h2>
<h3>City</h3>
<div>
		<form action="/view-hotels">
			<select name="city">
				<option value="">--Please choose an city--</option>
				<option value="Detroit"  >Detroit </option>
				<option value="Dearborn" >Dearborn</option>
				<option value="Ann Arbor">Ann Arbor</option>
			</select> 
				<button  type="submit">Go!</button>
		</form>

	</div>

</body>
</html>