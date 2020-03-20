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
.date{
	width: -webkit-fill-available;
    padding: 12px;
}
.message {
	font-size: 30px;
    color: #d16f52;
}
</style>

<div class="mainContent">

	<div class="comBody comMenu">
		<h1 class="comHeading">Đặt Bàn</h1>
		<h1 class="message">${message}</h1>
		<div class="container">


			<form:form modelAttribute="tablebook" method="post"
				action="restaurant/reserve_table.htm">


				<div class="row">
					<div class="col-25">
						<label>CHI NHÁNH</label>
					</div>

					<div class="col-75">
						<form:select path="branch.id" items="${branch}" itemValue="id"
							itemLabel="name" />
					</div>


				</div>

				<div class="row">
					<div class="col-25">
						<label for="fname">HỌ VÀ TÊN</label>
					</div>

					<div class="col-75">
						<form:input path="name" />
						<form:errors path="name" style="font-style: italic; color: red"></form:errors>
					</div>


				</div>

				<div class="row">
					<div class="col-25">
						<label for="lname">ĐIỆN THOẠI</label>
					</div>

					<div class="col-75">
						<form:input path="phone" />
						<form:errors path="phone" style="font-style: italic; color: red"></form:errors>
					</div>

				</div>

				<div class="row">
					<div class="col-25">
						<label for="lname">EMAIL</label>
					</div>

					<div class="col-75">
						<form:input path="email" />
						<form:errors path="email" style="font-style: italic; color: red"></form:errors>
					</div>

				</div>


			<%-- 	<div class="row">
					<div class="col-25">
						<label for="lname">NGÀY ĐẶT</label>

					</div>

					<div class="col-75">
						<form:input path="date" type="timestamp" class="date" />
						<form:errors path="date" style="font-style: italic; color: red"></form:errors>
					</div>

				
				</div> --%>
				
				
				<div class="row">
					<div class="col-25">
						<label for="lname">NGÀY ĐẶT</label>

					</div>

					<div class="col-75">
					
					 <input type="datetime-local" name="datetime_local" class="date" value="2018-06-12T19:30">

				</div>
				
				</div>
				
				

				<div class="row">
					<div class="col-25">
						<label for="lname">SỐ CHỖ NGỒI</label>
					</div>

					<div class="col-75">
						<form:input path="number" />
						<form:errors path="number" style="font-style: italic; color: red"></form:errors>
					</div>

				</div>


				<div class="row">
					<div class="col-25">
						<label for="subject">NỘI DUNG LIÊN HỆ</label>
					</div>

					<div class="col-75">
						<form:textarea path="notes" style="height: 200px" />
					</div>

				</div>


				<div class="row">
					<input type="submit" value="Đặt bàn">
				</div>

			</form:form>


			<a href="restaurant/reservetable.htm" class="lamlai">Làm lại</a>


		</div>
		


		<p>
			<br /> Lắng nghe ý kiến khách hàng luôn là 1 trong những tiêu
			chí của nhà hàng để phát triển. Chúng tôi luôn trân trọng
			mọi y kiến đóng góp của Quý Khách để ổn định và duy trì
			chất lượng dịch vụ. Xin Quý khách vui lòng chia sẻ ý kiến
			của Quý khách tại đây. Quý Khách có nhu cầu đặt bàn, Vui
			lòng liên hệ:
		</p>
		<ul>
			<li>(028) 39300013 &#8211; chi nhánh 16 Lê Quý Đôn, Phường 6,
				Quận 3</li>
			<li>Hotline: 0915 206 737 (Mr. Khang)</li>
			<p>&nbsp;</p>
			<h2 style="text-align: center;"></h2>
		</ul>
	</div>
</div>


<jsp:include page="sideBar.jsp" />
<div class="clr"></div>