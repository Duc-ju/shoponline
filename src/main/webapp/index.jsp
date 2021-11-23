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
	<link rel="stylesheet" href="assets/project/homepage/style.css">
	<link rel="stylesheet" href="assets/css/respondsive.css">
	<link rel="stylesheet" href="assets/project/homepage/respondsive.css">
	<link rel="stylesheet" href="assets/font/themify-icons/themify-icons.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
		integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
		crossorigin="anonymous" />
	<script>
		$(document).ready(function () {
			$('.slider').bxSlider({
				auto: true,
				pause: 6000
			});
		});
	</script>


</head>

<body>
	<div id="toast"></div>
	<div id="main">
		<!-- header section -->
		<%@include file="Header.jsp" %>
		<!-- slider section -->
		<div id="slider">
			<div class="slider-left">
				<div class="slider">
					<div class="slider-item"><a href="#"><img
								src="https://cf.shopee.sg/file/a2823736441b417cfd60feb4885742ff_xxhdpi"
								alt="" class=""></a></div>
					<div class="slider-item"><a href="#"><img
								src="https://cf.shopee.sg/file/8bf6b1155f5e55adde0a13c17d2a14a5_xxhdpi"
								alt="" class=""></a></div>
					<div class="slider-item"><a href="#"><img
								src="https://cf.shopee.sg/file/9c182845b494735d19f901b0e943bc71_xxhdpi"
								alt="" class=""></a></div>
				</div>
			</div>
			<div class="panels-right">
				<div class="panel">
					<a href="#"><img src="https://cf.shopee.sg/file/9113223251f483640dc9d5c3d43c47a8_xhdpi"
							alt="" class="slider-item-img"></a>
				</div>
				<div class="panel">
					<a href="#"><img src="https://cf.shopee.sg/file/2fe53d83a055b6b2a28e1543aad0b000_xhdpi"
							alt="" class="slider-item-img"></a>
				</div>
			</div>
		</div>
		<!-- portfolio section -->
		<h3 class="section-label">DANH MỤC</h3>
		<div id="portfolio">
			<div class="portfolio-row">
				<a href="${pageContext.request.contextPath}/productpage?" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/687f3967b7c2fe6a134a2c11894eea4b_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Thời trang nam</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="	https://cf.shopee.vn/file/75ea42f9eca124e9cb3cde744c060e4d_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Thời trang nữ</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="	https://cf.shopee.vn/file/4540f87aa3cbe99db739f9e8dd2cdaf0_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Thời trang trẻ em</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?type=laptopitem" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/c3f3edfaa9f6dafc4825b77d8449999d_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Laptop</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?type=mobilephoneitem" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/31234a27876fb89cd522d7e3db1ba5ca_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Điện thoại</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?type=tabletitem" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://hanoicomputercdn.com/media/product/59146_may_tinh_bang_apple_ipad_pro_12_9_m1_bac_2021_0000_1.jpg"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Tablet</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?type=bookitem" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/36013311815c55d303b0e6c62d6a8139_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Sách</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?type=menshoesitems" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="	https://cf.shopee.vn/file/74ca517e1fa74dc4d974e5d03c3139de_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Giày dép nam</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?type=womanshoesitem" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/48630b7c76a7b62bc070c9e227097847_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Giày dép nữ</h3>
				</a>
				<a href="${pageContext.request.contextPath}/productpage?type=kidshoesitem" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://product.hstatic.net/1000355922/product/sandal-tre-em-urban-quai-dan-sd2015-ghi__3__970269255729415193195b3f8b6e54b7.jpg"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Giày dép trẻ em</h3>
				</a>
			</div>




		</div>
		<!-- Book item -->
		<h3 class="section-label mt-32">
			<div class="sale-label">Sách</div>
			<a href="${pageContext.request.contextPath}/productpage?type=bookitem" class="label-direction">Xem tất cả <i class="fas fa-angle-right"></i></a>
		</h3>
		<div id="sale" class="content-section">
			<c:forEach items="${bookItems}" var="item_row">
							<div class="row-item">
								<c:forEach items="${item_row}" var="item">
									<div class="item item-col-2">
										<div class="item-container">
											<a href='${pageContext.request.contextPath}/product?type=bookitem&id=${item.getId()}' class="item-image">
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
														<a href='${pageContext.request.contextPath}/add-to-cart?type=bookitem&id=${item.getId()}' class="item-add-button">Thêm vào giỏ</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:forEach>
		</div>

		<h3 class="section-label mt-32">
			<div class="sale-label">Điện tử</div>
			<a href="${pageContext.request.contextPath}/productpage?type=electronicitem" class="label-direction">Xem tất cả <i class="fas fa-angle-right"></i></a>
		</h3>
		<div id="sale" class="content-section">
			<c:forEach items="${elctronicItems}" var="item_row">
							<div class="row-item">
								<c:forEach items="${item_row}" var="item">
									<div class="item item-col-2">
										<div class="item-container">
											<a href='${pageContext.request.contextPath}/product?type=electronicitem&id=${item.getId()}' class="item-image">
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
														<a href='${pageContext.request.contextPath}/add-to-cart?type=electronicitem&id=${item.getId()}' class="item-add-button">Thêm vào giỏ</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:forEach>
		</div>
		


	<%@include file="Footer.jsp" %>
	<!-- script -->

	<script src="assets/js/script.js"></script>
	<script src="assets/project/homepage/script.js"></script>
</body>

</html>