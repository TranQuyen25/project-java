<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../img/tiki_header.png" type="image/x-icon">
    <title>Hỗ trợ - Chăm sóc khách hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="bootstrap-icons-1.10.3/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
    <link rel="stylesheet" href="../css/support.css">
</head>
<body>
    <div class="container px-5">
        <header class="row">
            <img src="img/tiki_header.png" alt="">
        </header>

    </div>
    <hr>
    <div class="container px-5">
        <h3 class="text-primary pt-3 fw-bold">Đội ngũ chăm sóc hách hàng TIKI</h3>
        <p class="text-opacity-25">
            Tiki luôn sẵn sàng lắng nghe ý kiến đóng góp từ bạn. 
            Chúng tôi sẽ pản hồi ngay trong 24h tiếp theo!
        </p>
        <form class="mt-5 mb-5">
            <div class="mb-4 fw-bold">
                Chọn vấn đề bên dưới<span class="text-danger">*</span>
            </div>
            <div class="mb-4">
                <select class="form-select" aria-label="Default select example">
                    <option value="" disable select hidden>Vấn đề hỗ trợ chính</option>
                    <option value="1">Bảo hiểm</option>
                    <option value="2">Bảo hành</option>
                    <option value="3">Chat với Tiki</option>
                  </select>
            </div>
            <div class="mb-4">
                <select class="form-select" aria-label="Default select example">
                    <option value="" disable select hidden>Vấn đề hỗ trợ chi tiết</option>
                    <option aria-label="Disabled select example" disabled value="1">Not found</option>
                    
                  </select>
            </div>
            <div class="mb-4">
                <label for="exampleInputEmail1" class="form-label">Địa chỉ Email của bạn<span class="text-danger">*</span></label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Địa chỉ email" aria-describedby="emailHelp">
              </div>
            <div class="mb-4">
                <label for="exampleInputEmail1" class="form-label">Số điện thoại<span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="" placeholder="Số điện thoại">
            </div>
            <div class="mb-4">
                <label for="exampleFormControlTextarea1" class="form-label">Mã đơn hàng</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="1" placeholder="Bạn có thể nhập nhiều mã đơn hàng ở đây"></textarea>
              </div>
            <div class="mb-4">
                <label for="exampleInputEmail1" class="form-label">Tiêu đề<span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="" placeholder="Nhập tiêu đề">
            </div>
            <div class="mb-4">
                <label for="exampleFormControlTextarea1" class="form-label">Nội dung<span class="text-danger">*</span></label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Mô tả chi tiết vấn đề của bạn"></textarea>
              </div>

            <button type="submit" class="btn btn-primary">Gửi yêu cầu</button>
          </form>
    </div>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>