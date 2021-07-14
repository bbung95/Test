<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- ToolBar Start /////////////////////////////////////-->

	<div class="container">

		<!-- toolBar Button Start //////////////////////// -->
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#target">
				<span class="sr-only">Toggle navigation</span> <span>
					class="icon-bar"></span> <span class="icon-bar"></span> <span>
					class="icon-bar"></span>
			</button>
		</div>
		<!-- toolBar Button End //////////////////////// -->

		<!--  dropdown hover Start -->
		<div class="collapse navbar-collapse" id="target"
			data-hover="dropdown"
			data-animations="fadeInDownNew fadeInRightNew fadeInUpNew fadeInLeftNew">

			<!-- Tool Bar 를 다양하게 사용하면.... -->
			<ul class="nav navbar-nav">

				<li><a href="/flash/listFlash">홈</a></li>
				<li><a href="#">게시글</a></li>
				<li><a href="#">정모일정</a></li>
				<li><a href="#">가입하기/탈퇴하기</a></li>
				<li><a href="#">초대하기</a></li>
				<li><a href="#">유저목록</a></li>
			</ul>

			
	<!-- dropdown hover END -->

</div>
</div>
