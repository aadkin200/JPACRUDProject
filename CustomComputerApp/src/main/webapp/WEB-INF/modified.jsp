<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Result</title>
</head>
<body>
<c:if test="${deletedFlag}">
<c:choose>
<c:when test="${computerDeleted}">
			
			<div class="card">
  <div class="container">
			<h2>Computer Successfully Deleted!</h2>
			<form action="home.do">
			<input type="submit" value="Home">
			</form>
    
  </div>
</div>
</c:when>

<c:when test="${!computerDeleted}">


<div class="card">
  <div class="container">
			<h2>Could not delete!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    
  </div>
</div>
</c:when>

</c:choose>
</c:if>

<c:if test="${createdFlag}">
<c:choose>
<c:when test="${computerCreated}">

			<div class="card">
  <div class="container">
			<h2>Computer Created!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    
  </div>
</div>

</c:when>

<c:when test="${!computerCreated}">


<div class="card">
  <div class="container">
			<h2>Could not create!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    
  </div>
</div>
</c:when>

</c:choose>
</c:if>

<c:if test="${editedFlag}">
<c:choose>
<c:when test="${computerEdited}">
<div class="card">
  <div class="container">
			<h2>Computer successfully edited!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    
  </div>
</div>

</c:when>

<c:when test="${!computerEdited}">



<div class="card">
  <div class="container">
			<h2>Could not edit!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    
  </div>
</div>
</c:when>

</c:choose>
</c:if>

</body>
</html>