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
          <a class="nav-link" href="/admin/accounts">Accounts</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/categories">Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/admin/products">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/orders">Orders</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  	<div> 
  	<h4 class="bg-danger border bg-opacity-50 rounded">${message}</h4>
  	<h4 class="bg-success border bg-opacity-50 rounded">${message_success}</h4>
</div>
  		<form:form class="row g-3 mb-5" modelAttribute="product">
  <div class="col-md-6">
    <label class="form-label">Id</label>
    <form:input path="id" name="id" type="text" class="form-control"/>
  </div>
  <div class="col-md-6">
    <label class="form-label">Name</label>
    <form:input path="name" name="name" type="text" class="form-control"/>
  </div>
  <div class="col-md-6">
    <label class="form-label">Price</label>
    <form:input path="price" name="price" type="number" class="form-control"/>
  </div>
  <div class="col-md-6">
    <label class="form-label">Create Date</label>
    <form:input path="createDate" name="createDate" type="date" class="form-control"/>
  </div>
  <div class="col-12">
  	<label class="form-label me-3">Category ID</label>
  	
  </div>
  <div class="col-12">
  	<label class="form-label me-3">Image</label>
  	<input name="image" type="file" >
   </div>
  
  <div class="col-12">
    <button formaction="/admin/product/create" class="btn btn-success">Create</button>
    <button formaction="/admin/product/update" class="btn btn-info">Update</button>
    <button formaction="/admin/product/delete/${product.id}" class="btn btn-danger">Delete</button>
    <button formaction="/admin/product/new" class="btn btn-primary">New</button>
  </div>
</form:form>
  	<table class="table table-striped">
  			<tr>
  				<th>Id</th>
  				<th>Name</th>
  				<th>Image</th>
  				<th>Price</th>
  				<th>Create Date</th>
  				<th>Category Id</th>
  				<th></th>
  				
  			</tr>
  			<c:forEach items="${products}" var="product" >
	  			<tr>
	  				<td>${product.id}</td>
	  				<td>${product.name}</td>
	  				<td>${product.image}</td>
	  				<td>${product.price}</td>
	  				<td>${product.createDate}</td>
	  				<td>${product.category.id}</td>
	  				<td colspan="1"><a href="">Edit</a></td>
	  			</tr>
  			</c:forEach>
  			
  		</table>
  	</div>
  	

</body>
</html>