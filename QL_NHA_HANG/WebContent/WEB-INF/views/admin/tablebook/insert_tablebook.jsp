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


<%-- <form:form modelAttribute="table"
	action="admin/restaurant/tablebook/${insert}.htm" method="post">
	<div>
		<label>Mã</label>
		<form:input path="id" />
	</div>

	<div>
		<label>Họ tên</label>
		<form:input path="name" />
	</div>
	
	<div>
		<label>Số điện thoại</label>
		<form:input path="phone" />
	</div>
	
	<div>
		<label>Ngày đặt hàng</label>
		<form:input path="date" />
	</div>

	<div>
		<label>Ghi chú</label>S
		<form:input path="notes" />
	</div>
	
	<div>
		<label>Email</label>S
		<form:input path="email" />
	</div>

	<div>
		<label>Trạng thái</label>
		<form:textarea path="state" />
	</div>

	<c:choose>
		<c:when test="${insert == 'insert'}">
			<button>Thêm mới</button>
		</c:when>
		<c:otherwise>
			<button>Cập nhật</button>
		</c:otherwise>
	</c:choose>

</form:form>
 --%>


<div class="container">


	<form:form modelAttribute="table" method="post"
		action="admin/restaurant/tablebook/${type}.htm">

		<div class="row">
			<div class="col-25">
				<label for="fname">Mã</label>
			</div>

			<div class="col-75">
				<form:input path="id" />
			</div>


		</div>

		<div class="row">
			<div class="col-25">
				<label for="lname">Họ tên</label>
			</div>

			<div class="col-75">
				<form:input path="name" />
			</div>

		</div>


		<div class="row">
			<div class="col-25">
				<label for="lname">Số điện thoại</label>
			</div>

			<div class="col-75">
				<form:input path="phone" />
			</div>

		</div>

		<div class="row">
			<div class="col-25">
				<label for="lname">Ngày đặt hàng</label>
			</div>

			<div class="col-75">
				<%-- <form:input path="date" /> --%>
				<form:input path="date" type = "timestamp"/>
			</div>

		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="lname">Ghi chú</label>
			</div>

			<div class="col-75">
				<form:input path="notes" />
			</div>

		</div>
		
		
		<div class="row">
			<div class="col-25">
				<label for="lname">Email</label>
			</div>

			<div class="col-75">
				<form:input path="email" />
			</div>

		</div>
		
		<div class="row">
			<div class="col-25">
				<label for="lname">Trạng thái</label>
			</div>

			<div class="col-75">
				<form:input path="state" />
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



<a href="admin/restaurant/tablebook/insert.htm" class="a">Nhập lại</a>
<a href="admin/restaurant/tablebook/index.htm" class="a">Thoát</a>

${message}
