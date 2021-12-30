<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
	<style type="text/css">
	.form-control-9 {
	display: block;
	width: 100%;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
	}
	</style>


   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">


	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
	<nav class="colorlib-nav" role="navigation">
		<!-- 헤더들어가는곳 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<!-- 헤더들어가는곳 -->
	</nav>

		<!-- 회원정보/주문내역/회원탈퇴 시작-->
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread">
						<span><a href="${pageContext.request.contextPath}/foot/member_info">회원정보</a></span> /
						<span><a href="${pageContext.request.contextPath}/foot/order_list">주문내역</a></span> /
						<span><a href="${pageContext.request.contextPath}/foot/withdrawal">회원탈퇴</a></span>
						
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 회원정보/주문내역/회원탈퇴 끝-->




			<!-- form태그 시작 -->
			<form method="post" class="colorlib-form" style=" width:850px; height:1050px; margin-left: 380px; margin-top: 100px;" >
			<div class="container">
			
			<br>
			
			<!-- 회색배경 안 틀 여백 시작-->
<!-- 				<div class="row row-pb-lg"> -->
<!-- <!-- 					<div class="col-sm-10 offset-md-1"> --> 
<!-- 						<div class="process-wrap"></div> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<!-- 회색배경 안 틀 여백 끝-->
				
				
				
				
				
				<div class="row">
					<div class="col-lg-8" >
							<h2>회원정보수정</h2>
		              	<div class="row" >
			               <div class="col-md-12">
			                  <div class="form-group"></div>
			               </div>

								<div class="col-md-7">
									<div class="form-group">
										<label for="email">이메일</label><br>
										son123@naver.com
									</div>
								</div>
								

							<div class="col-md-7">
								<div class="form-group">
								<label for="name">이름</label><br>
												손성형
			                  </div>
			               </div>
			               
			                <div class="col-md-7">
								<div class="form-group">
									<label for="password">기존비밀번호</label>
			                    	<input type="text" id="passwoard" class="form-control" placeholder="Enter Your password">
			                  </div>
			               </div>
						
			               <div class="col-md-7">
								<div class="form-group">
									<label for="password">새비밀번호</label>
			                    	<input type="text" id="passwoard" class="form-control" placeholder="Enter Your new password">
			                  </div>
			              
			                  <div class="form-group">
			                    	<input type="text" id="address2" class="form-control" placeholder="Enter Your new password">
			                  </div>
			               </div>
			               
			               <div class="col-md-7">
								<div class="form-group">
									<label for="tel">전화번호</label>
			                    	<input type="tel" id="tel" class="form-control" >
			                   </div>
			              </div>
			                   
			                <div class="col-md-6">
								<div class="form-group">
									<label for="zip">우편번호</label>
			                    	<input type="text" id="zip" class="form-control" >
			                   </div>
			               </div>
			            
			               <div class="col-md-12">
									<div class="form-group">
										<label for="address">주소</label>
			                    	<input type="text" id="address" class="form-control">
			                  </div>
			               </div>
			               
			                 <div class="col-md-12">
								<div class="form-group">
									<label for="detail_address">상세주소</label>
			                    	<input type="text" id="address" class="form-control">
			                  </div>
			               </div>
			            
			            
						<!-- 버튼 -->
						<div class="row" style=" margin-left: 5px; margin-top: 30px;">
							<div class="col-md-12 text-center">
								<input type="reset" class="btn btn-primary" value="취소">
								<input type="submit" class="btn btn-primary" value="저장">
							</div>
						</div>
						<!-- 버튼 -->
						
						
					</div>
				</div>
			</div>
		</div>
		    </form>
		    
		    
		    <!-- form태그 끝 -->
		    


		<footer id="colorlib-footer" role="contentinfo">
			<!-- 푸터들어가는곳 -->
			<jsp:include page="../inc/bottom.jsp"></jsp:include>
			<!-- 푸터들어가는곳 -->
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
   <!-- popper -->
   <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
   <!-- bootstrap 4.1 -->
   <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   <!-- jQuery easing -->
   <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>


	</body>
</html>

