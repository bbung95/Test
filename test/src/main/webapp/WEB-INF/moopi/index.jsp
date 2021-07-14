<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Moopi</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!--   jQuery , Bootstrap CDN  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Bootstrap Dropdown Hover CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">

<!-- Bootstrap Dropdown Hover JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
<style>
body {
	padding-top: 50px;
	margin: auto;
	width: 960px;
}
</style>
</head>
<body>
<jsp:include page="layout/toolbar.jsp"></jsp:include>
		<div class="jumbotron jumbotron-fluid">
  		<div class="container">
   		 <h1 class="display-4">Moopi Project</h1>
   		 <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
  		</div>
		</div>
	</div>
	<center>
	<br> ‘단일로 귀착되지 않는 다수는 혼란이며, 다수에 의존하지 않는 단일은 압제이다’. <br>
		토론을 통해 나온 합리적 결정에는 토 달지 않고 따라가야 강력한 조직이 된다. <br>
			-블라즈 파스칼, 팡세 -
	</center>
<jsp:include page="layout/searchbar.jsp"></jsp:include>
</body>
</html>