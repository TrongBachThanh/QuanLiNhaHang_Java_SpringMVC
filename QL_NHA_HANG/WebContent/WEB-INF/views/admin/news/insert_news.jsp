<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
/* Style inputs, select elements and textareas */
input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	resize: vertical;
}

/* Style the label to display next to the inputs */
label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

/* Style the submit button */
input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
	margin-left: 10px;
	margin-top: 10px;
}

/* Style the container */
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

/* Floating column for labels: 25% width */
.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

/* Floating column for inputs: 75% width */
.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
	input[type=submit] {
		margin-top: 10px;
	}
}
</style>

<h1>${messageinsert}</h1>





<%-- <form:form modelAttribute="new"
	action="admin/restaurant/news/${insert}.htm" method="post">
	<div>
		<label>Mã tin tức</label>
		<form:input path="id" />
	</div>

	<div>
		<label>Tiêu đề</label>
		<form:input path="title" />
	</div>

	<div>
		<label>Ngày đăng</label>
		<form:input path="date" />
	</div>

	<div>
		<label>Hình ảnh</label>
		<form:input path="image" />
	</div>

	<div>
		<label>Nội dung</label>
		<form:textarea path="content" />
	</div>

	<c:choose>
		<c:when test="${insert == 'insert'}">
			<input type="submit" value="Thêm mới">
		</c:when>
		<c:otherwise>
			<input type="submit" value="Cập nhật">
		</c:otherwise>
	</c:choose>

</form:form> --%>

<div class="container">


	<form:form modelAttribute="new" method="post"
		action="admin/restaurant/news/${insert}.htm">

		<div class="row">
			<div class="col-25">
				<label for="fname">Mã tin tức</label>
			</div>

			<div class="col-75">
				<form:input path="id" readonly="true"/>
			</div>


		</div>

		<div class="row">
			<div class="col-25">
				<label for="lname">Tiêu đề</label>
			</div>

			<div class="col-75">
				<form:input path="title" />
			</div>

		</div>


		<div class="row">
			<div class="col-25">
				<label for="lname">Hình ảnh</label>
			</div>

			<div class="col-75">
				<form:input path="image" />
			</div>

		</div>

		<div class="row">
			<div class="col-25">
				<label for="lname">Ngày đăng</label>
			</div>

			<div class="col-75">
				<form:input path="date" />
			</div>

		</div>


		<%-- <div class="row">
			<div class="col-25">
				<label for="lname">Nội dung</label>
			</div>

			<div class="col-75">	
				<form:textarea path="content"/>
			</div>

		</div> --%>
		
		
		<div class="row">
			<div class="col-25">
				<label for="lname">Nội dung</label>
			</div>

			<div class="col-75">	
				<form:textarea path="content" id="body"/>
			</div>

		</div>
		

		<div class="row">
			<div class="col-25">
				<label for="lname">Tóm tắt</label>
			</div>

			<div class="col-75">
				<form:textarea path="summary"/>
			</div>
			

		</div>
		
	<%-- 	<div class="row">
			<div class="col-25">
				<label for="lname">Loại</label>
			</div>

			<div class="col-75">
				<form:input path="type" />
			</div>

		</div> --%>
		
		
		<div class="row">
			<div class="col-25">
				<label for="lname">Loại</label>
			</div>

			<div class="col-75">
				<form:radiobutton path="type" value="1" label="Tin tức"/>
				<form:radiobutton path="type" value="2" label="Khuyến mãi"/>
			</div>

		</div>
		
		
		

		<div class="row">
			<c:choose>
				<c:when test="${type == 'insert'}">
					<input type="submit" value="Thêm mới">
				</c:when>
				<c:otherwise>
					<input type="submit" value="Cập nhật">
				</c:otherwise>
			</c:choose>
		</div>

	</form:form>

	${message}

</div>




<a href="admin/restaurant/news/insert.htm" class="a">Nhập lại</a>
<a href="admin/restaurant/news/index.htm" class="a">Thoát</a>

