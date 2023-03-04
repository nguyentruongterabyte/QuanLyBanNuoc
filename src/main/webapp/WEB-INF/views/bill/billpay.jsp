
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<style>
.panel-title {
	font-weight: bold;
	font-size: 50px;
	text-align: center;
	background-color: rgba(9, 160, 138, 0.968);
}

.box {
	border: 3px;
	border-color: rgb(11, 11, 11);
	background-color: rgba(169, 169, 169, 0.56);
}

form {
	font-size: 20px;
}

h3 {
	font-family: 'Times New Roman', Times, serif;
	text-align: left;
	font-weight: bold;
	font-size: 25px;
}

h4 {
	font-family: 'Times New Roman', Times, serif;
	text-align: left;
	font-weight: 30px;
	font-size: 40px;
	background-color: cornsilk;
}

.border {
	border: 1px solid #ccc;
	/* đường viền 1 pixel với màu #ccc */
	padding: 10px;
	/* tạo khoảng cách giữa nội dung và đường viền */
}

input {
	width: 350px;
	height: 50px;
}

select {
	display: inline-block;
	/* cho phép label và select nằm cùng hàng */
	width: 350px;
	height: 50px;
	/* độ rộng của select */
	font-size: 30px;
}

label, input {
	display: inline-block;
	margin-bottom: 10px;
	/* khoảng cách giữa các dòng */
	vertical-align: middle;
	/* căn giữa theo chiều dọc */
}

label {
	font-size: 25px;
	width: 200px;
	/* chiều rộng của label */
	text-align: left;
	/* căn phải nội dung của label */
	margin-right: 100px;
	/* khoảng cách giữa label và input */
}

.buttonform {
	font-size: 30px;
	font-family: 'Times New Roman', Times, serif;
	font-weight: bold;
}

span {
	font-weight: bold;
}

option {
	font-size: 50px;
	font-weight: bold;
	font-family: 'Times New Roman', Times, serif;
}

input[type="date"] {
	font-size: 40px;
}
</style>

<body style="background-color: rgba(10, 172, 183, 0.855);">

	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Thanh Toán</h3>
			</div>

			<div class="panel-body">
				<div class="row">
					<div class="col-md-12">
						<div class="box">
							<h4>Thông tin hoá đơn</h4>
							<div class="row">
								<div class="col-md-4">

									<div style="text-align: center;">
										<img
											src="${pageContext.servletContext.contextPath}/resources/image/bill/billform-img.png"
											alt="Picture" style="width: 200px; height: 200px;">
									</div>
								</div>
								<div class="col-md-8">

									<form>
										<div class="input-group">
											<label for="ngay-lap">Họ tên:</label> <input type="text"
												style="font-size: 30px;" id="hoten">
										</div>
										<div class="form-group">
											<label for="ngay-lap">Mã khách hàng:</label> <input
												type="text" style="font-size: 30px;" id="makhachhang">
										</div>
										<div class="form-group">
											<label for="ngay-lap">Hoá đơn:</label> <input type="text"
												style="font-size: 30px;" id="Hoadon">
										</div>
										<div class="form-group">
											<label for="nv-lap-hoa-don">Nhân viên lập hoá đơn:</label> <select
												id="nv-lap-hoa-don" name="nv-lap-hoa-don">
												<option value="nv1">Nhân viên 1</option>
												<option value="nv2">Nhân viên 2</option>
												<option value="nv3">Nhân viên 3</option>
											</select>
										</div>
										<div class="form-group">
											<label for="amount">Tổng hoá đơn:</label> <input
												type="number" style="font-size: 30px;" id="amount"
												name="amount"> <span style="margin-left: 10px;">VND</span>
										</div>
										<div class="form-group">
											<label for="amount">Đã thanh toán:</label> <input
												type="number" style="font-size: 30px;" id="amount"
												name="amount"> <span style="margin-left: 10px;">VND</span>
										</div>
										<div class="form-group">
											<label for="amount">Số tiền trả lại:</label> <input
												type="number" style="font-size: 30px;" id="amount"
												name="amount"> <span style="margin-left: 10px;">VND</span>
										</div>
									</form>
								</div>
							</div>
							<hr>
							<div class="box">
								<h4 style="text-align: left; background-color: cornsilk;">Thanh
									Toán</h4>
								<form action="" method="post">

									<div class="form-group">
										<label for="ngay-lap">Ngày lập:</label> <input type="date"
											style="font-size: 30px; width: 500px" id="ngay-lap">
									</div>
									<div class="form-group">
										<label for="payment-method">Hình thức thanh toán:</label> <select
											style="font-size: 30px; width: 500px" id="payment-method"
											name="payment-method">
											<option value="momo">Thanh toán bằng MoMo</option>
											<option value="cash">Thanh toán bằng tiền mặt</option>
											<option value="bank">Chuyển khoản ngân hàng</option>
										</select>
									</div>
									<div class="form-group">
										<label for="amount">Số tiền thanh toán:</label> <input
											type="number" style="font-size: 30px width:500px" id="amount"
											name="amount"> <span style="margin-left: 10px;">VND</span>
									</div>
									<div class="form-group">
										<label for="amount">Số tiền phải trả:</label> <input
											type="number" style="font-size: 30px width:500px" id="amount"
											name="amount"> <span style="margin-left: 10px;">VND</span>
									</div>
									<hr>
									<div class="row">
										<div class="col-md-6">
											<div class="text-center">
												<button class="btn btn-success buttonform">Thanh
													toán</button>

											</div>
										</div>
										<div class="col-md-6">
											<div class="text-center">
												<button type="button" class="btn btn-danger buttonform">Huỷ</button>

											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>

</html>

