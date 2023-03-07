<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tạo hóa đơn</title>

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
	border: 2px;
	border-color: rgb(11, 11, 11);
	background-color: rgba(169, 169, 169, 0.56);
}

form {
	font-size: 20px;
	text-align: left;
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
	width: 400px;
	height: 50px;
	margin-right: 100px;
}

select {
	display: inline-block;
	/* cho phép label và select nằm cùng hàng */
	width: 500px;
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
	width: 100px;
	/* chiều rộng của label */
	text-align: left;
	/* căn phải nội dung của label */
	margin-right: 50px;
	/* khoảng cách giữa label và input */
	margin-left: 50px;
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

img {
	width: 380px;
	height: 400px;
}
</style>

<body style="background-color: rgba(10, 172, 183, 0.855);">

	<div class="container">
		<div style="margin-top: 24px;">
			<div class="panel panel-default"
				>
				<div class="panel-heading">
					<h3 class="panel-title">Tạo Hoá Đơn</h3>
				</div>

				<div class="panel-body">
					<div class="row">
						<div class="col-md-12">
							<div class="box">
								<h4>Thông tin hoá đơn</h4>
								<hr>
								<div class="row">
									<!-- <div class="col-md-4">
                                        
                                    </div> -->
									<div class="col-md-12">

										<form:form action = "${pageContext.servletContext.contextPath}/bill/create-bill.htm" modelAttribute="invoice" method="POST">

											<div class="form-group">
												<label style="width: 300px;" for="invoiceId">
													Mã hoá đơn
												</label> 
												<input id ="invoiceId" type="text" style="width: 500px;" name="invoiceId" value="${invoiceId}" readonly="readonly" />
											</div>
											<div class="form-group">
												<label style="width: 300px;" for="invoiceDate">
													Ngày lập
												</label>
													<form:input type="datetime-local"
													style="font-size: 30px; width: 500px" id="invoiceDate" path="invoiceDate"></form:input>
											</div>
											<div class="form-group">
												<label style="width: 300px;" for="cashier">Nhân
													viên lập hoá đơn</label> 
<%-- 													<form:select id="cashier" --%>
<%--  													 path= "staff" items="${cashiers}" itemLabel="${name}" itemValue="${id}"> --%>
													
<%-- 													</form:select>  --%>
												<select id="cashier" name = "staffId">
													<c:forEach var = "c" items = "${cashiers}">
														<option style="font-size: 1.8rem; line-height: 24px;" value = "${c.id}">${c.fullname}</option>
													</c:forEach>
												</select>
											</div>
											<hr>
											<div class="row">
												<div class="col-md-6">
													<div class="text-center">
														<button class="btn btn-success  buttonform">Tạo
															Đơn Hàng</button>

													</div>
												</div>
												<div class="col-md-6">
													<div class="text-center">
														<a href="${pageContext.servletContext.contextPath}/">
														
															<span class="btn btn-default buttonform">Đóng</span>
														</a>
													</div>
												</div>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>

</html>