<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Trang chủ</title>
	<style>
		/* Navbar style */
		.navbar {
			background-color: black;
			display: flex;
			justify-content: space-between;
			align-items: center;
			padding: 10px;
		}

		.navbar ul {
			list-style: none;
			margin: 0;
			padding: 0;
			display: flex;
		}

		.navbar li {
			margin: 0 10px;
		}

		.navbar a {
			color: white;
			text-decoration: none;
			font-weight: bold;
			transition: color 0.2s;
		}

		.navbar a:hover {
			color: gray;
		}
	</style>
</head>
<body>

	<nav class="navbar">
		<h1>Trang chủ</h1>
		<ul>
			<li><a href="${pageContext.servletContext.contextPath}/product/list.htm">Danh sách mặt hàng</a></li>
			<li><a href="${pageContext.servletContext.contextPath}/bill/create-bill.htm">Tạo hóa đơn</a></li>
			<li><a href="#">Navbar item 3</a></li>
		</ul>
	</nav>

</body>
</html>