<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Moopi Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="keywords"
	content="tailwind,tailwindcss,tailwind css,css,starter template,free template,admin templates, admin template, admin dashboard, free tailwind templates, tailwind example">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<!-- Css -->
<link rel="stylesheet" href="/css/admin/styles.css">
<link rel="stylesheet" href="/css/admin/all.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i,700,700i"
	rel="stylesheet">
</head>

<body>
	<!--Container -->
	<div class="mx-auto bg-grey-lightest">
		<!--Screen-->
		<div class="min-h-screen flex flex-col">
			<!--Header Section Starts Here-->
						<jsp:include page="../layout/adminHeader.jsp" />

			<!--/Header-->

			<div class="flex flex-1">
				<!--Sidebar-->
				<jsp:include page="../layout/adminToolbar.jsp" />
				<!--/Sidebar-->
				<!--Main-->
				<main class="bg-white-500 flex-1 p-3 overflow-hidden">

					<div class="flex flex-col">
						<!--Grid Form-->

						<div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
							<div
								class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
								<div
									class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
									신고목록</div>
								<div class="p-3">
								
								<div class="list_button" style="float:right; padding-bottom: 10px;">
								<button class="bg-blue-500 hover:bg-blue-800 text-white font-light py-1 px-2 rounded-full" id="listReportBd">게시글</button>
								<button class="bg-primary hover:bg-primary-dark text-white font-light py-1 px-2 rounded-full" id="listReportRe">리플</button>
								<button class="bg-success hover:bg-success-dark text-white font-light py-1 px-2 rounded-full" id="listReportU">유저</button>
								<button class="bg-blue-500 hover:bg-blue-800 text-white font-light py-1 px-2 rounded-full" id="listReportMm">모임</button>
								</div>
								
									<table class="table-responsive w-full rounded">
										<thead align="center">
											<tr>
												<th class="border px-4 py-2" width="4%">No</th>
												<th class="border px-4 py-2" width="8%">신고된 타겟</th>
												
												<c:if test="${search.searchCategory == 1}">
												<th class="border px-4 py-2" width="10%">글제목</th>
												</c:if>
												<c:if test="${search.searchCategory == 2}">
												<th class="border px-4 py-2" width="10%">리플내용</th>
												</c:if> 
												<c:if test="${search.searchCategory == 4}">
												<th class="border px-4 py-2" width="10%">모임명</th>
												<th class="border px-4 py-2" width="5%">모임장아이디</th>
												</c:if>
												<th class="border px-4 py-2" width="10%">닉네임</th>
												<th class="border px-4 py-2" width="10%">이름</th>
												<th class="border px-4 py-2" width="8%">신고 유형</th>
												<th class="border px-4 py-2" width="20%">신고 내용</th>
												<th class="border px-4 py-2" width="7%">신고접수일</th>
												<th class="border px-4 py-2" width="7%">신고처리일</th>
												<th class="border px-4 py-2" width="5%">처리 결과</th>
												<th class="border px-4 py-2" width="5%">처리 사유</th>
												<th class="border px-4 py-2" width="5%"></th>
												
											</tr>   
										</thead>
										<tbody>
											<c:forEach var="report" items="${list}">
												<tr>
													<td class="border px-4 py-2" name="reportNo">${report.reportNo}</td>
													
													<c:if test="${search.searchCategory == 1}">
														<td class="border px-4 py-2 boardNo">${report.reportTargetBd.boardNo}</td>
														<td class="border px-4 py-2">${report.reportTargetBd.boardName}</td>
														<td class="border px-4 py-2">${report.reportTargetBd.boardWriter.nickname}</td>
														<td class="border px-4 py-2">${report.reportTargetBd.boardWriter.userName}</td>
													</c:if>
													<c:if test="${search.searchCategory == 2}">
														<td class="border px-4 py-2 replyNo">${report.reportTargetRe.replyNo}</td>
														<td class="border px-4 py-2">${report.reportTargetRe.replyContent}</td>
														<td class="border px-4 py-2">${report.reportTargetRe.replyWriter.nickname}</td>
														<td class="border px-4 py-2">${report.reportTargetRe.replyWriter.userName}</td>
														
													</c:if> 
													<c:if test="${search.searchCategory == 3}">
														<td class="border px-4 py-2 userId">${report.reportTarget.userId}</td>
														<td class="border px-4 py-2">${report.reportTarget.nickname}</td>
														<td class="border px-4 py-2">${report.reportTarget.userName}</td>
														
													</c:if>
													<c:if test="${search.searchCategory == 4}">
														<td class="border px-4 py-2 mmNo">${report.reportTargetMm.mmNo}</td>
														<td class="border px-4 py-2">${report.reportTargetMm.mmName}</td>
														<td class="border px-4 py-2">${report.reportTargetMm.mmConstructor.userId}</td>
														<td class="border px-4 py-2">${report.reportTargetMm.mmConstructor.nickname}</td>
														<td class="border px-4 py-2">${report.reportTargetMm.mmConstructor.userName}</td>
													</c:if>
													<td class="border px-4 py-2">${report.reportType}</td>
													<td class="border px-4 py-2">${report.reportContent}</td>
													<td class="border px-4 py-2">${report.reportRegDate}</td>
													
													
													<c:if test="${report.reportResultUpdate != null}">
													<td class="border px-4 py-2 ">${report.reportResultUpdate}</td>
													<td class="border px-4 py-2">${report.reportResultState}</td>
													<td class="border px-4 py-2">${report.stateReason}</td>
													<td class="border px-4 py-2">처리완료</td>
													</c:if>
													<c:if test="${report.reportResultUpdate == null}">
													<td class="border px-4 py-2" ></td>
														<div class="abc${report.reportNo}">
															<td class="border px-4 py-2 reportUpdate${report.reportNo}" name ="reportUpdate" align="left">
																<select name="reportResultState"> 
																	<option value="1">해당없음</option>
																	<option value="2">유저경고</option>
																	<option value="3">해당글삭제</option>
																</select> 
															</td>
															<td class="border px-4 py-2 reportUpdate${report.reportNo}" name ="reportUpdate">
															<input type="text" class="stateReason"></input>	
														</td>
														</div>
														
														  <td class="border px-4 py-2" align="left"><button type="button" class="btn btn-primary">처리하기</button></td>
													  	
												  </c:if>
													
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!--/Grid Form-->


						<form class="form-inline" name="detailForm">

							<div class="form-group">
								<select name="searchCondition" class="form-control"
									style="width: 110px">
									<option value="0"
										${! empty search.searchCondition && search.searchCondition== 0 ? "selected" : ""  }>제목+내용</option>
									<option value="1"
										${! empty search.searchCondition && search.searchCondition== 1 ? "selected" : ""  }>제목</option>
									<option value="2"
										${! empty search.searchCondition && search.searchCondition== 2 ? "selected" : ""  }>작성자</option>
								</select>
							</div>

							<div class="form-group">
								<label class="sr-only" for="searchKeyword">검색어</label> <input
									type="text" class="form-control" id="searchKeyword"
									name="searchKeyword" placeholder="검색어"
									value="${! empty search.searchKeyword ? search.searchKeyword : '' }">
							</div>

							<button type="button" class="btn btn-default">검색</button>

							<input type="hidden" id="currentPage" name="currentPage" value="" />
						</form>



					</div>
				</main>
				<!--/Main-->
			</div>
			<!--Footer-->
			<footer class="bg-grey-darkest text-white p-2">
				<div class="flex flex-1 mx-auto">&copy; My Design</div>
			</footer>
			<!--/footer-->

		</div>

	</div>

	<script src="/js/admin/main.js"></script>
	
</body>
	<script>

		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#listReportBd" ).on("click" , function() {
				self.location ="/common/getReportList?searchCategory=1";
			});
		});	
		
		
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#listReportRe" ).on("click" , function() {
				self.location ="/common/getReportList?searchCategory=2";
			});
		});	
		
		
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#listReportU" ).on("click" , function() {
				self.location ="/common/getReportList?searchCategory=3";
			});
		});	
		
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#listReportMm" ).on("click" , function() {
				self.location ="/common/getReportList?searchCategory=4";
			});
		});	
		
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "td.test" ).on("click" , function() {
				
				var boardNo = $(this).parent().find("input.boardNo").val();
				window.location.href ="/board/getBoard?boardNo="+boardNo;
			});
		});	
		
		
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			
			$( "button.btn.btn-primary:contains('처리')" ).on("click" , function() {
				
				alert("신고처리");
				
				alert($(this).parent().parent().html());
				
				var reportResultState	= $(this).parent().parent().find("select").val();
				var reportNo			= $(this).parent().parent().find("td.reportNo").val()
				var stateReason			= $(this).parent().parent().find("input.stateReason").val()
				var reportTargetBd		= $(this).parent().parent().find("td.boardNo").val()
				var reportTargetRe		= $(this).parent().parent().find("td.replyNo").val()
				
				
				alert(reportResultState)
				alert(reportNo)
				alert(stateReason)
				alert(reportTargetBd)
				alert(reportTargetRe)
				
//	 			//alert(reportResultState);
//	 			//alert(reportNo);
//	 			//alert(stateReason);
//	 			//alert(reportTargetBd);
//	 			//alert(reportTargetRe);
				
				$.ajax( 
						{
							url : "/report/json/processReport",
							method : "POST" ,
							dataType : "json" ,
							data :  JSON.stringify ({ "reportNo": reportNo, "reportResultState": reportResultState, "stateReason": stateReason, "reportTargetBd": {"boardNo" : reportTargetBd}, "reportTargetRe": {"replyNo" : reportTargetRe} }),
							contentType : "application/json",
						    success : function(JSONData , status) {
					               //alert(status);
//	 				                //alert("JSONData : \n"+JSONData.boardPassword);
									//alert(JSONData)
									console.log(JSONData)
					               var displayValue = 
					            	   "<h4>"
					            	   +"<td align='left'>"+JSONData.reportResultUpdate+"</td>"
									   +"<td align='left'>"+JSONData.reportResultState+"</td>"
									   +"<td align='left'>"+JSONData.stateReason+"</td>"
									   +"<td align='left'>처리완료</td>"
										+"</h4>"
										
									//Debug...									
									//alert(displayValue);
									$(".reportUpdate"+JSONData.reportNo+"").remove();
									$(".reportUpdate"+JSONData.reportNo+"" ).append(displayValue);	
		
					               }
					               
				
					     })
				
			});
		});	
		
		
		
		
	</script>
</html>