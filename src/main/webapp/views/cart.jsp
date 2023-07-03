<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../img/tiki_header.png" type="image/x-icon">
 <!--    <link href="../img/tiki_header.png" rel="shortcut icon" /> -->
    
    <title>Giỏ hàng</title>
    

     <link rel="stylesheet" href="../css/cart.css">
    
   	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="bootstrap-icons-1.10.3/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item d">
                            <a class="nav-link" href="#">Tải ứng dụng</a>
                        </li>
                <div class="vr m-3"></div>
                        <li class="nav-item d-flex" >
                            <a class="nav-link" href="#">
                                Kết nối 
                                <a class="nav-link" href="#"><i class="bi bi-facebook"></i></a>
                                <a class="nav-link" href="#"><i class="bi bi-instagram"></i></a>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item ">
                            <a class="nav-link" href="#"><i class="bi bi-question-circle"></i> Hỗ trợ</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="bi bi-globe2"></i> Tiếng việt
                            </a>
                            <ul class="dropdown-menu">
                              <li><a class="dropdown-item" href="#">Tiếng việt</a></li>
                              <li><a class="dropdown-item" href="#">English</a></li>
                            </ul>
                          </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="bi bi-person-circle"></i>
                                <span>quyen25</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div>
        <div class="card">
            <div class="container">
                <div class="card-body">
                    <div class="cart-left">
                        <img src="../img/tiki_header.png" height="60" alt="">
                        <p>Giỏ hàng</p>
                    </div>
                    <div class="cart-right col-sm-6">
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Nhập sản phẩm bạn muốn tìm" aria-label="Search">
                            <button class="btn btn-primary" type="submit"><i class="bi bi-search"></i></button>
                        </form> 
                    </div>
                </div>
            </div>
          </div>
    </div>
	<div class="container">
		<div class="row col-sm-4">
			<div class="card address">
				<div class="top">
					<p>Giao tới</p>
					<a href="#" class="text-decoration-none">Thay đổi</a>
				</div>
				<div class="customer-info">
					<p class="name p-2 fw-bold">Nguyễn Văn A</p>
					<div class="vr "></div>
					<p class="phone p-2 fw-bold">0868521465</p>
				</div>
				<div class="address">
					<p class="text-secondary">123 Tô ký, Q12</p>
				</div>
			</div>
			<div class="card promotion">
				<div class="top">
					<p class="fw-semibold">Tiki khuyến mãi</p>
					<p>Có thể chọn 2</p>
				</div>
				<div class="sale">
					<a href="#" class="text-decoration-none"><i
						class="bi bi-ticket"></i> Chọn mã khuyến mãi</a>
				</div>
			</div>
			<div class="card bill">
				<div class="price-item">
					<ul class="price-item">
						<li class="price-items">
							<div class="price-text">Tạm tính</div>
							<div class="price-value">
								0<span class="vnd">₫</span>
							</div>
						</li>
						<li class="price-items">
							<div class="price-text">Giảm giá</div>
							<div class="price-value">
								0<span class="vnd">₫</span>
							</div>
						</li>
					</ul>
				</div>
				<hr>
				<div class="price-items">
					<span>Tổng tiền</span>
					<div class="prices-content">
						<div class="text-danger ">Vui lòng chọn sản phẩm</div>
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-primary">thanh toán</button>
		</div>
		<div class="row col-sm-8">
			<div class="card">
				<div class="thead">
					<label class="form-check-label mx-2" for="flexCheckDefault">
						<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault">
					</label>
					<div class="all col-sm-5">Tất cả</div>
					<div class="price col-sm-2">Đơn giá</div>
					<div class="total col-sm-2">Số lượng</div>
					<div class="money col-sm-2">Thành tiền</div>
					<div class="remove ">
						<i class="bi bi-trash"></i>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="row">
					<div class="product">
						<div class="check-box">
							<label class="form-check-label mx-2" for="flexCheckDefault">
								<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault">
							</label>
						</div>
						<div class="info col-sm-5">
							<a href="#"> <img src="img/product/24.webp" alt="">
							</a>
							<div class="detail">
								<a class="text-decoration-none text-black" href="#">Nhà giả
									kim(Tái bản 2020)</a>
								<div class="sale-product p-2">
									<span
										class="p-1 border border-primary border-opacity-50 rounded-pill">Giảm
										10%</span>
								</div>
							</div>
						</div>
						<div class="price col-sm-2 text-danger">
							109.000 <span class="vnd">₫</span>
						</div>
						<div class="total col-sm-2">
							<div class="buttons_added">
								<input name="" value="1" type="number" min="1" max="50" style="width: 75px;">
							</div>
						</div>
						<div class="money col-sm-2 text-danger">
							109.000 <span class="vnd">₫</span>
						</div>
						<div class="remove ">
							<button class="btn btn-light">
								<i class="bi bi-trash"></i>
							</button>
						</div>
					</div>
					<!-- <div class="product">
                        <div class="check-box">
                            <label class="form-check-label mx-2" for="flexCheckDefault">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </label>
                        </div>
                        <div class="info col-sm-5">
                            <a href="#">
                                <img src="img/product/24.webp" alt="">
                            </a>
                            <div class="detail">
                                <a class="text-decoration-none text-black" href="#">Nhà giả kim(Tái bản 2020)</a>
                                <div class="sale-product p-2">
                                    <span class="p-1 border border-primary border-opacity-50 rounded-pill">Giảm 10%</span>
                                </div>
                            </div>
                        </div>
                        <div class="price col-sm-2 text-danger">109.000 <span class="vnd">₫</span></div>
                        <div class="total col-sm-2">
                            <div class="buttons_added">
                                <input class="minus is-form" type="button" value="-">
                                <input aria-label="quantity" class="input-qty" max="50" min="1" name="" type="number" value="1">
                                <input class="plus is-form" type="button" value="+">
                            </div>
                        </div>
                        <div class="money col-sm-2 text-danger">109.000 <span class="vnd">₫</span></div>
                        <div class="remove ">
                            <button class="btn btn-light"><i class="bi bi-trash"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="row">
                    <div class="shop">
                        <div class="check-box-all fw-bold">
                            <label class="form-check-label mx-2" for="flexCheckDefault">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </label>
                            <span>Nhà sách Fahasa</span>
                        </div>
                    </div>
                    <div class="product">
                        <div class="check-box">
                            <label class="form-check-label mx-2" for="flexCheckDefault">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </label>
                        </div>
                        <div class="info col-sm-5">
                            <a href="#">
                                <img src="img/product/24.webp" alt="">
                            </a>
                            <div class="detail">
                                <a class="text-decoration-none text-black" href="#">Nhà giả kim(Tái bản 2020)</a>
                                <div class="sale-product p-2">
                                    <span class="p-1 border border-primary border-opacity-50 rounded-pill">Giảm 10%</span>
                                </div>
                            </div>
                        </div>
                        <div class="price col-sm-2 text-danger">109.000 <span class="vnd">₫</span></div>
                        <div class="total col-sm-2">
                            <div class="buttons_added">
                                <input class="minus is-form" type="button" value="-">
                                <input aria-label="quantity" class="input-qty" max="50" min="1" name="" type="number" value="1">
                                <input class="plus is-form" type="button" value="+">
                            </div>
                        </div>
                        <div class="money col-sm-2 text-danger">109.000 <span class="vnd">₫</span></div>
                        <div class="remove ">
                            <button class="btn btn-light"><i class="bi bi-trash"></i></button>
                        </div>
                    </div>
                    <div class="product">
                        <div class="check-box">
                            <label class="form-check-label mx-2" for="flexCheckDefault">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </label>
                        </div>
                        <div class="info col-sm-5">
                            <a href="#">
                                <img src="img/product/24.webp" alt="">
                            </a>
                            <div class="detail">
                                <a class="text-decoration-none text-black" href="#">Nhà giả kim(Tái bản 2020)</a>
                                <div class="sale-product p-2">
                                    <span class="p-1 border border-primary border-opacity-50 rounded-pill">Giảm 10%</span>
                                </div>
                            </div>
                        </div>
                        <div class="price col-sm-2 text-danger">109.000 <span class="vnd">₫</span></div>
                        <div class="total col-sm-2">
                            <div class="buttons_added">
                                <input class="minus is-form" type="button" value="-">
                                <input aria-label="quantity" class="input-qty" max="50" min="1" name="" type="number" value="1">
                                <input class="plus is-form" type="button" value="+">
                            </div>
                        </div>
                        <div class="money col-sm-2 text-danger">109.000 <span class="vnd">₫</span></div>
                        <div class="remove ">
                            <button class="btn btn-light"><i class="bi bi-trash"></i></button>
                        </div>
                    </div>
                </div> 
            </div> -->
				</div>
			</div>
		</div>
	</div>
	<footer>
        <div class="card border border-top">
            <div class="card-body ">
                <div class="row">
                    <div class="col">
                        <h6>Chăm sóc khách hàng</h6>
                        <li class="item-footer">
                            <a href="#">Liên hệ</a>
                        </li>
                        <li class="item-footer">
                            <a href="#">gửi phản hồi</a>
                        </li>
                    </div>
                    <div class="col">
                        <h6>Về Tiki</h6>
                        <li class="item-footer">
                            <a href="#">Giới thiệu</a>
                        </li>
                    </div>
                    <div class="col">
                        <h6>Thanh toán</h6>
                        <div class="item-pay d-flex">
                            <li class="item-footer border rounded m-1">
                                <a href="#"><img class="img p-1" src="img/thanhToan.png" alt=""></a>
                            </li>
                            <li class="item-footer border rounded m-1">
                                <a href="#"><img class="img p-1" src="img/thanhToan1.png" alt=""></a>
                            </li>
                            <li class="item-footer border rounded m-1">
                                <a href="#"><img class="img p-1" src="img/thanhToan2.png" alt=""></a>
                            </li>
                            <li class="item-footer border rounded m-1">
                                <a href="#"><img class="img p-1" src="img/thanhToan3.png" alt=""></a>
                            </li>
                        </div>
                        
                    </div>
                    <div class="col">
                        <h6>Theo dõi</h6>
                        <li class="item-footer">
                            <a href="#">Facebook</a>
                        </li>
                        <li class="item-footer">
                            <a href="#">Instagram</a>
                        </li>
                        <li class="item-footer">
                            <a href="#">LinkedIn</a>
                        </li>
                    </div>
                    <div class="col">
                        <h6>Tải app</h6>
                        <div class="app d-flex">
                            <li class="item-footer">
                                <a href="#"><img src="img/qrcode.png" width="80" height="80" alt=""></a>
                            </li>
                            <li class="item-footer col-sm-6">
                                <a href="#"><img src="img/appstore.png" class="mx-2" width="122" alt=""></a>
                                <a href="#"><img src="img/playstore.png" class="mx-2 mt-2" width="122" alt=""></a>

                            </li>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>