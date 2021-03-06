<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Font Icon -->
	<link rel="stylesheet"
		href="assets/project/login/assets/fonts/material-icon/css/material-design-iconic-font.min.css">

	<!-- Main css -->
	<link rel="stylesheet" href="assets/project/login/assets/css/style.css">
	<title>Đăng kí</title>
</head>

<body>
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Đăng kí</h2>
						<form method="POST" class="register-form" id="register-form"
							action="${pageContext.request.contextPath}/register">

								<div id="error-message"
									style="color: red; font-weight: 600; margin-bottom: 15px; padding: 10px 4px;">
									${errorMessage}</div>
						 
							<div class="form-group">
								<label for="name"><i
										class="zmdi zmdi-account material-icons-name"></i></label>
								<input type="text" name="username" id="name" required
									placeholder="Tên đăng nhập" />
							</div>
							<div class="form-group">
								<label for="phonenumber"><i
										class="zmdi zmdi-face"></i></label>
								<input type="text" name="phoneNumber" id="phonenumber" required
									placeholder="Số điện thoại" />
							</div>
							<div class="form-group">
								<label for="email"><i
										class="zmdi zmdi-face"></i></label>
								<input type="email" name="email" id="email" required
									placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label>
								<input type="password" name="pass" id="pass" required
									placeholder="Mật khẩu" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i
										class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									required placeholder="Nhập lại mật khẩu" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" />
								<label for="agree-term"
									class="label-agree-term"><span><span></span></span>Tôi đồng ý với <a
										href="TermsOfService.jsp"
										class="term-service">Điều khoản sử dụng</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Đăng kí" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure><img src="assets/project/login/assets/images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="Login.jsp" class="signup-image-link">Tôi đã có tài khoản</a>
					</div>
				</div>
			</div>
		</section>
	</div>

	<script src="assets/project/login/assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/project/login/assets/js/main.js"></script>
</body>

</html>