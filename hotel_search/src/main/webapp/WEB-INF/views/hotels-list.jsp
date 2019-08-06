<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotels Lists</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/style.css" />
</head>
<body>
<h1>Available hotels in ${city }</h1>
		<table class="table" border="2" cellpadding="7">
			<thead>
				<tr>
					<th>Hotel Name</th><th>Price per Night</th><th>Customer Rating</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="hotel" items="${hotels}">
				<tr>
					<td><a href="/show-detail?id=${ hotel.id }">${hotel.name}</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/upvote?id=${ hotel.id }&city=${city}">Upvote</a></td>
					<td>$${hotel.pricePerNight}</td>
					<td>
					<c:forEach var = "i" begin = "1" end = "${hotel.rating}">
						<span class="fa fa-star checked"></span>
					</c:forEach>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<p>
		<a href="/index">Start a new search</a>
		</p>
</body>
</html>