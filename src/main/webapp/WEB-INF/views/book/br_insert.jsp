<%@page import="pocketLib.spring.pocketLibSpring.helper.WebHelper"%>
<%@page import="pocketLib.spring.pocketLibSpring.mybatis.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon -->
<%@ include file="/WEB-INF/views/inc/favicon.jsp"%>
<!-- Stylesheets -->
<%@ include file="/WEB-INF/views/inc/style.jsp"%>


<script>
function rank_reg() {
	alert("평점이 등록되었습니다.");
	opener.location.reload();
	window.close();
	
}
</script>

</head>

<body data-spy="scroll" data-target=".onpage-navigation"
	data-offset="60">

	<div class="main">
		<section class="module">
		
			<div class="container">
				<form method="post" action="rank_ok.do?isbn=${isbn}">
				
				<h4 class="font-alt mb-0">읽은 날짜 등록 </h4>
				<hr class="divider-w mt-10 mb-20">
				
				<input type="date"  name="date" id="date"  >
				
			</div>
			<div class="container">
				<h4 class="font-alt mb-0">평점등록</h4>
				<hr class="divider-w mt-10 mb-20">

					<input type="hidden" id="userno" name="userno"
						value="${userInfo.userno}"> <input
						type="radio" id="value" name="value" value="10" checked>10점
					<input type="radio" id="value" name="value" value="9">9점 <input
						type="radio" id="value" name="value" value="8">8점 <input
						type="radio" id="value" name="value" value="7">7점 <input
						type="radio" id="value" name="value" value="6">6점 <input
						type="radio" id="value" name="value" value="5">5점 <input
						type="radio" id="value" name="value" value="4">4점 <input
						type="radio" id="value" name="value" value="3">3점 <input
						type="radio" id="value" name="value" value="2">2점 <input
						type="radio" id="value" name="value" value="1">1점
						<button type="submit" class="btn btn-g btn-round btn-xs" onclick="rank_reg();" >평점등록</button>
				</form>
			</div>
		</section>
	</div>
</body>
</html>
