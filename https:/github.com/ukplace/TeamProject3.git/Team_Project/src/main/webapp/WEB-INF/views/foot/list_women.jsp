<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
	<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
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

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="${pageContext.request.contextPath}/foot/index">Home</a></span> / <span>WOMEN</span></p>
					</div>
				</div>
			</div>
		</div>

		<div class="breadcrumbs-two">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="breadcrumbs-img" style="background-image: url(${pageContext.request.contextPath}/images/cover-img-1.jpg);">
							<h2>KIDS</h2>
						</div>
						<div class="menu text-center">
							<p><a href="#">New Arrivals</a> <a href="#">Best Sellers</a> <a href="#">Extended Widths</a> <a href="#">Sale</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-featured">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 text-center">
						<div class="featured">
							<div class="featured-img featured-img-2" style="background-image: url(${pageContext.request.contextPath}/images/men.jpg);">
								<h2>Kids</h2>
								<p><a href="${pageContext.request.contextPath}/foot/list_kids_kid" class="btn btn-primary btn-lg">Shop now</a></p>
							</div>
						</div>
					</div>
					<div class="col-sm-4 text-center">
						<div class="featured">
							<div class="featured-img featured-img-2" style="background-image: url(${pageContext.request.contextPath}/images/women.jpg);">
								<h2>Running</h2>
								<p><a href="${pageContext.request.contextPath}/foot/list_kids_running" class="btn btn-primary btn-lg">Shop now</a></p>
							</div>
						</div>
					</div>
					<div class="col-sm-4 text-center">
						<div class="featured">
							<div class="featured-img featured-img-2" style="background-image: url(${pageContext.request.contextPath}/images/item-11.jpg);">
								<h2>Sneakers</h2>
								<p><a href="${pageContext.request.contextPath}/foot/list_kids_sneakers" class="btn btn-primary btn-lg">Shop now</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="colorlib-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>View All Products</h2>
					</div>
				</div>
				<div class="row row-pb-md">
				
					<!-- KIDS 제품리스트 받아오는 부분 -->
					<c:forEach var="productDTO" items="${productWomenList}">
					<div class="col-md-3 col-lg-3 mb-4 text-center">
						<div class="product-entry border">
							<a href="${pageContext.request.contextPath}/foot/product_detail?num=${productDTO.p_num}" class="prod-img">
								<img src="${pageContext.request.contextPath}${productDTO.p_img}" class="img-fluid" alt="product_kids_img">
							</a>
							<div class="desc">
								<h2><a href="${pageContext.request.contextPath}/foot/product_detail?num=${productDTO.p_num}">${productDTO.p_name }</a></h2>
								<span class="price">${productDTO.p_price }</span>
							</div>
						</div>
					</div>
					</c:forEach>
					<!-- KIDS 제품리스트 받아오는 부분 -->
					
					
					
					
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="block-27">
						
				               <ul>
<%-- 								<c:if test="${pageDTO.startPage > pageDTO.pageBlock }"> --%>
					               <li><a href="${pageContext.request.contextPath}/admin/product_list?pageNum=${pageDTO.startPage - pageDTO.pageBlock}"><i class="ion-ios-arrow-back"></i></a></li>
<%-- 					            </c:if> --%>
					               
								<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
				                  <li class="active" onclick="location.href='${pageContext.request.contextPath}/admin/product_list?pageNum=${i}"><span>${i}</span></li>
				                </c:forEach>
								
<%-- 								<c:if test="${pageDTO.endPage < pageDTO.pageCount }">    --%>
				                  <li><a href="${pageContext.request.contextPath}/admin/product_list?pageNum=${pageDTO.startPage + pageDTO.pageBlock}"><i class="ion-ios-arrow-forward"></i></a></li>
<%-- 				                </c:if> --%>
				                  
				               </ul>
						
						
<!-- 		               <ul> -->
<!-- 			               <li><a href="#"><i class="ion-ios-arrow-back"></i></a></li> -->
<!-- 		                  <li class="active"><span>1</span></li> -->
<!-- 		                  <li><a href="#">2</a></li> -->
<!-- 		                  <li><a href="#">3</a></li> -->
<!-- 		                  <li><a href="#">4</a></li> -->
<!-- 		                  <li><a href="#">5</a></li> -->
<!-- 		                  <li><a href="#"><i class="ion-ios-arrow-forward"></i></a></li> -->
<!-- 		               </ul> -->
		               
		               
		            </div>
					</div>
				</div>
			</div>
		</div>




		<div class="colorlib-partner">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>Trusted Partners</h2>
					</div>
				</div>
				<div class="row">
					<div class="col partner-col text-center">
						<img src="${pageContext.request.contextPath}/images/brand-1.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
					</div>
					<div class="col partner-col text-center">
						<img src="${pageContext.request.contextPath}/images/brand-2.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
					</div>
					<div class="col partner-col text-center">
						<img src="${pageContext.request.contextPath}/images/brand-3.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
					</div>
					<div class="col partner-col text-center">
						<img src="${pageContext.request.contextPath}/images/brand-4.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
					</div>
					<div class="col partner-col text-center">
						<img src="${pageContext.request.contextPath}/images/brand-5.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
					</div>
				</div>
			</div>
		</div>

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

