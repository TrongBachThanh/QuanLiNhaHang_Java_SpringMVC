<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Tổ chức giao diện</title>
<link href="css/layout.css" rel="stylesheet" />
</head>
<body class="page">

	<div class="khoaiBg">
		<!---khoai-->
		<div class="wrapper">
			<div id="header">
				<div class="mainMenu navbar">
					<a class="btn btn-navbar" href="#" data-target=".nav-collapse"
						data-toggle="collapse"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="logo">
						<a href="restaurant/home.htm"><span>Tụt Restaurant</span></a>
					</div>
					<div class="nav-collapse collapse">
						<div id="m94" class="mB _menu">
							<ul class="mI mMenu">
								<li
									class="first menu-item menu-item-type-custom menu-item-object-custom"><a
									href='restaurant/home.htm'><img src="images/home/logo.png" /></a></li>
								<li
									class="menu-item menu-item-type-post_type menu-item-object-page "><a
									href='restaurant/introduction.htm' class="introduction">Nhà hàng Khoái <em>Giới
											thiệu</em>
								</a></li>
								<li
									class="menu-item menu-item-type-post_type menu-item-object-page menu"><a
									href='restaurant/menu.htm'>Thực đơn<em>Chỉ có ở Khoái</em></a></li>
								<li
									class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
									href='restaurant/news.htm'>Tin tức<em>Sự kiện</em></a></li>
								<li
									class="menu-item menu-item-type-taxonomy menu-item-object-category"><a
									href='restaurant/promotions.htm'>Khuyến mãi<em>Ưu đãi,
											giảm giá</em>
								</a></li>
								<li
									class="menu-item menu-item-type-post_type menu-item-object-page"><a
									href='restaurant/reservetable.htm'>Đặt Bàn<em>Đặt bàn</em></a></li>
								<li
									class="menu-item menu-item-type-post_type menu-item-object-page"><a
									href='restaurant/register.htm'>Thẻ Vip<em>Đăng ký</em></a></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- <div class="topMenu">
					<div id="m95" class="mB">
						<div class="mI mLang">
							<ul>
								<li id="menu-item-63-vi"
									class="lang-item lang-item-3 lang-item-vi lang-item-first current-lang menu-item menu-item-type-custom menu-item-object-custom current_page_item menu-item-home menu-item-63-vi"><a
									href="http://khoairestaurant.com/" hreflang="vi" lang="vi">Tiếng
										Việt</a></li>
								<li id="menu-item-63-en"
									class="lang-item lang-item-6 lang-item-en menu-item menu-item-type-custom menu-item-object-custom menu-item-63-en"><a
									href="http://khoairestaurant.com/en/" hreflang="en-US"
									lang="en-US">English</a></li>
							</ul>
						</div>
					</div>
				</div> -->

			</div>



			<div id="main">
				<div class="socialMenu">
					<div id="m90" class="mB">
						<ul class="mI mMenu">
							<li id="item111" class="last first"><a
								href="https://www.facebook.com/">
									<img
									src="images/facebookIcon.jpg"
									alt="Facebook" title="Facebook" />
							</a></li>
						</ul>
					</div>
				</div>

			
				<jsp:include page="${param.view}" />
			
				
			</div>



		

			<div id="footer">
				<div id="m96" class="mB">

					<div class="mB">
						<h3 class="mT">16 Lê Quý Đôn, Phường 6, Quận 3 &#8211; Tel:
							028 393 00013</h3>
						<div class="textwidget"></div>
					</div>
					<div class="mB">
						<div class="textwidget">
							<ul>
								<li class="phoneIcon">028 393 00013</li>
								<li class="emailIcon">nhahangkhoai@gmail.com</li>
								<li class="mobileIcon">Hotline: 0973702697 ( Mr.Tut)</li>
							</ul>
						</div>
					</div>
					<div class="mI mCustom">
						<p>
							<a href="https://www.facebook.com/"
								target="_blank"><img
								src="images/facebook.png"
								border="0" alt="" width="22" /></a> <a
								href="http://www.tripadvisor.com.vn/"
								target="_blank"><img
								src="images/tripadvisor.png"
								border="0" alt="" width="22" /></a>
						</p>
					</div>
				</div>

			</div>
		</div>
	</div>



		

	<script type="text/javascript"
		src="js/jquery.min.js"></script>
		
	<script type="text/javascript"
		src="js/template.js"></script>
	
		
		
	<script type="text/javascript"
		src="js/stepcarousel.js"></script>

	<script type="text/javascript">
		stepcarousel.setup({
			galleryid : 'slider', //id of carousel DIV
			beltclass : 'sliderBelt', //class of inner "belt" DIV containing all the panel DIVs
			panelclass : 'sliderPanel', //class of panel DIVs each holding content
			autostep : {
				enable : true,
				moveby : 1,
				pause : 5000
			},
			panelbehavior : {
				speed : 270,
				wraparound : true,
				wrapbehavior : 'slide',
				persist : true
			},
			defaultbuttons : {
				enable : false,
				moveby : 1,
				leftnav : [ 'http://i34.tinypic.com/317e0s5.gif', -5, 80 ],
				rightnav : [ 'http://i38.tinypic.com/33o7di8.gif', -20, 80 ]
			},
			statusvars : [ 'statusA', 'statusB', 'statusC' ], //register 3 variables that contain current panel (start), current panel (last), and total panels
			contenttype : [ 'inline' ]
		//content setting ['inline'] or ['ajax', 'path_to_external_file']
		})
	</script>

	
	
	
</body>
</html>