<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h5><strong>팔로우</strong></h5>
<div id="mypagephoto" style="border:1px dashed #dbdbdb;width:100%;height: 390px;" clss="pb-1">
    <c:forEach var="follower" items="${follows}">
		<a style="height:20px;" href="<%=application.getContextPath() %>/member/yourhomesearch?pwriter=${follower.memail}">
		   <img class="rounded-circle" style="margin:5px" width="30px" height="30px" 
		  src="<%=application.getContextPath() %>/file/member?fileName=${follower.mimage}"/>
		  ${follower.mnickname}
		</a>
		 <br/>
		 <hr/>
		
	</c:forEach>
</div> 