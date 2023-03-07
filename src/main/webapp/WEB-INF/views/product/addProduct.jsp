<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm mới sản phẩm</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href='<c:url value="/resources/css/base.css"/>'>

</head>
<body>
	<div class="container mt-16">
		<div class="row">
			<div class="col-md-8 col-md-offset-2" id="product-detail__info">

				${message}
				<div class="panel panel-default">
					<div class="panel-heading">Thêm mới sản phẩm</div>
					<div class="panel-body">
						<form
							action="${pageContext.servletContext.contextPath}/product/save-data-create.htm"
							method="post">
							<div class="form-group">
								<label for="id">Mã sản phẩm</label> <input type="text"
									class="form-control" id="id" name="id" value="${newProductId}" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="name">Tên sản phẩm</label> <input type="text"
									class="form-control" id="name" name="name"
									value="${product.name}">
							</div>
							<div class="form-group">
								<label for="brand">Hãng sản xuất</label> <select
									class="form-control" id="brand" name="brand">
									<c:forEach var="brand" items="${brands}">
										<option value="${brand.id}">${brand.name }</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="volume">Thể tích</label> <input type="text"
									class="form-control" id="volume" name="volume" value="">
							</div>
							<div class="form-group">
								<label for="barCode">Mã vạch</label> <input type="text"
									class="form-control" id="barCode" name="barCode" value="">
							</div>

							<div class="form-group">
								<label for="retailPrice">Giá bán</label> <input type="text"
									class="form-control" id="retailPrice" name="retailPrice"
									value="">
							</div>
							<div class="form-group">
								<label for="purchasePrice">Giá mua</label> <input type="text"
									class="form-control" id="purchasePrice" name="purchasePrice"
									value="">
							</div>
							<div class="form-group">
								<label for="describe">Mô tả</label> <input type="text"
									class="form-control" id="describe" name="describe" value="">
							</div>

							<div class="form-group">
								<label for="describe">URL ảnh</label> <input type="text"
									class="form-control" id="photo" name="photo"
									value="">
							</div>


							<button type="submit" class="btn btn-success btn-lg">Lưu</button>

						</form>

					</div>
				</div>
			</div>

		</div>

	</div>

</body>
</html>