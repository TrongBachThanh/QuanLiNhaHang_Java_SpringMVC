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
    
<div class="content">

		<h1>Quản lí đặt bàn</h1>
		<table id="customers">
			<tr>
				<th>Mã</th>
				<th>Họ tên</th>
				<th>Số điện thoại</th>
				<th>Ngày đặt hàng</th>
				<th>Ghi chú</th>
				<th>Trạng thái</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="table" items="${tablebooks}">
				<tr>
					<td>${table.id}</td>
					<td>${table.name}</td>
					<td>${table.phone}</td>
					<td>${table.date}</td>
					<td><textarea rows="" cols=""
							style="height: 200px; width: 500px">
						${table.notes}
					</textarea></td>
<%-- 					<td>${table.state}</td>
 --%>			
 					<td>${table.state=='false'?'Đã đặt':'Hoàn tất'}</td>
 				
					<td><a href="admin/restaurant/tablebook/update/${table.id}.htm">Sửa</a></td>
					<td><a href="admin/restaurant/tablebook/delete/${table.id}.htm" onclick="return confirm('Are you sure?')">Xóa</a></td>

				</tr>
			</c:forEach>
		</table>

		<form action="admin/restaurant/tablebook/insert.htm" method="get">
			<h2>
				<button class="a">Thêm mới</button>
			</h2>
		</form>





</div>