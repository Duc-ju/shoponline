<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Quán Quen</title>
	<link rel="shortcut icon" type="image/jpg" href="assets/photo/shortcut.png" />
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/project/productpage/style.css">
	<link rel="stylesheet" href="assets/css/respondsive.css">
	<link rel="stylesheet" href="assets/project/productpage/respondsive.css">
	<link rel="stylesheet" href="assets/font/themify-icons/themify-icons.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
		integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
		crossorigin="anonymous" />
	
</head>

<body>
	<div id="toast"></div>
	<div id="main">
		<!-- header section -->
		<%@include file="Header.jsp" %>
		<div class="mark-section">
			<h2><i class="fas fa-bullhorn"></i>   ${title}</h2>
		</div>
		<section id="content">
			<div id="sub-nav">
				<div class="sub-nav-section">
					<h3><i class="fas fa-list"></i>   Thương Hiệu</h3>
					<ul>
						<li><a href="#">Adidas</a></li>
						<li><a href="#">Nike</a></li>
						<li><a href="#">Balenciaga</a></li>
						<li><a href="#">Bitis's</a></li>
						<li><a href="#">Thượng đình</a></li>
					</ul>
				</div>
				<form method="get" action="#" class="sub-nav-section">
					<h3><i class="fas fa-funnel-dollar"></i>   Khoảng giá</h3>
					<div class="row">
						<input class="col-6" type="text" name="" id="from-price" placeholder="Từ">
						<input class="col-6" type="text" name="" id="to-price" placeholder="Đến">
					</div>
					<input class="button mt-16" type="submit" value="Áp dụng">
				</form>
				<div class="sub-nav-section">
					<h3>Tình trạng</h3>
					<ul>
						<li><a href="#">Mới</a></li>
						<li><a href="#">Đã sử dụng</a></li>
					</ul>
				</div>
			</div>
			<div id="product">
				<div class="product-container">
					<div class="sort-section">

						<div class="sort-direction">
							<div class="sort-container">
								<h3>Sắp xếp theo</h3>
								<a href="#" class="active">Phổ biến</a> <a href="#">Mới nhất</a>
								<a href="#">Giảm giá tốt nhất</a> <a href="#">Giá tăng dần</a> <a
									href="#">Giá giảm dần</a>
							</div>
							<div class="pagination-plus">
								<a href="#" class="disable"><i class="fas fa-angle-left"></i></a>
								<a href="#" class=""><i class="fas fa-angle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- Render dữ liệu -->
					<div class="section-content">
						<c:forEach items="${items}" var="item_row">
							<div class="row-item">
								<c:forEach items="${item_row}" var="item">
									<div class="item item-col-2-4">
										<div class="item-container">
											<a href='${pageContext.request.contextPath}/product?type=${type}&id=${item.getId()}' class="item-image">
												<img
													src="${item.getImage().get(0)}"
													alt="" class="item-img">
											</a>
											<div class="item-content">
												<h2 class="item-name">
													<c:choose>
														<c:when test="${item.getHeader().length()>40}">
																${item.getHeader().substring(0, 40)}...
														</c:when>
														<c:when test="${false}">

														</c:when>
														<c:otherwise>
																${item.getHeader()}
														</c:otherwise>
													</c:choose>
												</h2>
												<c:choose>
													<c:when test="${item.getDiscount()*100>=1}">
														<div class="item-old-price">
															<fmt:formatNumber
																value="${item.getPrices()+item.getPrices()*(item.getDiscount())}"
																minFractionDigits="0" maxFractionDigits="0" />đ
														</div>
													</c:when>
													<c:when test="${false}">

													</c:when>
													<c:otherwise>
														<div class="item-old-price" style='color:white'>&nbsp;</div>
													</c:otherwise>
												</c:choose>

												<div class="item-info">
													<c:if test="${item.getDiscount()*100>=1}">
														<div class="item-discount">
															<fmt:formatNumber value="${item.getDiscount()*100}"
																minFractionDigits="0" maxFractionDigits="0" />% Giảm
														</div>
													</c:if>
													<div class="item-content-section">
														<div class="item-price">
															<fmt:formatNumber value="${item.getPrices()}"
																minFractionDigits="0" maxFractionDigits="0" />đ
														</div>
														<a href='${pageContext.request.contextPath}/add-to-cart?type=${type}&id=${item.getId()}' class="item-add-button">Thêm vào giỏ</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="pagination">
					<div class="pagination-container">
						<ul>
							<li><a href="#"><i class="fas fa-angle-left"></i></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a>. . .</a></li>
							<li><a href="#"><i class="fas fa-angle-right"></i></a></li>
						</ul>
					</div>
				</div>
		</section>
		


	</div>


	<%@include file="Footer.jsp" %>



	<!-- script -->

	<script src="assets/js/script.js"></script>
	<script src="assets/project/productpage/script.js"></script>


	
</body>

</html>
