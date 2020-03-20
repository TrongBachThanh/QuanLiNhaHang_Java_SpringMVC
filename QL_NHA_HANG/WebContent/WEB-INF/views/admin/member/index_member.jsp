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
    
<!DOCTYPE html>
<div class="content">

		<h1>Quản lí Khách hàng</h1>
		<table id="customers">
			<tr>
				<th>Mã</th>			
				<th>Họ tên</th>
				<th>Email</th>
				<th>Số điện thoại</th>
				<th>Di động</th>
				
				<th>Địa chỉ</th>
				<th>Ngày sinh</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="m" items="${members}">
				<tr>
					<td>${m.id}</td>
					<td>${m.name}</td>
					<td>${m.email}</td>
					<td>${m.phone}</td>
					<td>${m.cellphone}</td>
					<td>${m.address}</td>
					<td>${m.birthday}</td>
				
	
					<td><a href="admin/restaurant/member/update/${m.id}.htm">Sửa</a></td>
					<td><a href="admin/restaurant/member/delete/${m.id}.htm" onclick="return confirm('Are you sure?')">Xóa</a></td>

				</tr>
			</c:forEach>
		</table>

		<form action="admin/restaurant/member/insert.htm" method="get">
			<h2>
				<button class="a">Thêm mới</button>
			</h2>
		</form>

	




</div>