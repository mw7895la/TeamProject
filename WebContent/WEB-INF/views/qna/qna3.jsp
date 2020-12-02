<<<<<<< HEAD
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Maxim Bootstrap Template - Index</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!-- Vendor CSS Files -->
<link
	href="<%=application.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/venobox/venobox.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/aos/aos.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Template Main CSS File -->
<link href="<%=application.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">
</head>

<body>

	<jsp:include page="/WEB-INF/views/include/Header.jsp" />
	<section id="services" class="section-bg mt-5" style="background-color: #ffffff;">
	
<%-- ########################################################################### --%>

	<div>
		<h3 style="text-align:center; margin-bottom:50px">Q&A</h3>

		
		
		<div style="width: 1000px; margin-left: auto; margin-right: auto; text-align: right; margin-bottom: 10px; ">
			<a type="button" class="btn btn-info" href="qnaWrite">글작성</a>
		</div>
		
		
		<table
			style="width: 1000px; margin-left: auto; margin-right: auto; background-color: #ffffff"
			class="table table-lg table-bordered fade-up">
			<thead class="thead-light ">
				<tr>
					<th style="width: 70px; font-weight: bold;">번호</th>
					<th style="font-weight: bold;">제목</th>
					<th style="width: 100px; font-weight: bold;">사진</th>
					<th style="width: 100px; font-weight: bold;">작성자</th>
					<th style="width: 100px; font-weight: bold;">날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="qna" items="${list}">
					<tr>
						<td>${qna.qnumber}</td>
						<td><a href="qnaDetail?qnumber=${qna.qnumber}">${qna.qtitle}</a></td>
						<td><img class="rounded" width="70px" height="50px" src="photodownload?fileName=${qna.qphoto}"/></td>
						<td>${qna.mnickname}</td>
						<td><fmt:formatDate value="${qna.qdate}" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>

				<!-- 컬럼 합침 -->
				<tr>
					<td colspan="5" style="text-align: center;"><a
						class="btn btn-outline-primary btn-sm"
						href="qnaindex?pageNo(1)">처음</a> <c:if
							test="${pager.groupNo > 1}">
							<a class="btn btn-outline-primary btn-sm"
								href="qnaindex?pageNo=${pager.startPageNo-1}">이전</a>
						</c:if> <c:forEach var="i" begin="${pager.startPageNo}"
							end="${pager.endPageNo}">
							<c:if test="${pager.pageNo == i }">
								<a class="btn btn-info btn-sm"
									href="qnaindex?pageNo=${i}">${i}</a>
							</c:if>
							<c:if test="${pager.pageNo != i }">
								<a class="btn btn-outline-success btn-sm"
									href="qnaindex?pageNo=${i}">${i}</a>
							</c:if>
						</c:forEach> <c:if test="${pager.groupNo < pager.totalGroupNo}">
							<a class="btn btn-outline-info btn-sm"
								href="qnaindex?pageNo=${pager.endPageNo+1}">다음</a>
						</c:if> <a class="btn btn-outline-primary btn-sm"
						href="qnaindex?pageNo=${pager.totalPageNo}">맨끝</a></td>

				</tr>
			</tbody>
		</table>
		
	</div>
		
<%-- ########################################################################### --%>	
	</section>
	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6">
						<div class="footer-info">
							<h3>Maxim</h3>
							<p>
								A108 Adam Street <br> NY 535022, USA<br> <br> <strong>Phone:</strong>
								+1 5589 55488 55<br> <strong>Email:</strong>
								info@example.com<br>
							</p>
							<div class="social-links mt-3">
								<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
									href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
									href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
								<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
								<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>

					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>Maxim</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				All the links in the footer should remain intact. You can delete the
				links only if you purchased the pro version. Licensing information:
				https://bootstrapmade.com/license/ Purchase the pro version with
				working PHP/AJAX contact form:
				https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="<%=application.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/php-email-form/validate.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/venobox/venobox.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<%-- <script src="<%=application.getContextPath()%>/resources/js/main.js"></script> --%>


</body>

=======
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Maxim Bootstrap Template - Index</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<!-- Vendor CSS Files -->
<link
	href="<%=application.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/venobox/venobox.css"
	rel="stylesheet">
<link
	href="<%=application.getContextPath()%>/resources/vendor/aos/aos.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Template Main CSS File -->
<link href="<%=application.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">

<!-- =======================================================
  * Template Name: Maxim - v2.2.0
  * Template URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style type="text/css">
#a {
	background-position: left;
}

#menu {
	margin-left: 250px;
}

td a {
	text-decoration: none;
	color: inherit;
}
</style>
</head>

<body>

	<jsp:include page="/WEB-INF/views/include/Header.jsp" />
	<section id="services" class="section-bg mt-5" style="background-color: #ffffff;">
	
<%-- ########################################################################### --%>

	<div>
		<h3 style="text-align:center; margin-bottom:50px">Q&A</h3>

		<div style="width: 1000px; margin-left: auto; margin-right: auto; text-align: right; margin-bottom: 10px; ">
			<a type="button" class="btn btn-info" href="qnaWrite">글작성</a>
		</div>
		
		<table
			style="width: 1000px; margin-left: auto; margin-right: auto; background-color: #ffffff"
			class="table table-lg table-bordered fade-up">
			<thead class="thead-light ">
				<tr>
					<th style="width: 50px; font-weight: bold;">번호</th>
					<th style="width: 50px; font-weight: bold;">제목</th>
					<th style="width: 50px; font-weight: bold;">작성자</th>
					<th style="width: 50px; font-weight: bold;">날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="qna" items="${list}">
					<tr>
						<td>${qna.qnumber}</td>
						<td><a href="javascript:qnaDetail(${qna.qnumber})">${qna.qtitle}</a></td>
						<td>${qna.mnickname}</td>
						<td><fmt:formatDate value="${qna.qdate}" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>

				<!-- 컬럼 합침 -->
				<tr>
					<td colspan="4" style="text-align: center;"><a
						class="btn btn-outline-primary btn-sm"
						href="javascript:qnaList(1)">처음</a> <c:if
							test="${pager.groupNo > 1}">
							<a class="btn btn-outline-primary btn-sm"
								href="javascript:qnaList(${pager.startPageNo-1})">이전</a>
						</c:if> <c:forEach var="i" begin="${pager.startPageNo}"
							end="${pager.endPageNo}">
							<c:if test="${pager.pageNo == i }">
								<a class="btn btn-danger btn-sm"
									href="javascript:qnaList(${i})">${i}</a>
							</c:if>
							<c:if test="${pager.pageNo != i }">
								<a class="btn btn-outline-success btn-sm"
									href="javascript:qnaList(${i})">${i}</a>
							</c:if>
						</c:forEach> <c:if test="${pager.groupNo < pager.totalGroupNo}">
							<a class="btn btn-outline-info btn-sm"
								href="javascript:qnaList(${pager.endPageNo+1})">다음</a>
						</c:if> <a class="btn btn-outline-primary btn-sm"
						href="javascript:qnaList(${pager.totalPageNo})">맨끝</a></td>

				</tr>
			</tbody>
		</table>
	</div>
		
<%-- ########################################################################### --%>	
	</section>
	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6">
						<div class="footer-info">
							<h3>Maxim</h3>
							<p>
								A108 Adam Street <br> NY 535022, USA<br> <br> <strong>Phone:</strong>
								+1 5589 55488 55<br> <strong>Email:</strong>
								info@example.com<br>
							</p>
							<div class="social-links mt-3">
								<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
									href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
									href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
								<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
								<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>

					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>Maxim</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				All the links in the footer should remain intact. You can delete the
				links only if you purchased the pro version. Licensing information:
				https://bootstrapmade.com/license/ Purchase the pro version with
				working PHP/AJAX contact form:
				https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="<%=application.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/php-email-form/validate.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/venobox/venobox.min.js"></script>
	<script
		src="<%=application.getContextPath()%>/resources/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<%-- <script src="<%=application.getContextPath()%>/resources/js/main.js"></script> --%>


</body>

>>>>>>> branch 'master' of https://github.com/mw7895la/TeamProject.git
</html>	