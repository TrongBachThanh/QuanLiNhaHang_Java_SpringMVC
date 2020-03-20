<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="mainContent">

	<div class="comBody comMenu">
		<h1 class="comHeading">${detail.title}</h1>
		<p>
			<img class="aligncenter wp-image-2403 size-medium"
				src="images/news/${detail.image}"
				alt="" width="300" height="300"
				srcset="http://khoairestaurant.com/wp-content/uploads/2018/10/43365904_2094195680598959_3174668541907435520_n-300x300.jpg 300w, http://khoairestaurant.com/wp-content/uploads/2018/10/43365904_2094195680598959_3174668541907435520_n-150x150.jpg 150w, http://khoairestaurant.com/wp-content/uploads/2018/10/43365904_2094195680598959_3174668541907435520_n-768x768.jpg 768w, http://khoairestaurant.com/wp-content/uploads/2018/10/43365904_2094195680598959_3174668541907435520_n-100x100.jpg 100w, http://khoairestaurant.com/wp-content/uploads/2018/10/43365904_2094195680598959_3174668541907435520_n-600x600.jpg 600w, http://khoairestaurant.com/wp-content/uploads/2018/10/43365904_2094195680598959_3174668541907435520_n.jpg 960w"
				sizes="(max-width: 300px) 100vw, 300px" />
		</p>
		
		<pre style="white-space: pre-wrap; font-family: Arial, Helvetica, sans-serif;">
			${detail.content}
		</pre>
	</div>
</div>
<jsp:include page="sideBar.jsp" />
<div class="clr"></div>
