<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="../img/tiki_header.png"
	type="image/x-icon">
<title>Tiki - Mua bán trên ứng dụng và website</title>
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
<body >
	<div class="container" >
		<header class="row p-2 bg-white">
			<div class="row flex-nowrap col-sm-8">
				<img src="/img/tiki_header.png" id="img-logo" class="rounded-start">
				<form action="/home/search" class="d-flex m-2 offset-sm-4 col-sm-8" role="search">
					<input name="keywords" value="${keywords}" class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" >
						<i class="bi bi-search"></i>
					</button>
				</form>
			</div>
			<div class="rown col-sm-4 d-flex ">
				<div class="Menu-Item">
					<li><a href="/home"><i class="bi bi-house-door-fill"></i>Trang
							chủ</a></li>
				</div>
				<div class="Menu-Item">
					<li><a href="/logout"><i class="bi bi-person-fill"></i>Tài khoản</a>
					</li>
				</div>
				<div class="vr m-3"></div>
				<div class="Menu-Item">
					<li><a href="/cart"><i class="bi bi-cart-fill"></i></a></li>
				</div>
			</div>
		</header>
		<div class="row pt-4">
			<aside class="col-sm-2 p-0">
				<div class="card">
					<div class="card-header fw-bold">Danh mục</div>
					<div class="card-body p-0">
						<c:forEach items="${categories}" var="category">
							<div class="List">
								<a href="/home/${category.id}">
									<div>${category.name}</div>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</aside>
			<article class="col-sm-10">
				<div class="row my-2">
					<div class="col-left col-sm-9 ">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide "></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 1"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 2"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="3" aria-label="Slide 3"></button>

							</div>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/img/slide.webp" class="d-block w-100 rounded"
										alt="...">
								</div>
								<div class="carousel-item">
									<img src="/img/slide1.webp" class="d-block w-100 rounded"
										alt="...">
								</div>
								<div class="carousel-item">
									<img src="/img/slide2.webp" class="d-block w-100 rounded"
										alt="...">
								</div>

							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
					<div class="col-right col-sm-3 d-flex">
						<img src="/img/keSlide.webp" class="img-fluid rounded" alt="">
					</div>
				</div>
				<div class="row p-2 border bordered-1 mx-1 my-3 rounded bg-white">
					<div class="header fw-bold">
						Thương hiệu chính hãng <img src="/img/icon.official.png"
							class="rounded" alt="">
					</div>
					<div class="row p-2 m-0">
						<div class="col-sm-2">
							<a href="#" class="text-decoration-none text-black">
								<div class="card">
									<img src="/img/NhaXuatBanTre.jpg" class="card-img-top img-fluid"
										alt="...">
								</div>
							</a>
						</div>
						<div class="col-sm-2">
							<a href="#" class="text-decoration-none text-black">
								<div class="card">
									<img src="/img/NhaNam.jpg" class="card-img-top img-fluid"
										alt="...">
								</div>
							</a>
						</div>
						<div class="col-sm-2">
							<a href="#" class="text-decoration-none text-black">
								<div class="card">
									<img src="/img/AlpaBook.jpg" class="card-img-top img-fluid"
										alt="...">
								</div>
							</a>
						</div>
						<div class="col-sm-2">
							<a href="#" class="text-decoration-none text-black">
								<div class="card">
									<img src="/img/DinhTi.jpg" class="card-img-top img-fluid"
										alt="...">
								</div>
							</a>
						</div>
						<div class="col-sm-2">
							<a href="#" class="text-decoration-none text-black">
								<div class="card">
									<img src="/img/KimDong.jpg" class="card-img-top img-fluid"
										alt="...">
								</div>
							</a>
						</div>
					</div>
				</div>

				<div class="row p-2 border bordered-1 mx-1 my-3 rounded bg-white">
					
					<!-- <div class="d-flex flex-row ">
						<a href="/home/sort" class="btn btn-light m-2">Giá cao đến thấp</a>
						<a href="/home/sort" class="btn btn-light m-2">Giá cao đến thấp</a>
						<a href="/home/sort?field=price" class="btn btn-light m-2">Giá cao đến thấp</a>
					</div>   -->
					<div class="row m-0 row-cols-1 row-cols-md-6 g-4">

						<%-- <c:forEach items="${products}" var="product">
						<div class="col p-1">
							<div class="card h-100">
								<a href="#" class="p-0 text-decoration-none text-black"> <img
									src="img/product/${product.image}" class="card-img-top" alt="...">
									<div class="card-body p-1">
										<div class="product">
											<div class="product-info-top">
												<div class="name-product">${product.name}</div>
												<div>
													<button class="btn btn-light"><i class="bi bi-cart-fill"></i></button>
												</div>
											</div>
											<div class="product-info-bottom pt-2">
												<div class="price text-primary">
													<span class="vnd">₫</span> <span class="price-n fs-6">${product.price}</span>
												</div>
												<div class="sold text-muted">Đã bán 233</div>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
					 --%>
						<c:forEach items="${page.content}" var="product">
							<div class="col p-1">
								<div class="card h-100">
									<a href="#" class="p-0 text-decoration-none text-black"> <img
										src="/img/product/${product.image}" class="card-img-top"
										alt="...">
										<div class="card-body p-1">
											<div class="product">
												<div class="product-info-top">
													<div class="name-product">${product.name}</div>
													<div>
														<button class="btn btn-light">
															<a href="/cart/add/${product.id}"><i class="bi bi-cart-fill"></i></a>
														</button>
													</div>
												</div>
												<div class="product-info-bottom pt-2">
													<div class="price text-primary">
														<span class="vnd">₫</span> <span class="price-n fs-6">${product.price}</span>
													</div>
													<div class="sold text-muted">Đã bán 233</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
						</c:forEach>

					</div>
					 <nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" href="/home?p=0">First</a></li>
							<li class="page-item"><a class="page-link" href="/home?p=${page.number-1}">Previous</a></li>
							<li class="page-item"><a class="page-link" href="/home?p=${page.number+1}" >Next</a></li>
							<li class="page-item"><a class="page-link" href="/home?p=${page.totalPages -1}">Last</a></li>
						</ul>
					</nav> 

				</div>

			</article>
		</div>
		<footer>
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col">
							<h6>Chăm sóc khách hàng</h6>
							<li class="item-footer"><a href="#">Liên hệ</a></li>
							<li class="item-footer"><a href="#">gửi phản hồi</a></li>
						</div>
						<div class="col">
							<h6>Về Tiki</h6>
							<li class="item-footer"><a href="#">Giới thiệu</a></li>
						</div>
						<div class="col">
							<h6>Thanh toán</h6>
							<div class="item-pay d-flex">
								<li class="item-footer border rounded m-1"><a href="#"><img
										class="img p-1" src="/img/thanhToan.png" alt=""></a></li>
								<li class="item-footer border rounded m-1"><a href="#"><img
										class="img p-1" src="/img/thanhToan1.png" alt=""></a></li>
								<li class="item-footer border rounded m-1"><a href="#"><img
										class="img p-1" src="/img/thanhToan2.png" alt=""></a></li>
								<li class="item-footer border rounded m-1"><a href="#"><img
										class="img p-1" src="/img/thanhToan3.png" alt=""></a></li>
							</div>

						</div>
						<div class="col">
							<h6>Theo dõi</h6>
							<li class="item-footer"><a href="#">Facebook</a></li>
							<li class="item-footer"><a href="#">Instagram</a></li>
							<li class="item-footer"><a href="#">LinkedIn</a></li>
						</div>
						<div class="col">
							<h6>Tải app</h6>
							<div class="app d-flex">
								<li class="item-footer"><a href="#"><img
										src="/img/qrcode.png" width="80" height="80" alt=""></a></li>
								<li class="item-footer col-sm-6"><a href="#"><img
										src="/img/appstore.png" class="mx-2" width="122" alt=""></a>
									<a href="#"><img src="/img/playstore.png" class="mx-2 mt-2"
										width="122" alt=""></a></li>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>