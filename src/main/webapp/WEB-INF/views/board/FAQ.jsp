<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  
    Document Title
    =============================================
    -->

<title>FAQ | pocketLib</title>
<!-- favicon -->
<%@ include file="/WEB-INF/views/inc/favicon.jsp"%>
<!-- Stylesheets -->
<%@ include file="/WEB-INF/views/inc/style.jsp"%>

</head>
<body data-spy="scroll" data-target=".onpage-navigation"
	data-offset="60">
	<main>
	<div class="page-loader">
		<div class="loader">Loading...</div>
	</div>
		<!-- Nav bar --> <%@ include file="/WEB-INF/views/inc/navbar.jsp"%>

	<div class="main">
		<section class="module bg-dark-30"
			data-background="${pageContext.request.contextPath}/assets/images/01.jpg">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<h1 class="module-title font-alt mb-0">F A Q</h1>
					</div>
				</div>
			</div>
		</section>
		<section class="module">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2"
						style="margin-left: 5%; width: 100%;">
						<div role="tabpanel">
							<ul class="nav nav-tabs font-alt" role="tablist">
								<li class="active"><a href="#sales" data-toggle="tab"><span
										class="icon-globe"></span>FAQ</a></li>
							</ul>
							
								<!-- FAQ탭 -->
								<div class="tab-pane" id="sales">
									<div class="panel-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading font-alt">
												<h4 class="panel-title font-alt">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#sales1"><h4><strong>1. 저에게 맞는 맞춤 도서를 어떻게 해야 볼 수 있나요?</strong></h4></a>
												</h4>
											</div>
											<div class="panel-collapse collapse in" id="sales1">
												<div class="panel-body font-alt"><h5>
												pocketLib에서는 사용자가 직접 등록한 <b>관심 책</b>과 <b>읽은 책</b>에 대해 맞춤 도서를 추천드리며,<br/><br/>				
												추가된 도서가 많을 수록 추천에 대한 정확도가 높아집니다.<br/><br/>
												pocketLib 추천 서비스를 활용하여 더 많은 책을 추천받아 보세요!</h5>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title font-alt">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion" href="#sales2"><h4><strong>2. 회원가입 절차는 어떻게 되나요?</strong></h4></a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="sales2">
												<div class="panel-body font-alt"><h5>
												회원가입은 아래의 주소를 클릭하신 후 순차적으로 진행하시면 됩니다.<br/><br/>
												<a href="${pageContext.request.contextPath}/login/registerShow.do">http://itproject.ezenac.co.kr/pocketlib/login/registerShow.do?</a><br/><br/>
												이후 관심있는 책을 1권이상 자유롭게 선택하시고 이메일 인증을 받으시면 회원가입이 완료됩니다.</h5>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title font-alt">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion" href="#sales3"><h4><strong>3. 나의 책 통계 그래프를 보고싶어요. 어떻게 볼 수 있나요?</strong></h4></a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="sales3">
												<div class="panel-body font-alt"><h5>
												나의 책 통계는 상단에 <b>독서관리 > 내책장 > 나의 책 통계</b> 에서 볼 수 있습니다.<br/><br/>
												사용자가 등록한 <b>읽은 책</b>을 기반으로 하여 그래프를 보여줍니다.<br/><br/>
												더 많은 책을 등록하셔서 그래프와 통계를 통해 자신의 독서량을 확인해보세요.</h5>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title font-alt">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion" href="#sales4"><h4><strong>4. 더 많은 책을 추가하고 싶어요. 책 추가는 어떻게 하나요?</strong></h4></a>
												</h4>
											</div>
											<div class="panel-collapse collapse" id="sales4">
												<div class="panel-body font-alt"><h5>
												책 추가는 상단에 <b>독서관리 > 책 검색</b>을 통해서 원하는 도서를 추가할 수 있으며, <br/><br/>
												현재 베스트셀러와 화제의 신간도서의 <b>상세정보</b>를 확인하여 추가하는 방법도 있습니다.<br/><br/>
												마지막으로 <b>맞춤 추천</b> 탭에서 추천 된 도서 목록을 통해서도 추가할 수 있습니다.</h5>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		</div>

		
	</main>
	
</body>
	
	<%@ include file="/WEB-INF/views/inc/script.jsp"%>
	<%@ include file="/WEB-INF/views/inc/bottom.jsp"%>
	
</html>