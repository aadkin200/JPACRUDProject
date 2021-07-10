<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Computer</title>
</head>
<body>
<h1>Custom pc</h1>
<form action="results.do" method="get">
<label for="Search by ID"></label>
<input type="text" name="id" placeholder="Search by ID">
<input type="submit" value="Submit">
</form>
<form action="listAll.do" method="get">
<label for="List all"></label>
<input type="submit" value="List all">
</form>

<form action="create.do">
<input type="submit" value="Create">
</form>

</body>
</html>