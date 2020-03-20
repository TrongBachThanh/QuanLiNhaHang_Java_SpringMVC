<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<style>
	.menu{
		color: black;
	}

</style>




<div class="mainContent">

	<div class="comBody comMenu">
		<h1 class="comHeading">Thực đơn</h1>


		<ul class="groupList">

			<c:forEach var="fg" items="${foodGroups}">

				<li class="level-2">

					<h2>
						${fg.vName} <span>${fg.eName}</span>
					</h2>
					<div class="topList">
						<ul class="featuredItems">

							<c:forEach var="f" items="${foods}">




								<c:if test="${fg.id== f.foodgroup.id}">
									<li><img src="images/food/${f.image}"
										title="Gỏi mực Wasabi" alt="Gỏi mực Wasabi">
										<h3>${f.vName}</h3>
										<h4>${f.eName}</h4>
										<p>${f.cost}VND</p></li>
								</c:if>

							</c:forEach>


							<div class="clr"></div>
						</ul>
					</div>
				</li>



			</c:forEach>


		</ul>





	</div>



<!-- 
	<ul class="navMenu">
		<li class="menu-item menu-item-type-custom menu-item-object-custom"><a
			href='#fdm-menu-1'>Mainmenu<span>Main menu</span></a></li>
		<li class="menu-item menu-item-type-custom menu-item-object-custom"><a
			href='#fdm-menu-2'>Seasonal menu<span>Seasonal</span></a></li>
	</ul> -->


</div>

<jsp:include page="sideBar.jsp" />
<div class="clr"></div>
