<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Computer Results</title>
</head>
<body>
<c:choose>
<c:when test="${not empty computers[0].id}">
	<c:forEach var="computer" items="${computers}">
		<p>
			${computer}
		</p>
		<form action="deleteComputer.do" method="post">
			<input type="submit" value="Delete">
			<input type="hidden" name="id" value="${computer.id}">
		</form><br>
		<form action="editComputer.do" method="post">
			<input type="submit" value="Edit">
			<input type="hidden" name="id" value="${computer.id}">
		</form><br>
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