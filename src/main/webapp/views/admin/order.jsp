<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="../img/tiki_header.png"
	type="image/x-icon">
<title>Tiki - Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="bootstrap-icons-1.10.3/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<link rel="stylesheet" href="../css/index.css">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary ">
  <div class="container-fluid ">
    <div class="collapse navbar-collapse d-flex justify-content-center" >
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link"  href="/admin/accounts">Accounts</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/categories">Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/products">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/admin/orders">Orders</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  	<table class="table table-striped">
  			<tr>
  				<th>Id</th>
  				<th>UserName ID</th>
  				<th>Product ID</th>
  				<th>Quantity</th>
  				<th>Price</th>
  				<th></th>
  			</tr>
  			<c:forEach items="${orderDetails}" var="orderDetail" >
	  			<tr>
	  				<td>${orderDetail.id}</td>
	  				<td>${orderDetail.order.id}</td>
	  				<td>${orderDetail.product.id}</td>
	  				<td>${orderDetail.quantity}</td>
	  				<td>${orderDetail.price}</td>
	  				<td colspan="1"><a href="">Edit</a></td>
	  			</tr>
  			</c:forEach>
  			
  		</table>
  	</div>
	
</body>
</html>