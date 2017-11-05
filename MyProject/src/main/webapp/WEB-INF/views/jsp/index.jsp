<%--
  Created by IntelliJ IDEA.
  User: Marina
  Date: 23.10.2017 г.
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Wanderlust - Start exploring!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
* {
	box-sizing: border-box
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}
</style>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include><br>





	<div class="slideshow-container">

		<div class="mySlides fade">
			<div class="numbertext">1 / 7</div>
			<img src="img/mainPagePic1.jpg" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 7</div>
			<img src="img/mainPagePic2.jpg" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 7</div>
			<img src="img/mainPagePic3.jpg" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">4 / 7</div>
			<img src="img/mainPagePic4.jpg" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">5 / 7</div>
			<img src="img/mainPagePic5.jpg" style="width: 100%">
		</div>


		<div class="mySlides fade">
			<div class="numbertext">6 / 7</div>
			<img src="img/mainPagePic6.jpg" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">7 / 7</div>
			<img src="img/mainPagePic7.jpg" style="width: 100%">
		</div>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> 
		<span class="dot"></span>
	    <span class="dot"></span>
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span>
		<span class="dot"></span>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 3000); // Change image every 3 seconds
		}
	</script>
<body>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>