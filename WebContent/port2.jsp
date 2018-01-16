<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Prolity</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style1.css">
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>

<body>
	<div id="fh5co-page">
		<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"> <i></i>
		</a>
		<aside id="fh5co-aside" role="complementary"
			class="border js-fullheight">

			<h1 id="fh5co-logo">
				<a href="indexStudent.jsp"> <img src="images/logo portfolio.png"
					style="width: 100px; height: 100px;">
				</a>
			</h1>
			<nav id="fh5co-main-menu" role="navigation">
				<ul>
					<li><a href="indexStudent.jsp">Home</a></li>
					<li><a href="myactivity.jsp">กิจกรรม</a></li>
					<li><a href="profilestudent.jsp">ข้อมูลส่วนตัว</a></li>
					<li><a href="exmyportfolio.jsp">ดูตัวอย่าง Portfolio</a></li>
					<li><a href="port1.jsp">สร้าง Portfolio</a></li>
				</ul>
			</nav>

			<div class="fh5co-footer">
				<p>
					<small>&copy; 2017 All Rights </span>
						<li><a href="#"> <i class="icon-facebook"></i>
						</a></li>
						<li><a href="#"> <i class="icon-twitter"></i>
						</a></li>
						<li><a href="#"> <i class="icon-instagram"></i>
						</a></li>
						<li><a href="#"> <i class="icon-linkedin"></i>
						</a></li>
						</ul>
		</aside>
	</div>
	<div class="container">
		<div class="col-md-5">
			<div class="form-area">

				<br style="clear: both">
				<h3 style="margin-bottom: 25px; text-align: center;">Student
					Form</h3>
				<form:form method="post" action="saveUser.do" commandName="us">

					<form:hidden path="userID" />
					<div class="form-group">
						<form:input type="text"  class="form-control" placeholder="ชื่อ"  
							path="name"/>
					
					</div>
					<div class="form-group">
						<form:input type="text" class="form-control" placeholder="สกุล"
							path="surname" />
							
					</div>
					<div class="form-group">
						<form:input type="text" class="form-control"
							placeholder="ชื่อเล่น" path="nicname" />
							
					</div>
					<div class="form-group">
						<form:input type="email" class="form-control" placeholder="Email"
							path="email" />
						
					</div>

					

					<input type="submit" class="btn btn-info" value="Submit">

				</form:form>


			</div>
		</div>
	</div>


	<script src="js/image.js"></script>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>


	<!-- MAIN JS -->
	<script src="js/main.js"></script>

</body>

</html>