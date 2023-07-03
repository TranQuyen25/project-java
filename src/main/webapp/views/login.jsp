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
    <link rel="shortcut icon" href="../img/tiki_header.png" type="image/x-icon">
    <title>Tiki | Đăng nhập tài khoản</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="bootstrap-icons-1.10.3/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <link rel="stylesheet" href="../css/login.css">
</head>
<body>
    <header class="row">
        <img src="img/tiki_header.png" alt="">
        <span style="width: 250px;">Đăng nhập</span>
    </header>
    <main>
        <div class="main-left col-sm-6">
            <img src="/img/icon.login.png" class="img-fluid" alt="">
        </div>
        <div class="main-right col-sm-6">
            <form action="/account/login" method="post" >
            <b><i>${message}</i></b>
                <div class="header p-2 text-uppercase fw-bold">Đăng nhập</div>
                <div class="body">
                    <input name="username" placeholder="Tên đăng nhập">
                    <input name="password" type="password" placeholder="Nhập mật khẩu">
                    <button class="text-uppercase">Đăng nhập</button>
                    <div>
                        <a href="#">Quên mật khẩu</a>
                    </div>
                    <hr>
                   <!--  <div class="different">
                        <a href="#">
                            <img src="img/gg.png" alt="">
                        </a>
                        <a href="#">
                            <img src="img/fb.png" alt="">
                        </a>
                    </div> -->
                    <div class="signup">
                        <p class="m-0 text-center text-muted">
                            Bạn chưa có tài khoản
                            <a href="/signUp" class="text-decoration-none">Đăng ký</a>
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </main>
    <footer class="mx-5">
        <div class="card ">
            <div class="card-body">
                <div class="rown d-flex">
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
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>