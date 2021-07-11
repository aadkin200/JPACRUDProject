<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Computer Results</title>
</head>
<body>
<c:choose>
<c:when test="${not empty computers[0].id}">
	<c:forEach var="computer" items="${computers}">
<div class="card">
  	<div class="container">
    	<h4><b>${computer.name}</b></h4> 
    	<ul>
    	<li>${computer.ram}</li>
    	<li>${computer.cpu}</li>
    	<li>${computer.videoCard}</li>
    	<li>${computer.storage}</li>
    	</ul> 
		<form action="deleteComputer.do" method="post">
			<input type="submit" value="Delete">
			<input type="hidden" name="id" value="${computer.id}">
		</form>
		<form action="editComputer.do" method="post">
			<input type="submit" value="Edit">
			<input type="hidden" name="id" value="${computer.id}">
		</form>
  </div>
</div>

</c:forEach>
</c:when>
<c:otherwise>
<h1>No Result(s) found!</h1>
</c:otherwise>
</c:choose>

<form action="home.do">
<input type="submit" value="Home">
</form>
</body>
</html>