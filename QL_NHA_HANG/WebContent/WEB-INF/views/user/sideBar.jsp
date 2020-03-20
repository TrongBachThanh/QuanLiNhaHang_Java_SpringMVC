<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>


<div class="sideBar">
	<div class="sideMenu">
		<div id="m97" class="mB _menu"></div>
	</div>

	<div class="sideModule">
		<div class="mB">
			<h3 class="mT">Mới cập nhật</h3>
			<ul>
				<!-- <li><a
					href="http://khoairestaurant.com/uong-bia-thoa-thich-cung-khoai/">UỐNG
						BIA THỎA THÍCH CÙNG KHOÁI</a></li>
				<li><a
					href="http://khoairestaurant.com/co-gi-trong-combo-khoai-len-met/">Có
						gì trong Combo &#8221; Khoái lên Mẹt&#8221;?</a></li>
				<li><a
					href="http://khoairestaurant.com/an-ca-rat-tot-vay-moi-loai-ca-cung-cap-cho-co-the-chung-ta-nhung-gi/">Ăn
						cá rất tốt, vậy mỗi loại cá cung cấp cho cơ thể chúng ta những gì?</a></li>
				<li><a
					href="http://khoairestaurant.com/quay-so-lien-tay-nhan-ngay-qua-xin/">QUAY
						LIỀN TAY, TRÚNG QUÀ NGAY</a></li>
				<li><a
					href="http://khoairestaurant.com/tung-bung-cung-khoai-don-sinh-nhat-lan-thu-7/">Tưng
						bừng cùng Khoái đón sinh nhật lần thứ 7</a></li>
 -->
				<c:forEach var="n" items="${new_update}">
					<li><a
						href="restaurant/news/${n.id}.htm">${n.title}</a></li>

				</c:forEach>




			</ul>
		</div>
		<div class="mB">
			<div class="textwidget">
				<div id="m98" class="mB">
					<div class="mI mCustom">
						<a href="tel:0915206737"><br /> <img style="border: 0;"
							src="images/hotline-vi-2.jpg"
							alt="Liên hệ đặt bàn - Hotline 1900 0397" width="180" height="56"
							border="0" /><br /> </a>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
