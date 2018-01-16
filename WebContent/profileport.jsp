<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Prolity </title>
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

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

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

    <link rel="stylesheet" href="css/port.css">
    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
            <script src="js/respond.min.js"></script>
            <![endif]-->
</head>

<body>
    <br>
    <br>
    <br>
    <br>

<div id="HTMLtoPDF">
    <div class="div3" style="font-size:40px;" >Profile</div>
    <br>
    <br>
    <strong>
    <c:forEach items="${PDFList}" var="port">
        <div class="div4" style="font-size:20px;">Fristname: &nbsp;&nbsp;&nbsp;&nbsp;${port.name}</div>
        <br>
        <div class="div5" style="font-size:20px;">lastname: &nbsp;&nbsp;&nbsp;&nbsp;${port.surname}</div>
         <br>
        <div class="div5" style="font-size:20px;">Nickname: &nbsp;&nbsp;&nbsp;&nbsp;${port.nicname}</div>
        <br>
        <div class="div8" style="font-size:20px;">Email: &nbsp;&nbsp;&nbsp;&nbsp;${port.email}</div>
        <br>
        
				
				
        
	</c:forEach>
    </strong>
</div>


    <br>
    <br>
    <br>
      <a type="button" class="btn btn-primary" id="button1" onclick="HTMLtoPDF()">Download PDF</a>

	<script src="js/jspdf.js"></script>
	<script src="js/jquery-2.1.3.js"></script>
	<script src="js/pdfFromHTML.js"></script>
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