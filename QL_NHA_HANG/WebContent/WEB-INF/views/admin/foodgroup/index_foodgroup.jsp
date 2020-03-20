<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>    
    
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}

</style>    
<h1 style="text-align: center">Quản lí loại món ăn</h1>
<table id="customers">
	<tr>
		<th>Tên loại</th>
		<th>Tên tiếng anh</th>

		<th></th>
		<th></th>
	<!-- 	<th></th> -->
	</tr>
	<c:forEach var="fg" items="${foodgroup}">
		<tr>
			<td>${fg.vName}</td>
			<td>${fg.eName}</td>
			<td><a href="admin/restaurant/foodgroup/update/${fg.id}.htm">Sửa</a></td>
			<td><a href="admin/restaurant/foodgroup/delete/${fg.id}.htm">Xóa</a></td>

		</tr>
	</c:forEach>
</table>

<form action="admin/restaurant/foodgroup/insert.htm" method="get">
	<h2>
		<button class="a">Thêm mới</button>
	</h2>
</form>

<%-- <h1>${message}</h1> --%>
