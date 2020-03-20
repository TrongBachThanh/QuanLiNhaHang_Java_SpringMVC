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
<h1 class="title">Quản lí món ăn</h1>
		<table id="customers">
			<tr>
				<th>Tên món ăn</th>
				<th>Tên tiếng anh</th>
				<th>Giá</th>
				<th>ảnh minh họa</th>
				<th>loại món ăn</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="f" items="${foods}">
				<tr>
					<td>${f.vName}</td>
					<td>${f.eName}</td>
					<%-- <td><textarea rows="" cols=""
							style="height: 200px; width: 500px">
						${f.eName}
					</textarea></td> --%>

					<td>${f.cost}</td>
					<td style="text-align: center;"><img src="images/food/${f.image}" width="80"></td>
					<td>${f.foodgroup.vName}</td>
					<td><a href="admin/restaurant/update/${f.id}.htm">Sửa</a></td>
					<td><a href="admin/restaurant/delete/${f.id}.htm" onclick="return confirm('Are you sure?')">Xóa</a></td>

				</tr>
			</c:forEach>
		</table>

		<form action="admin/restaurant/insert.htm" method="get">
			<h2>
				<button class="a">Thêm mới</button>
			</h2>
		</form>
