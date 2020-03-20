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

<h1 style="text-align: center">${messageinsert}</h1>



<div class="container">


	<form:form modelAttribute="food" method="post"
		action="admin/restaurant/${type}.htm">

		<div class="row">
			<div class="col-25">
				<label for="fname">Mã món ăn</label>
			</div>

			<div class="col-75">
				<form:input path="id" readonly="true" />
			</div>


		</div>

		<div class="row">
			<div class="col-25">
				<label for="lname">Tên món ăn</label>
				<form:errors path="vName" style="font-style: italic; color: red"></form:errors>
				
			</div>

			<div class="col-75">
				<form:input path="vName" />
			</div>

		</div>


		<div class="row">
			<div class="col-25">
				<label for="lname">Tên tiếng Anh</label>
				<form:errors path="eName" style="font-style: italic; color: red"></form:errors>
			</div>

			<div class="col-75">
				<form:input path="eName" />
			</div>

		</div>


		<div class="row">
			<div class="col-25">
				<label for="lname">Giá</label>
				<form:errors path="cost" style="font-style: italic; color: red"></form:errors>
			</div>

			<div class="col-75">
				<form:input path="cost" />
			</div>

		</div>



		<div class="row">
			<div class="col-25">
				<label for="lname">Hình ảnh</label>
				<form:errors path="image" style="font-style: italic; color: red"></form:errors>
			</div>

			<div class="col-75">
				<form:input path="image" />
			</div>

		</div>


		<div class="row">
			<div class="col-25">
				<label for="lname">Loại thức ăn</label>
			</div>

			<div class="col-75">
				<form:select path="foodgroup.id" items="${foodgroup}" itemValue="id"
					itemLabel="vName" />
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
<a href="admin/restaurant/insert.htm" class="a">Nhập lại</a>
<a href="admin/restaurant/menu.htm" class="a">Thoát</a>



<%-- 
	<form:form modelAttribute="food"
		action="admin/restaurant/${insert}.htm" method="post">

		<div>
			<label>Mã món ăn</label>
			<form:input path="id" />

		</div>


		<div>
			<label>Tên món ăn</label>
			<form:input path="vName" />
		</div>

		<div>
			<label>Tên tiếng Anh</label>
			<form:input path="eName" />
			<form:textarea path="eName" style="height: 200px" />
		</div>

		<div>
			<label>Giá</label>
			<form:input path="cost" />
		</div>

		<div>
			<label>Hình ảnh</label>
			<form:input path="image" />
		</div>

		<div>
			<label>Loại thức ăn</label>
			<form:select path="foodgroup.id" items="${foodgroup}" itemValue="id"
				itemLabel="vName" />
		</div>

		<div>
			<!-- <button>Cập nhật</button> -->


			<c:choose>
				<c:when test="${kt == '0'}">
					<button>Thêm mới</button>
				</c:when>
				<c:otherwise>
					<button>Cập nhật</button>
				</c:otherwise>
			</c:choose>

		</div>
	</form:form>


	<c:choose>
		<c:when test="${kt == '0'}">
			<a href="admin/restaurant/insert.htm"
				style="background: background-color: buttonface;">Thêm mới</a>
		</c:when>
		<c:otherwise>
			<a href="admin/restaurant/update/${food.id}.htm"
				style="background: background-color: buttonface;">Cập nhật</a>
		</c:otherwise>
	</c:choose>


	<a href="admin/restaurant/insert.htm">Nhập lại</a>
	<a href="admin/restaurant/menu.htm">Thoát</a>


	<h1>${message}</h1>
 --%>
