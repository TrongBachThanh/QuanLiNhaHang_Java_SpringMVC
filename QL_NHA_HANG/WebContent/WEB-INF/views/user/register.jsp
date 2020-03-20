<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
.lamlai {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
	margin-right: 100px;
    margin-top: -37px;
}

</style>

<div class="mainContent">

	<div class="comBody comMenu">
		<h1 class="comHeading">Đăng ký thẻ vip</h1>
			
		<div class="container">


			<form:form modelAttribute="member" method="post"
				action="restaurant/register.htm" id="myForm" name="myForm">

				<div class="row">
					<div class="col-25">
						<label>HỌ VÀ TÊN</label>
					</div>

					<div class="col-75">
						<form:input path="name" name="fname"/>
						<form:errors path="name" style="font-style: italic; color: red"></form:errors>
						
						<div id="ten"></div>
						
					</div>


				</div>
				
				<div class="row">
					<div class="col-25">
						<label>EMAIL</label>
						
					</div>

					<div class="col-75">
						<form:input path="email" />
						<form:errors path="email" style="font-style: italic; color: red"></form:errors>
					</div>

				</div>
		

				<div class="row">
					<div class="col-25">
						<label>ĐIỆN THOẠI</label>
					</div>

					<div class="col-75">
						<form:input path="phone" />
					</div>

				</div>
				
				
				<div class="row">
					<div class="col-25">
						<label>DI ĐỘNG</label>
					</div>

					<div class="col-75">
						<form:input path="cellphone" />
						<form:errors path="cellphone" style="font-style: italic; color: red"></form:errors>
					</div>

				</div>
				

				
				<div class="row">
					<div class="col-25">
						<label>ĐỊA CHỈ</label>
					</div>

					<div class="col-75">
						<form:input path="address" />
						<form:errors path="address" style="font-style: italic; color: red"></form:errors>
					</div>

				</div>
				
				
				<div class="row">
					<div class="col-25">
						<label>NGÀY SINH</label>
					</div>

					<div class="col-75">
						<form:input path="birthday" />
						<form:errors path="birthday" style="font-style: italic; color: red"></form:errors>
					</div>

				</div>
				
				
				
				<div class="row">
					<input type="submit" value="Đăng ký"> 
					<input type="button" onclick="myFunction()" value="Xóa">
				</div>

			</form:form>
		<!-- 	<a href="restaurant/register.htm" class="lamlai">Làm lại</a> -->

		${message}

		</div>
		
		
		
		
		
		<h1 class="comHeading">Các điều khoản và quyền lợi</h1>
		<ul>
			<li>Từ tháng 02/2019, NH Khoái trân trọng thông báo đến Quý
				khách chương trình thẻ thành viên như sau:
				<ul>
					<li><em>Quý khách tích lũy <strong>10 triệu</strong> sẽ
							được hưởng ưu đãi <strong>10%</strong> giảm giá cho dịch vụ tiếp
							theo tại Nhà hàng Khoái
					</em></li>
					<li><em>Quý khách tích lũy <strong>20 triệu</strong> sẽ
							được hưởng ưu đãi <strong>15%</strong> giảm giá cho dịch vụ tiếp
							theo tại Nhà hàng Khoái
					</em></li>
					<li><em>Chương trình không áp dụng đồng thời các chương
							trình khuyến mãi khác</em></li>
					<li><em>Thẻ không có giá trị quy đổi thành tiền mặt,
							không chuyển nhượng. Trong trường hợp mất thẻ, khách hàng phải
							tham gia tích lũy lại.</em></li>
					<li><em>Quý khách vui lòng đọc </em><em>tên và số điện
							thoại khi thanh toán để nhận giảm giá</em></li>
					<li><em>Thẻ có giá trị trong vòng <strong>2 năm</strong>
							và hệ thống sẽ tự động hủy thẻ trong thời gian 2 năm không sử
							dụng.
					</em></li>
					<li><em>Nhà hàng Khoái có quyền thay đổi các điều khoản
							của chương trình thành viên mà không bắt buộc phải báo trước</em></li>
					<li><em>Liên hệ nhân viên phục vụ để đăng kí thẻ</em></li>
				</ul>
				<p>
					<em>Đối với những <strong>khách hàng đã sở hữu thẻ
							Gold (15%)</strong> sẽ được bảo toàn hạng thành viên
					</em>
				</p>
				<p>
					<em>Đối với những <strong>khách hàng đã sở hữu thẻ
							Silver (10%)</strong> sẽ được bảo toàn hạng thành viên đến khi tích lũy 20
						triệu sẽ được hưởng ưu đãi 15%
					</em>
				</p>
				<p>
					<em>Đối với những <strong>khách hàng đã sở hữu thẻ
							Member (tích lũy)</strong> sẽ áp dụng chính sách như trên.
					</em>
				</p>
				<p>Trân trọng!
			</li>
		</ul>
		<p>Để đăng ký, xin quý khách hàng vui lòng điền thông tin vào
			những ô bên trên hoặc liên hệ trực tiếp với chúng tôi tại địa chỉ Nhà
			hàng Khoái, 16 Lê Quý Đôn, Q3, TPHCM / Điện thoại: 028 393 00013 /
			Hotline: 0915 206 737 (Mr Khang) / Email: nhahangkhoai@gmail.com</p>
	</div>
</div>
<jsp:include page="sideBar.jsp" />
<div class="clr"></div>
<!-- Reset -->
<script>
function myFunction() {
  document.getElementById("myForm").reset();
}
</script>
<!-- Validation -->
<script>
function validateForm() {
 /*  var x = document.forms["myForm"]["fname"]; */
  document.getElementById("ten").innerHTML = 'Vui long nhập họ tên!';
 return false;
 /*  if (x == "") {
    alert("Name must be filled out");
    x.focus(); 
	
    return false;
  } */
}
</script>
