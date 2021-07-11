<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Computer</title>
</head>
<body>
<h1>Custom pc</h1>



<div class="card">
  <div class="container">
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
  </div>
</div>



</body>
</html>