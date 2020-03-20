<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<div class="mainContent">

	<div class="comBody comMenu">
		<h1 class="comHeading">Khuyến mãi</h1>
		<div class="itemBlogList">

			<div class="itemIntroContainer">



				<c:forEach var="m" items="${news }">
					<div class="itemIntroContainer">


						<div class="itemIntroImage">
							<a href=""> <img width="220" height="170"
								src="images/news/${m.image}"
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














<!-- 
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
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2017/09/Untitled-1.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/uong-bia-thoa-thich-cung-mon-moi-tai-khoai/">Uống
						Bia Thỏa Thích Cùng Món Mới Tại Khoái</a>
				</H2>
				<div class="itemDate">Thứ Ba, 26 Tháng Chín 2017 10:37</div>


				<div class="itemIntroText">

					<p>Từ 20/9 &#8211; 31/10/2017, Khoái dành tặng ngay 1 thùng
						Tiger cho khách hàng đi nhóm 10 người và order 2 trong 3 món mới
						tại Khoái gồm: Gà hấp mắm nhĩ Mực cuộn phô mai chiên xù Sườn cá
						rang muối Gà hấp mắm nhĩ cầu kỳ bởi cách lựa chọn gà ngon vô
						[&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2017/08/20799987_1606184776066721_4814045802465848076_n.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a href="http://khoairestaurant.com/buffet-dai-tiec-hai-san/">BUFFET
						ĐẠI TIỆC HẢI SẢN &#8211; TẶNG 1 VÉ KHI MUA 10 VÉ BUFFET TRƯA</a>
				</H2>
				<div class="itemDate">Thứ Tư, 2 Tháng Tám 2017 09:38</div>


				<div class="itemIntroText">

					<p>Với hơn 30 món ăn độc đáo từ những loài hải sản tươi sống
						như hào, ghẹ, nhum, tôm càng, sò lụa và rất nhiều các loại ốc cùng
						cách chế biến rất &#8220;Khoái&#8221;, là một &#8220;fan hải sản
						thứ thiệt&#8221; chắc chắn bạn không thể nào cưỡng lại sức hút của
						Buffet ĐẠI TIỆC [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="960" height="784"
						src="http://khoairestaurant.com/wp-content/uploads/2017/06/19059792_1542230599128806_7214793606688871013_n.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2017/06/19059792_1542230599128806_7214793606688871013_n.jpg 960w, http://khoairestaurant.com/wp-content/uploads/2017/06/19059792_1542230599128806_7214793606688871013_n-300x245.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2017/06/19059792_1542230599128806_7214793606688871013_n-768x627.jpg 768w"
						sizes="(max-width: 960px) 100vw, 960px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/nhum-tuoi-dau-mua-gia-re-bat-ngo/">NHUM
						TƯƠI ĐẦU MÙA GIÁ RẺ BẤT NGỜ</a>
				</H2>
				<div class="itemDate">Thứ Hai, 19 Tháng Sáu 2017 09:23</div>


				<div class="itemIntroText">

					<p>Khoái rat vui vì mỗi độ đến mùa nhum, thực khách lại rất
						quan tâm và thường hỏi thăm khi nào Khoái phục vụ món sản vật này.
						Hiện tại, Nhum đang được nhập liên tục để phục vụ thực khách thân
						yêu. Nhum là một thực phẩm quý, được ví như là “ Nhân sâm”
						[&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2017/05/Mon-moi-chao-he.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/mon-moi-chao-he-giam-gia-20-cho-nhom-khach-tren-10-nguoi/">MÓN
						MỚI CHÀO HÈ &#8211; GIẢM GIÁ 20% CHO NHÓM KHÁCH TRÊN 10 NGƯỜI</a>
				</H2>
				<div class="itemDate">Thứ Tư, 3 Tháng Năm 2017 02:06</div>


				<div class="itemIntroText">

					<p>Hè này, Nhà hàng Khoái xin giới thiệu đến Quý thực khách 3
						món ăn mới, và giảm ngay 20% cho nhóm khách từ 10 người trở lên,
						áp dụng từ 03/05 &#8211; 30/05/2017 Gà sauna: Nếu đến Khoái trong
						dịp hè này, thực khách phải thử dùng món gà có cái tên gây tò
						[&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="2596" height="1901"
						src="http://khoairestaurant.com/wp-content/uploads/2017/04/grab1.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2017/04/grab1.jpg 2596w, http://khoairestaurant.com/wp-content/uploads/2017/04/grab1-300x220.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2017/04/grab1-768x562.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2017/04/grab1-1024x750.jpg 1024w"
						sizes="(max-width: 2596px) 100vw, 2596px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/uu-dai-10-cho-khach-hang-su-dung-dich-vu-grab-den-an-tai-khoai/">Ưu
						đãi 10% cho khách hàng sử dụng dịch vụ Grab đến ăn tại Khoái</a>
				</H2>
				<div class="itemDate">Chủ Nhật, 2 Tháng Tư 2017 10:21</div>


				<div class="itemIntroText">

					<p>Từ 1/4/ 2017 đến 30/4/2017, giảm 10% tổng bill khi sử dụng
						dịch vụ tại Khoái cho tất cả khách hàng đi Grab. Cách thức sử dụng
						ưu đãi: Khách hàng vui lòng đưa cho Khoái xem màn hình ứng dụng
						Grab có thể hiện ưu đãi của Khoái mà khách muốn sử dụng Sử dụng
						[&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="1042" height="1042"
						src="http://khoairestaurant.com/wp-content/uploads/2017/03/poster_rutham-01.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2017/03/poster_rutham-01.jpg 1042w, http://khoairestaurant.com/wp-content/uploads/2017/03/poster_rutham-01-150x150.jpg 150w, http://khoairestaurant.com/wp-content/uploads/2017/03/poster_rutham-01-300x300.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2017/03/poster_rutham-01-768x768.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2017/03/poster_rutham-01-1024x1024.jpg 1024w, http://khoairestaurant.com/wp-content/uploads/2017/03/poster_rutham-01-600x600.jpg 600w"
						sizes="(max-width: 1042px) 100vw, 1042px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/tri-an-khach-hang-nhan-dip-sinh-nhat-lan-thu-5-thuong-hieu-khoai-mon-ngon-nha-trang/">TRI
						ÂN KHÁCH HÀNG NHÂN DỊP SINH NHẬT LẦN THỨ 5, THƯƠNG HIỆU KHOÁI -MÓN
						NGON NHA TRANG</a>
				</H2>
				<div class="itemDate">Thứ Năm, 23 Tháng Ba 2017 06:21</div>


				<div class="itemIntroText">

					<p>Từ ngày 1-5/12/2016, Quý Khách check in tại Khoái sẽ được
						tham gia bốc thăm để có 100% cơ hội trúng thưởng với nhiều phần
						quà hấp dẫn.</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="220" height="170"
						src="http://khoairestaurant.com/wp-content/uploads/2016/11/011111.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt="" />
					</a>
				</div>
				<H2>
					<a href="http://khoairestaurant.com/nhan-ngay-voucher-100-000d/">NHẬN
						NGAY VOUCHER 100.000Đ</a>
				</H2>
				<div class="itemDate">Thứ Tư, 30 Tháng Mười Một 2016 11:03</div>


				<div class="itemIntroText">

					<p>Với hóa đơn từ 2 triệu trở lên cứ mỗi triệu thực khách sẽ
						nhận được voucher 100.000đ, như vậy với hóa đơn càng cao thì số
						lượng voucher nhận được càng nhiều nhé. Chương trình áp dụng từ
						18/8 &#8211; 17/9. Khoái &#8211; Món ngon Nha Trang với thực đơn
						phong phú từ các [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="1035" height="1035"
						src="http://khoairestaurant.com/wp-content/uploads/2017/04/collage_photocat-2q.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2017/04/collage_photocat-2q.jpg 1035w, http://khoairestaurant.com/wp-content/uploads/2017/04/collage_photocat-2q-150x150.jpg 150w, http://khoairestaurant.com/wp-content/uploads/2017/04/collage_photocat-2q-300x300.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2017/04/collage_photocat-2q-768x768.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2017/04/collage_photocat-2q-1024x1024.jpg 1024w, http://khoairestaurant.com/wp-content/uploads/2017/04/collage_photocat-2q-600x600.jpg 600w"
						sizes="(max-width: 1035px) 100vw, 1035px" />
					</a>
				</div>
				<H2>
					<a
						href="http://khoairestaurant.com/nhan-dip-ky-niem-sinh-nhat-lan-2-nha-hang-khoai-gioi-thieu-den-quy-thuc-khach-chuong-trinh-sinh-nhat-lan-2-ngap-tran-hai-san-tuoi-la-buffet-khong-gioi-han-duy-nhat-chi-trong-ng/">THỰC
						ĐƠN MỚI ĐẦU TUẦN</a>
				</H2>
				<div class="itemDate">Thứ Hai, 29 Tháng Tám 2016 10:46</div>


				<div class="itemIntroText">

					<p>Cấp báo&#8230;cấp cấp báo Khoái vừa cập bến một số ỐC
						&#8211; SÒ biển tươi rói từ Long Hải. Mùa này mà ăn Sò ăn Ốc thì
						còn gì bằng. Thực đơn lên cho những món này gồm: SÒ LỤA NẤU LÁ QUẾ
						79.000đ SÒ PHI HẤP XẢ &#8211; QUẾ 66.000đ ỐC [&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div>
			</div>
			<div class="itemIntroContainer">
				<div class="itemIntroImage">
					<a href=""> <img width="1036" height="1036"
						src="http://khoairestaurant.com/wp-content/uploads/2017/04/sn2.jpg"
						class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
						alt=""
						srcset="http://khoairestaurant.com/wp-content/uploads/2017/04/sn2.jpg 1036w, http://khoairestaurant.com/wp-content/uploads/2017/04/sn2-150x150.jpg 150w, http://khoairestaurant.com/wp-content/uploads/2017/04/sn2-300x300.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2017/04/sn2-768x768.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2017/04/sn2-1024x1024.jpg 1024w, http://khoairestaurant.com/wp-content/uploads/2017/04/sn2-600x600.jpg 600w"
						sizes="(max-width: 1036px) 100vw, 1036px" />
					</a>
				</div>
				<H2>
					<a href="http://khoairestaurant.com/tiec-sinh-nhat-them-lung-linh/">TIỆC
						SINH NHẬT THÊM LUNG LINH</a>
				</H2>
				<div class="itemDate">Thứ Tư, 10 Tháng Tám 2016 11:24</div>


				<div class="itemIntroText">

					<p>Với xu hướng ăn ngon và ăn trong không gian đẹp, ánh nến
						lung linh với hoa và hương tạo nên không gian vô cùng ấm áp, lãng
						mạn nhờ vậy mà thực khách cảm thấy thích thú hơn. Để đáp ứng cho
						nhu cầu thiết thực đó, Khoái đã thực hiện thành công việc
						[&hellip;]</p>
				</div>
				<div class="itemIntroHr"></div> -->
			</div>
		</div>
		<!-- Pagination-->

	<!-- 	<span class='page-numbers current'><span
			class="meta-nav screen-reader-text">1</span> <a class='page-numbers'
			href='http://khoairestaurant.com/category/khuyen-mai/page/2'><span
				class="meta-nav screen-reader-text">2</a> <a
			class="next page-numbers"
			href="http://khoairestaurant.com/category/khuyen-mai/page/2">Trang
				sau</a> -->
	</div>
</div>
<jsp:include page="sideBar.jsp" />
<div class="clr"></div>
