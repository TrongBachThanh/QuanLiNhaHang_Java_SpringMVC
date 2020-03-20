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

		<h1>Quản lí tin tức</h1>
		<table id="customers">
			<tr>
				<th>Mã</th>
				<th>Tiêu đề</th>
				<th>Hình ảnh</th>
				<th>Ngày đăng</th>
				<th>Nội dung</th>
				<th>Loại</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="n" items="${news}">
				<tr>
					<td>${n.id}</td>
					<td>${n.title}</td>
					<td><img src="images/news/${n.image}" width="80"></td>
					<td>${n.date}</td>
					<td><textarea rows="" cols=""
							style="height: 200px; width: 500px">
						${n.content}
					</textarea></td>
					<td>${n.type=='1'?'Tin tức':'Khuyến mại'}</td>
	
					<td><a href="admin/restaurant/news/update/${n.id}.htm">Sửa</a></td>
					<td><a href="admin/restaurant/news/delete/${n.id}.htm" onclick="return confirm('Are you sure?')">Xóa</a></td>

				</tr>
			</c:forEach>
		</table>

		<form action="admin/restaurant/news/insert.htm" method="get">
			<h2>
				<button class="a">Thêm mới</button>
			</h2>
		</form>

		<h1>${message}</h1>




</div>