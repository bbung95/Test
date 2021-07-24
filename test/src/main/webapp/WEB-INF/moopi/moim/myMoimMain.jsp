<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- BootStart -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Hello! Moopi!</title>

<!-- Favicon --> 
<link rel="icon" type="image/x-icon" href="/assets/favicon.ico" />

<!-- Bootstrap icons -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap) -->
<link href="/css/styles.css" rel="stylesheet" />

<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<link rel="stylesheet" href="/images/uploadFiles" >  
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="/javascript/owl.carousel.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script> 
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">

<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

<!-- Sweet Alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>

$(document).ready(function(){ 
	$(".owl-carousel").owlCarousel({
		  items: 1,
          margin: 10,
          center:true,
          loop: true,
          nav: false,
          autoplay: true,
          autoplayTimeout: 3000,
          autoplayHoverPause: true,
          autoHeight:true,
          autoWidth:true

	}); 
	
});

</script>
<script>

	
	function fncAddMoimView(){
		alert("모임생성하기");
		self.location ="/moim/addMoimView?userId=${dbUser.userId}"	

	};

	function fncGetMoim(mmNo){
		self.location ="/moim/getMoim?mmNo="+mmNo
	};	

	function fncGetMyMoim() {
		alert("내가 가입한 모임보기");
		
	}


</script>
<style>
body {
	padding-top: 50px;
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 20px;
}

.userProfile {
	margin: 10px;
	width: 40px;
	height: 40px;
	border-radius: 50%;
}

.recent {
	padding-top: 50px;
	padding-left: 60px;
}

</style>

</head>
<body>
<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="../layout/toolbar.jsp" />
<!-- ToolBar End /////////////////////////////////////-->
<h3><img class="userProfile" src="/images/uploadFiles/${dbUser.profileImage}">${dbUser.nickname}님의 모임무피</h3>
<c:if test="${!empty dbUser}">
</c:if>


<div class="owl-carousel">
  <c:forEach var="moim" items="${list}">
  <div>
  <img  onClick="fncGetMoim(${moim.mmNo})" class="picture" src="/images/uploadFiles/${moim.mmFile}" width="200" height="200 "/>
  </div> 
  </c:forEach>
</div>

<h3 class="recent">최근 게시글</h3>


<%-- <p>모임넘버:${moim.mmNo}</p> --%>
<%-- <p>모임명: <div id="getMoim" onClick="fncGetMoim(${moim.mmNo})"><strong>${moim.mmName}</strong></div></p> --%>
<%-- <p>모임소개글:${moim.mmContent}</p> --%>
<!-- <div class="row"> -->
<!-- 	  		<div class="col-xs-4 col-md-2 "><strong>모임대표썸네일</strong></div> -->
<!-- 			<div class="col-xs-8 col-md-4"> -->
<!-- 			<!--<img src="${pageContext.request.contextPath}/images/uploadFiles/${moim.mmFile}" width="200" height="200 "/>  --> 
<%-- 			<img src="/images/uploadFiles/${moim.mmFile}" width="200" height="200 "/>   --%>
<!-- 			</div> -->
<!-- 		</div> -->
<%-- <p>모임가입정원:${moim.mmMaxCount}</p> --%>
<%-- <p>모임현재정원:${moim.mmCurrentCount}</p> --%>
<%-- <p>모임생성자:${moim.mmConstructor.userId}</p> --%>
<%-- <p>모임생성일:${moim.mmRegDate}</p> --%>
<%-- <p>모임관심사No:${moim.mmInterest}</p> --%>
<%-- <p>모임거주지:${moim.mmAddr}</p> --%>
<%-- <p>모임무피상태(1공개2비공개):${moim.mmState}</p> --%>
<%-- <p>모임최소가입연령:${moim.mmMinAge}</p> --%>
<%-- <p>모임최대가입연령:${moim.mmMaxAge}</p> --%>
<%-- <p>모임가입유형(1일반2자유):${moim.mmType}</p> --%>



<jsp:include page="../layout/searchbar.jsp"></jsp:include>
</body>
</html>