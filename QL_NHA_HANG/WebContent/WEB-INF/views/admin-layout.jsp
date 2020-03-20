<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="${pageContext.servletContext.contextPath}/">

<title>Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  Font Awesome      -->
<script src="js/fontawesome.js"></script>
<!--  Custom styling    -->
<link rel="stylesheet" type="text/css" href="css/admin.css">

<!--  Google Fonts      -->
<!-- <link
	href="https://fonts.googleapis.com/css?family=Candal|Lora&display=swap"
	rel="stylesheet"> -->
<link
	href="css/fonts/font.css"
	rel="stylesheet">


<style>
	.title{
		text-align: center;
	}
</style>
</head>
<body>
	<!-- <ul>
		<li><a class="active" href="#home">Quản lí thực đơn</a></li>
		<li><a href="#news">Quản lí tin tức</a></li>
		<li><a href="#contact">Quản lí khách hàng</a></li>
		<li><a href="#about">Quản lý đơn đặc hàng</a></li>
	</ul> -->

	<header>
		<div class="logo">
			<h1 class="logo-text">
				<a href="admin/restaurant/menu.htm" style="text-decoration: none"><span>TuT</span>Restaurant</a>
				
			</h1>
		</div>

		<i class="fa fa-bars menu-toggle"></i>

		<ul class="nav">
			<li><a href="admin/restaurant/menu.htm">Quản lý thực đơn</a>
				<ul style="left: 0px;">
					<li><a href="admin/restaurant/menu.htm">Món ăn</a></li>
					<li><a href="admin/restaurant/foodgroup/index.htm">Loại món ăn</a></li>
				</ul></li>
			<li><a href="admin/restaurant/news/index.htm">Quản lý tin tức</a></li>
			<li><a href="admin/restaurant/tablebook/index.htm">Quản lý đặt bàn</a></li>
			
			<li><a href="admin/restaurant/member/index.htm">Quản lý khách hàng</a></li>
			<!-- <li><a href="">Sign Up</a> </li>
      <li><a href="">Login</a> </li> -->
			<li><a href=""> <i class="fa fa-user"></i> Bach Tut <i
					class="fa fa-chevron-down" style="font-size: 0.8em;"></i>
			</a>
				<ul>
					<li><a href="">BachTut</a></li>
					<li><a href="" class="logout">Logout</a></li>
				</ul></li>


		</ul>

	</header>

	<div class="content">

		
		<h1>${message}</h1>


		<jsp:include page="${param.view}" />


	</div>




	<!-- jQuery-->
	<!-- <script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script> -->
	<script type="text/javascript"
		src="js/query.js"></script>	
		
		
		<!-- CKEditor 5 -->
		<script src="js/ckeditor.js"></script>
	<!-- 	<script src="https://cdn.ckeditor.com/ckeditor5/15.0.0/classic/ckeditor.js"></script> -->
		
		
		
	<!-- Custom Script-->
	<script type="text/javascript" src="js/admin.js"></script>
</body>
</html>