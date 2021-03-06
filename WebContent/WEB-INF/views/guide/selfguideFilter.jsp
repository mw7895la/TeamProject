<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="col-lg-8 col-sm-12 mx-auto">
	<ul class="nav" >
		<li class="nav-item col-2 p-1 px-sm-3">
			<a  href="javascript:checkSelfGuidFilter('All', 1, 1)">
              	<div>
					<div>
						<img class="img-fluid" src="<%=application.getContextPath() %>/resources/img/all.png" alt="전체">
					</div>
					<div>
						<p class = "small text-center" style="color: black"><strong>전체</strong></p>
					</div>
				</div>
			</a>
		</li>                      
		<li class="nav-item col-2 p-1 px-sm-3">
			<a href="javascript:checkSelfGuidFilter('비용정리',1, 1)">
	             <div>
					<div>
						<img class="img-fluid" src="<%=application.getContextPath() %>/resources/img/cost.png" alt="비용정리">
					</div>
					<div>
						<p class = "small text-center" style="color: black"><strong>비용<br/>정리</strong></p>
					</div>
				</div>
			</a>
		</li>
		<li class="nav-item col-2 p-1 px-sm-3">
			<a href="javascript:checkSelfGuidFilter('공간배치',1, 1)">
	             <div>
					<div>
						<img class="img-fluid" src="<%=application.getContextPath() %>/resources/img/space.png" alt="공간배치">
					</div>
					<div>
						<p class = "small text-center" style="color: black"><strong>공간<br/>배치</strong></p>
					</div>
				</div>
			</a>
		</li>
		<li class="nav-item col-2 p-1 px-sm-3">
			<a href="javascript:checkSelfGuidFilter('계획하기',1, 1)">
              	<div>
					<div>
						<img class="img-fluid" src="<%=application.getContextPath() %>/resources/img/plan.png" alt="계획하기">
					</div>
					<div>
						<p class = "small text-center" style="color: black"><strong>계획<br/>하기</strong></p>
					</div>
				</div>
			</a>
		</li>
		<li class="nav-item col-2 p-1 px-sm-3">
			<a href="javascript:checkSelfGuidFilter('페인트도배',1,1)">
              	<div>
					<div>
						<img class="img-fluid" src="<%=application.getContextPath() %>/resources/img/drawing.png" alt="페인트도배">
					</div>
					<div>
						<p class = "small text-center" style="color: black"><strong>페인트<br/>도배</strong></p>
					</div>
				</div>
			</a>
		</li>
		<li class="nav-item col-2 p-1 px-sm-3">
			<a href="javascript:checkSelfGuidFilter('바닥깔기',1,1)">
              	<div>
					<div>
						<img class="img-fluid" src="<%=application.getContextPath() %>/resources/img/tile.png" alt="바닥깔기">
					</div>
					<div>
						<p class = "small text-center" style="color: black"><strong>바닥<br/>깔기</strong></p>
					</div>
				</div>
			</a>
		</li>
	</ul>
</div>



