<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<header id="header">

			<div class="nav">
				<ul class="control">
					<li class="control-item">
						<a href="#">
							<i class="ti-user"> </i>
							Đức Ju
						</a>
					</li>
					<li class="control-item active"><a
							href="https://duc-ju.github.io/online-shop/">Trang chủ</a></li>
					<li class="control-item" id="logout"><a href="#">Đăng xuất</a></li>

				</ul>
			</div>

			<a href="https://duc-ju.github.io/online-shop/" class="brand-name">
				<div class="brand-logo"><img src="assets/photo/logo.png" alt="" class=""></div>
			</a>



			<form method="get" action="#" class="search">
				<input type="text" name="search" placeholder="Nhập tên sản phẩm"
					id="search-product-name">
				<input type="submit" value="Tìm kiếm" id="submit-button">
			</form>

			<div onclick="window.open('/online-shop/Cart.html','_self')" class="cart">
				<div class="quantity">9</div>
				<i class="ti-shopping-cart cart-icon"></i>
			</div>

		</header>
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
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/687f3967b7c2fe6a134a2c11894eea4b_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Thời trang nam</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="	https://cf.shopee.vn/file/75ea42f9eca124e9cb3cde744c060e4d_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Thời trang nữ</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="	https://cf.shopee.vn/file/4540f87aa3cbe99db739f9e8dd2cdaf0_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Thời trang trẻ em</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/c3f3edfaa9f6dafc4825b77d8449999d_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Laptop</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/31234a27876fb89cd522d7e3db1ba5ca_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Điện thoại</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://hanoicomputercdn.com/media/product/59146_may_tinh_bang_apple_ipad_pro_12_9_m1_bac_2021_0000_1.jpg"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Tablet</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/36013311815c55d303b0e6c62d6a8139_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Sách</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="	https://cf.shopee.vn/file/74ca517e1fa74dc4d974e5d03c3139de_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Giày dép nam</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://cf.shopee.vn/file/48630b7c76a7b62bc070c9e227097847_tn"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Giày dép nữ</h3>
				</a>
				<a href="https://duc-ju.github.io/online-shop/ProductPage.html" class="portfolio-item">
					<div class="portfolio-item-image">
						<img src="https://product.hstatic.net/1000355922/product/sandal-tre-em-urban-quai-dan-sd2015-ghi__3__970269255729415193195b3f8b6e54b7.jpg"
							alt="" class="portfolio-item-img">
					</div>
					<h3 class="portfolio-name">Giày dép trẻ em</h3>
				</a>
			</div>




		</div>
		<!-- Best item on sale -->
		<h3 class="section-label mt-32">
			<div class="sale-label">SẢN PHẨM GIẢM GIÁ</div>
			<a href="#" class="label-direction">Xem tất cả <i class="fas fa-angle-right"></i></a>
		</h3>
		<div id="sale" class="content-section">
			<div class="row-item">
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="https://cf.shopee.vn/file/17f31c8384d188c1d0bf8bb60d6ac2d2"
								alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="https://cf.shopee.vn/file/9443b8c9d25cd576615a9d499d6b131e"
								alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Bộ Đồ Ngủ Nữ Mùa Hè Cao Cấp Loirechic
								BDN03 -1
							</h2>
							<div class="item-old-price">&nbsp</div>
							<div class="item-info">
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>







			</div>

			<div class="row-item">
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>






			</div>



		</div>

		<!-- New item -->
		<h3 class="section-label mt-32">
			<div class="sale-label">SẢN PHẨM MỚI</div>
			<a href="#" class="label-direction">Xem tất cả <i class="fas fa-angle-right"></i></a>
		</h3>
		<div id="sale" class="content-section">
			<div class="row-item">
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>






			</div>
			<div class="row-item">
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>






			</div>



		</div>

		<!-- Best item on sale -->
		<h3 class="section-label mt-32">
			<div class="sale-label">TẤT CẢ SẢN PHẨM</div>
		</h3>
		<div id="sale" class="content-section">
			<div class="row-item">
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>






			</div>

			<div class="row-item">
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="https://cf.shopee.vn/file/a6646f95da256ceea9f7a5faf35450bb"
								alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Nồi chiên không dầu điện tử 5.5L BlueStone
								AFB-5873
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>
				<a href="#" class="item item-col-2">
					<div class="item-container">
						<div class="item-image">
							<img src="assets/photo/portfolio.png" alt="" class="item-img">
						</div>
						<div class="item-content">
							<h2 class="item-name">Áo thun nam chất lượng cao nhập khẩu chính
								hãng
							</h2>
							<div class="item-old-price">106.000đ</div>
							<div class="item-info">
								<div class="item-discount">50% giảm</div>
								<div class="item-content-section">
									<div class="item-price">58.000đ</div>
									<div class="item-add-button">Thêm vào giỏ
									</div>
								</div>
							</div>
						</div>
					</div>
				</a>






			</div>



		</div>
		<div class="section-center">
			<a href="#" class="button">Xem tất cả</a>
		</div>
		<div id="footer">
			<div class="ruler-line">&nbsp</div>
			<div class="footer-container">
				<div class="footer-section">
					<h2>CHĂM SÓC KHÁCH HÀNG</h2>
					<ul>
						<li><a href="#">Trung Tâm Trợ Giúp</a></li>
						<li><a href="#">Hướng Dẫn Mua Hàng</a></li>
						<li><a href="#">Thanh Toán</a></li>
						<li><a href="#">Vận Chuyển</a></li>
						<li><a href="#">Trả Hàng & Hoàn Tiền</a></li>
						<li><a href="#">Chăm Sóc Khách Hàng</a></li>
						<li><a href="#">Chính Sách Bảo Hành</a></li>
					</ul>
				</div>
				<div class="footer-section">
					<h2>VỀ QUÁN QUEN</h2>
					<ul>
						<li><a href="#">Giới Thiệu Về Quán Quen Việt Nam</a></li>
						<li><a href="#">Tuyển Dụng</a></li>
						<li><a href="#">Chính sách bảo mật</a></li>
						<li><a href="#">Chính hãng</a></li>
						<li><a href="#">Chương trình tiếp thị liên kết</a></li>
						<li><a href="#">Kênh quảng bá</a></li>
						<li><a href="#">Liên hệ với truyền thông</a></li>
					</ul>
				</div>

				<div class="footer-section">
					<h2>THANH TOÁN</h2>
					<ul>
						<li><a href="#">Visa</a></li>
						<li><a href="#">MasterCard</a></li>
						<li><a href="#">JCB</a></li>
						<li><a href="#">CODE</a></li>
						<li><a href="#">Trả Góp</a></li>
					</ul>
					<h2>ĐƠN VỊ VẬN CHUYỂN</h2>
					<ul>
						<li><a href="#">Giao Hàng Nhanh</a></li>
						<li><a href="#">Giao hàng tiết kiệm</a></li>
						<li><a href="#">Viettel Post</a></li>
						<li><a href="#">Ninja Van</a></li>
					</ul>
				</div>

				<div class="footer-section">
					<h2>THEO DÕI CHÚNG TÔI TRÊN</h2>
					<ul>
						<li><a href="#"><i class="fab fa-facebook-square"></i> Facebook</a></li>
						<li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
						<li><a href="#"><i class="fab fa-linkedin"></i> LinkedIn</a></li>
					</ul>
				</div>
			</div>
			<div class="ruler-line">&nbsp</div>
			<div id="footer-copyright">© 2021 Quán Quen. Tất cả các quyền được bảo lưu.</div>
		</div>
	</div>



	<!-- script -->

	<script src="assets/js/script.js"></script>
	<script src="assets/project/homepage/script.js"></script>
</body>

</html>