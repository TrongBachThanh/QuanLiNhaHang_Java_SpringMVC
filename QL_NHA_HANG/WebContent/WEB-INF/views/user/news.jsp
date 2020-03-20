<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<head>
<meta charset="utf-8" />
</head>


<div class="mainContent">

	<div class="comBody comMenu">
		<h1 class="comHeading">Tin tức</h1>
		<div class="itemBlogList">

			<c:forEach var="m" items="${news }">
				<div class="itemIntroContainer">


					<div class="itemIntroImage">
						<a href=""> <img width="220" height="170" src="images/news/${m.image}"
							class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
							alt="" />
						</a>
					</div>
					<H2>
						<a href="restaurant/news/${m.id}.htm"> ${m.title}</a>
					</H2>

					<div class="itemDate">${m.date}</div>
					<div class="itemIntroText">
		<%-- 
						<pre
							style="white-space: pre-wrap; font-family: Arial, Helvetica, sans-serif;">${m.content}</pre> --%>
						<p>${m.summary}</p>	
							
							
					</div>
					<div class="itemIntroHr"></div>


				</div>



			</c:forEach>


			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2017/09/Untitled-1.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/uong-bia-thoa-thich-cung-khoai/">UỐNG
						BIA THỎA THÍCH CÙNG KHOÁI</a>
				</H2>
				<div class="itemDate">Thứ Năm, 3 Tháng Mười 2019 02:42</div>


				<div class="itemIntroText">

					<p>Từ 20/9 &#8211; 31/10/2017, Khoái tặng ngay thùng Tiger cho
						Quý khách đi nhóm 10 người và order 2 trong 3 món ăn mới đặc sắc
						tại Khoái gồm: Gà hấp mắm nhĩ Mực cuộn phô mai chiên xù Sườn cá
						rang muối &nbsp; Gà hấp mắm nhĩ cầu kỳ bởi cách lựa chọn gà
						[&hellip;] Hello WorldS</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2019/08/met.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/co-gi-trong-combo-khoai-len-met/">Có
						gì trong Combo &#8221; Khoái lên Mẹt&#8221;?</a>
				</H2>
				<div class="itemDate">Thứ Ba, 27 Tháng Tám 2019 02:55</div>


				<div class="itemIntroText">

					<p>Chỉ với 245,000đ bạn đã có thể thưởng thức ngay 4 món
						best-seller tại Khoái bao gồm: ✅ Khoái lên Mẹt 1: Gỏi sứa Nha
						Trang, Nem nướng Ninh Hòa, Gà chiên lá é, Bánh xèo thập cẩm ✅
						Khoái lên Mẹt 2: Gỏi cá mai, Chả giò ốc biển, Mực sữa chiên nước
						mắm, Bánh căn [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2019/08/Untitled-an-ca.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/an-ca-rat-tot-vay-moi-loai-ca-cung-cap-cho-co-the-chung-ta-nhung-gi/">Ăn
						cá rất tốt, vậy mỗi loại cá cung cấp cho cơ thể chúng ta những gì?</a>
				</H2>
				<div class="itemDate"></div>


				<div class="itemIntroText">

					<p>&nbsp; #Cá_Ngừ: là nguồn cung cấp omega-3, protein, magiê,
						kali, vitamin B12 tuyệt vời. Cá ngừ thường được chế biến thành các
						món cuốn hay nướng. Tại Khoái, cá ngừ tươi được sơ chế và cho vào
						nồi nước dùng được ninh từ xương cá và ớt ba tri. BÚN CÁ NGỪ được
						phục vụ [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2019/03/vong-quay-1.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/quay-so-lien-tay-nhan-ngay-qua-xin/">QUAY
						LIỀN TAY, TRÚNG QUÀ NGAY</a>
				</H2>
				<div class="itemDate">Thứ Năm, 21 Tháng Ba 2019 09:12</div>


				<div class="itemIntroText">

					<p>Quay liền tay, Trúng quà ngay Với cơ hội 100% trúng thưởng
						những món ăn vô cùng hấp dẫn: Cá bò đen nướng, Gỏi sứa Nha Trang,
						Nem nướng Ninh Hòa, Ốc bưu nướng tiêu,&#8230;. Khoái hân hạnh mời
						bạn tham gia mini game Vòng Quay May Mắn. Khoái chọn một buổi tối
						bí mật [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2018/11/sinh-nhat-Khoai-7-tuoi-1.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/tung-bung-cung-khoai-don-sinh-nhat-lan-thu-7/">Tưng
						bừng cùng Khoái đón sinh nhật lần thứ 7</a>
				</H2>
				<div class="itemDate">Thứ Tư, 28 Tháng Mười Một 2018 03:35</div>


				<div class="itemIntroText">

					<p>Như một lời tri ân đến những khách hàng thân thiết đã luôn
						đồng hành cùng Khoái, nhân kỷ niệm sinh nhật lần thứ 7 của nhà
						hàng, Khoái dành tặng đến tất cả thực khách combo nước chấm “made
						by Khoái” gồm: Nước chấm hải sản Khoái và Nước chấm muối ớt xanh
						được [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
		<!-- 	<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2018/10/011.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/hai-san-bbq-cuoi-tuan-mon-ngon-gan-ket-tinh-than/">HẢI
						SẢN BBQ CUỐI TUẦN- MÓN NGON GẮN KẾT TÌNH THÂN</a>
				</H2>
				<div class="itemDate">Thứ Tư, 3 Tháng Mười 2018 09:52</div>


				<div class="itemIntroText">

					<p>Nâng niu mỗi khoảnh khắc bên gia đình và những người thân
						yêu sẽ luôn đem đến cho bạn những phút giây ngập tràn hạnh phúc.
						Với tôn chỉ “Sạch về nguyên liệu – Ngon về hương vị &#8211; Chu
						đáo về phục vụ”, đại tiệc hải sản cuối tuần tại Khoái không chỉ
						đem [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
		<!-- 	<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="2500" height="1667"
						src="http://khoairestaurant.com/wp-content/uploads/2018/06/A7_09715.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2018/06/A7_09715.jpg 2500w, http://khoairestaurant.com/wp-content/uploads/2018/06/A7_09715-300x200.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2018/06/A7_09715-768x512.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2018/06/A7_09715-1024x683.jpg 1024w"
						sizes="(max-width: 2500px) 100vw, 2500px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/cho-tiec-xinh-ling-linh-tai-khoai/">Cho
						Tiệc Xinh Lung Linh Tại Khoái</a>
				</H2>
				<div class="itemDate">Thứ Hai, 4 Tháng Sáu 2018 08:49</div>


				<div class="itemIntroText">

					<p>🎶 Chúc mừng thành công quán quân Hãy nghe tôi hát &#8211;
						Võ Hạ Trâm 🎶 Vừa qua, Khoái có dịp đồng hành cùng ca sĩ Võ Hạ
						Trâm ở buổi tiệc Thanh You và giới thiệu Album Hãy Nghe Trâm Hát.
						Bữa tiệc đơn giản ấm cúng được Khoái điểm thêm những chi tiết
						[&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="4548" height="3032"
						src="http://khoairestaurant.com/wp-content/uploads/2018/06/MG_4958-1.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2018/06/MG_4958-1.jpg 4548w, http://khoairestaurant.com/wp-content/uploads/2018/06/MG_4958-1-300x200.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2018/06/MG_4958-1-768x512.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2018/06/MG_4958-1-1024x683.jpg 1024w"
						sizes="(max-width: 4548px) 100vw, 4548px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/vui-quoc-te-thieu-nhi-cung-khoai/">Vui
						Quốc Tế Thiếu Nhi Cùng Khoái</a>
				</H2>
				<div class="itemDate"></div>


				<div class="itemIntroText">

					<p>Khoái hân hạnh được đồng hành cùng Tòa nhà Phú Hoàng Anh dịp
						Quốc Tế Thiếu Nhi, mang lại niềm vui nho nhỏ cho các em. Tại buổi
						lễ, các em được tham gia các mini game, dùng Chả Giò Hải Sản, Bánh
						Bèo Thịt Nướng chuẩn vị Nha Trang từ Nhà hàng Khoái, Ya-ua
						[&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="2083" height="2083"
						src="http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02.jpg 2083w, http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02-150x150.jpg 150w, http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02-300x300.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02-768x768.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02-1024x1024.jpg 1024w, http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02-100x100.jpg 100w, http://khoairestaurant.com/wp-content/uploads/2017/11/fb-02-600x600.jpg 600w"
						sizes="(max-width: 2083px) 100vw, 2083px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/rut-tham-100-trung-thuong-cung-khoai/">Rút
						Thăm 100% Trúng Thưởng Cùng Khoái</a>
				</H2>
				<div class="itemDate">Thứ Tư, 22 Tháng Mười Một 2017 05:08</div>


				<div class="itemIntroText">

					<p>Năm thứ 6 Khoái có mặt ở một góc nhỏ khiêm tốn của Sài thành
						và may mắn được nhiều thực khách yêu mến, đón nhận như một nơi
						chốn giản dị để nâng niu khẩu vị của mình. Để đánh dấu chặng đường
						ấy, Khoái mến gửi đến thực khách chương trình Quay số [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
			<!-- <div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="960" height="720"
						src="http://khoairestaurant.com/wp-content/uploads/2017/11/nha-so-2-trao-10tr.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2017/11/nha-so-2-trao-10tr.jpg 960w, http://khoairestaurant.com/wp-content/uploads/2017/11/nha-so-2-trao-10tr-300x225.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2017/11/nha-so-2-trao-10tr-768x576.jpg 768w"
						sizes="(max-width: 960px) 100vw, 960px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/hanh-trinh-ho-tro-ba-con-ninh-hoa-sau-bao-damrey/">Hành
						trình hỗ trợ bà con Ninh Hòa sau Bão Damrey</a>
				</H2>
				<div class="itemDate">Thứ Hai, 13 Tháng Mười Một 2017 01:00</div>


				<div class="itemIntroText">

					<p>Đêm qua đại diện Nhà Hàng Khoái &#8211; chị Diệp cùng nhóm
						bạn Anh Việt Quang, chị Ngọc Phạm, anh Phạm Duy đã lên tàu ra đến
						Nha Trang lúc 4h30 sáng nay. Nhóm đi thẳng lên Ninh Hòa gặp 2 cô
						Giáo, cô Cúc và Cô Thúy người đã thay mặt nhóm khảo sát [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div> -->
		</div>
		<!-- Pagination-->

		<!-- <span class='page-numbers current'><span
			class="meta-nav screen-reader-text">1</span> <a class='page-numbers'
			href='http://khoairestaurant.com/category/tin-tuc/page/2'><span
				class="meta-nav screen-reader-text">2</a> <a class='page-numbers'
			href='http://khoairestaurant.com/category/tin-tuc/page/3'><span
				class="meta-nav screen-reader-text">3</a> <span
			class="page-numbers dots">&hellip;</span> <a class='page-numbers'
			href='http://khoairestaurant.com/category/tin-tuc/page/5'><span
				class="meta-nav screen-reader-text">5</a> <a
			class="next page-numbers"
			href="http://khoairestaurant.com/category/tin-tuc/page/2">Trang
				sau</a> </span> -->
	</div>
</div>
<jsp:include page="sideBar.jsp" />
<div class="clr"></div>


