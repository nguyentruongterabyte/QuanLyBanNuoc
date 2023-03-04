
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách hàng hóa</title>
<base href="${pageContext.servletContext.contextPath}">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href='<c:url value="/resources/css/base.css"/>'>
</head>
<!-- Thư viện jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Thư viện jQuery Cookie -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<style>
* {
	box-sizing: border-box;
}

.container {
	padding-top: 12px;
}

.list-product__items-container {
	margin-top: 12px;
	max-height: 75vh;
	overflow-y: auto;
}

.list-product__search-history {
	list-style: none;
}

.list-product__search-history li {
	
}

.list-product__item {
	font-size: 1.2rem;
	line-height: 1.2rem;
	cursor: pointer;
}


.list-product__btns {
	margin-top: 14px;
	display: flex;
	justify-content: space-between;
}
</style>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6 list-product">
				<div class="list-product__search">
					<div class="row">
						<span class="col-md-3 list-product__search-title">Tìm kiếm</span>
						<div class="col-md-9">

							<input type="text"
								class="col-md-8 form-control list-product__search-box">
							<ul class="list-product__search-history panel panel-default"></ul>
						</div>
					</div>
				</div>
				<div class="row list-product__items-container">
					<table border="1"
						class="list-product__items-title table table-bordered table-striped table-hover">
						<tr>
							<th class="col-md-2">Mã SP</th>
							<th class="col-md-5">Tên sản phẩm</th>
							<th class="col-md-3">Mã vạch</th>
							<th class="col-md-2" colspan="2"></th>
						</tr>
						<c:forEach var="product" items="${products}">

							<tr class="list-product__item"
								onclick="location.href='${pageContext.servletContext.contextPath}/product/list.htm?id=${product.id}'">
								<td class="col-md-2">${product.id}</td>
								<td class="col-md-5">${product.name}</td>
								<td class="col-md-3">${product.barCode}</td>
								<td class="col-md-1"><a
									href="${pageContext.servletContext.contextPath}/product/list.htm?lnkEdit&id=${product.id}">Sửa</a></td>
								<td class="col-md-1"><a style="color: red;" href="#"
									class="delete-link"
									data-url="${pageContext.servletContext.contextPath}/product/list.htm?delete&id=${product.id}">Xóa</a></td>

							</tr>


						</c:forEach>
					</table>

				</div>
				<div class="list-product__btns">
					<a
						href="${pageContext.servletContext.contextPath}/product/add-product.htm">
						<button class="btn btn-success">Thêm</button>
					</a>
				</div>
			</div>
			<div class="row col-md-6 product-detail">
				<div class="col-md-12" id="product-detail__info">
					<c:if test="${message != null}">
						<div class="alert alert-success">
							<strong>${message}</strong>
						</div>
					</c:if>
					<div class="panel panel-default">
						<div class="panel-heading">Thông tin</div>
						<div class="row panel-body">
							<div class="col-md-4">
								<c:choose>
									<c:when test="${not empty product.photo}">
										<img style="width: 132px;" class="img-thumbnail"
											src="${product.photo}">
									</c:when>
									<c:otherwise>
										<img style="width: 132px;" class="img-thumbnail"
											src="${pageContext.servletContext.contextPath}/resources/image/product/product-defaut-img.png">
									</c:otherwise>
								</c:choose>
							</div>
							<div class="col-md-8">
								<h5 style="margin: 0">Mã sản phẩm</h5>
								<div class="well well-sm">${product.id}</div>
								<h5 style="margin: 0">Thể tích</h5>
								<div class="well well-sm">${product.volume}</div>


							</div>
							<div class="col-md-12">

								<h5 style="margin: 0">Tên sản phẩm</h5>
								<div class="well well-sm">${product.name }</div>
								<h5 style="margin: 0">Hãng sản xuất</h5>
								<div class="well well-sm">${product.brand.name}</div>
								<h5 style="margin: 0">Giá bán</h5>
								<div class="well well-sm">${product.retailPrice}</div>
								<h5 style="margin: 0">Giá mua</h5>
								<div class="well well-sm">${product.purchasePrice}</div>
								<h5 style="margin: 0">Mô tả</h5>
								<div class="well well-sm">${product.describe}</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			// Xử lý sự kiện click vào link xóa
			$('a.delete-link').click(function(e) {
				e.preventDefault(); // Ngăn chặn chuyển hướng đến link href
				e.stopPropagation();
				var deleteUrl = $(this).data('url');
				// Hiển thị cảnh báo và xác nhận xóa
				if (confirm('Bạn có chắc chắn muốn xóa sản phẩm này?')) {
					// Thực hiện xóa nếu đồng ý
					window.location.href = deleteUrl;
				}
			});
		});
	</script>
	<script>
		// Lọc những danh sách khi ta nhập từ khóa tìm kiếm vào search box
		$(".list-product__search-box").on("keyup", function() {
			// value được dùng để lấy nội dung của thẻ input khi ta nhập vào từ bàn phím
			var value = $(this).val().toLowerCase();
			// Ta sẽ tìm tất cả các thẻ tr có trong table để lọc
			$("table tbody .list-product__item").filter(function() {
				// toggle được sử dụng để hiển thị hoặc ẩn các thẻ  
				// tr phù thuộc vào kết quả tìm kiếm
				$(this).toggle(
				// Không có kết quả thì trả về `toggle(false)` được dùng để ẩn kết quả
				// Ngược lại `toggle(true)` để hiển thị các thẻ tr phù hợp
				$(this).text().toLowerCase().indexOf(value) > -1)
			});
		});
	</script>
	<script>
		// Lấy giá trị tìm kiếm từ input và lưu vào cookie
		$('.list-product__search-box').blur(function() {
			// Lấy giá trị của thẻ input khi ta nhập vào 
			var searchValue = $(this).val();

			// Mở một LocalStore có tên là Product được lưu trên trình duyệt
			var config = JSON.parse(localStorage.getItem('Product')) || {}

			// Nếu giá trị trong thẻ input search không trống thì
			// Thực hiện lưu giá trị của thẻ input khi ta blur ra khỏi 
			// Thẻ input
			if (searchValue !== '') {
				// Nếu như key `searchHistory` trong localstore đã 
				// là mảng thì thêm giá trị vừa blur ra của thẻ input 
				// vào mảng searchHistory
				if ($.isArray(config['searchHistory'])) {
					if ($.inArray(searchValue, config['searchHistory']) == -1) {
						config['searchHistory'].push(searchValue);
					}
				} else {
					// Còn nếu key `searchHistory` chưa có trong localstore
					// thì tạo mảng đó với giá trị ban đầu là searchValue
					config['searchHistory'] = [ searchValue ]
				}
			}
			// Sau khi đã thêm vào thì lưu nó vào localstore
			localStorage.setItem('Product', JSON.stringify(config))
			
		});
	</script>
	<script>
		
	</script>
</body>
</html>