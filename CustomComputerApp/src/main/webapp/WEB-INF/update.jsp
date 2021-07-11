<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Edit Computer</title>
</head>
<body>

<div class="card">
  <div class="container">
<h1>${computer.id}</h1>
<form action="editedComputer.do" method="post">
		<input type="hidden" name = "id" value="${computer.id}">
<label>Name: </label>
<input type="text" name="name" value="${computer.name}"><br>
<label>RAM: </label>
<select name="ram">
			<option value="CORSAIR Vengeance RGB Pro 32GB (2 x 16GB)">CORSAIR Vengeance RGB Pro 32GB (2 x 16GB)</option>
			<option value="Neo Forza FAYE 32GB (2x16GB)">Neo Forza FAYE 32GB (2x16GB)</option>
			<option value="G.SKILL TridentZ RGB Series 16GB (2 x 8GB)">G.SKILL TridentZ RGB Series 16GB (2 x 8GB)</option>
			<option value="G.SKILL Ripjaws V Series 16GB (2 x 8GB)">G.SKILL Ripjaws V Series 16GB (2 x 8GB)</option>
		</select><br>
<label>CPU: </label>
<select name="cpu">
			<option value="Intel Core i7-10700k Comet Lake 8-Core 3.8 GHz">Intel Core i7-10700k Comet Lake 8-Core 3.8 GHz</option>
			<option value="Intel Core i9-11900K Rocket Lake 8-Core 3.5 GHz">Intel Core i9-11900K Rocket Lake 8-Core 3.5 GHz</option>
			<option value="AMD RYZEN 9 3900X 12-Core 3.8 GHz">AMD RYZEN 9 3900X 12-Core 3.8 GHz</option>
			<option value="AMD Ryzen 7 5800X Vermeer 8-Core 3.8 GHz">AMD Ryzen 7 5800X Vermeer 8-Core 3.8 GHz</option>
		</select><br>
<label>Video Card: </label>
<select name="videoCard">
			<option value="MSI Gaming GeForce GTX 1660 SUPER 6GB">MSI Gaming GeForce GTX 1660 SUPER 6GB</option>
			<option value="MSI Gaming GeForce RTX 3070 Ti 8GB">MSI Gaming GeForce RTX 3070 Ti 8GB</option>
			<option value="GIGABYTE Geforce RTX 2060 OC 6G">GIGABYTE Geforce RTX 2060 OC 6G</option>
			<option value="Gigabyte RX 580 8GB">Gigabyte RX 580 8GB</option>
		</select><br>
<label>Storage: </label>
<select name="storage">
			<option value="Western Digital WD BLACK SN750 NVMe M.2 2280 1TB">Western Digital WD BLACK SN750 NVMe M.2 2280 1TB</option>
			<option value="Western Digital WD BLACK SN750 NVMe M.2 2280 500GB">Western Digital WD BLACK SN750 NVMe M.2 2280 500GB</option>
			<option value="SAMSUNG 970 EVO PLUS M.2 2280 1TB">SAMSUNG 970 EVO PLUS M.2 2280 1TB</option>
			<option value="SAMSUNG 870 EVO Series 2.5 1TB">SAMSUNG 870 EVO Series 2.5" 1TB</option>
		</select><br>
		<input type="submit" value="Submit">
</form>
    
  </div>
</div>

</body>
</html>