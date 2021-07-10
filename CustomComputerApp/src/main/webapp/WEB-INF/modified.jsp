<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
<c:if test="${deletedFlag}">
<c:choose>
<c:when test="${computerDeleted}">
<div class="">
    <div class="">
    </div>
    <div>
    	<div class="">
			<h2>Computer Successfully Deleted!</h2>
			<form action="home.do">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

<c:when test="${!computerDeleted}">
<div class="">
    <div class="">
    </div>
    <div>
    	<div class="">
			<h2>Could not delete!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

</c:choose>
</c:if>

<c:if test="${createdFlag}">
<c:choose>
<c:when test="${computerCreated}">
<div class="">
    <div class="">
    </div>
    <div>
    	<div class="">
			<h2>Computer Created!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

<c:when test="${!computerCreated}">
<div class="">
    <div class="">
    </div>
    <div>
    	<div class="">
			<h2>Could not create!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

</c:choose>
</c:if>

<c:if test="${editedFlag}">
<c:choose>
<c:when test="${computerEdited}">
<div class="">
    <div class="">
    </div>
    <div>
    	<div class="">
			<h2>Computer successfully edited!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

<c:when test="${!computerEdited}">
<div class="">
    <div class="">
    </div>
    <div>
    	<div class="">
			<h2>Could not edit!</h2>
			<form action="home.do" class="">
			<input type="submit" value="Home">
			</form>
    	</div>
    </div>
    <div class="">
    </div>
</div>
</c:when>

</c:choose>
</c:if>

</body>
</html>