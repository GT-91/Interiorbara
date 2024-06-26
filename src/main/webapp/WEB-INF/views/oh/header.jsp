<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>

	<!-- 로고 -->
	<div class="header_logo">
		<img src="${path}/resources/img/mainimg/main_logo.jpg" alt="#" onclick="location.href='OHMainView'" />
	</div>
	
	<!-- 카테고리 -->
	<div class="header_category_list">
		<a href="${path}/oh/OHMainView">우리 집 자랑하기</a>
	</div>		
	
	<!-- 회원 -->
	<div class="header_member">
	
		<c:choose>
		   <c:when test="${loginUserDto eq null }">
		   		<!-- 로그인 --> 
	  			<div class="header_login">
					<a href="${path}/my/loginform">로그인</a>
				</div>
				<!-- 회원가입 -->
				<div class="header_join">
					<a href="${path}/my/joinform">회원가입</a>
				</div>
		   </c:when>
		   <c:otherwise>
		   		<!-- 로그인 -->
	 			<div class="header_login">
					<a href="${path}/my/logout">로그아웃</a>
				</div>			
				<!-- 회원가입 -->
				<div class="header_join">
					<a href="${path}/my/mypage">마이페이지</a>
				</div>
		   </c:otherwise>
		</c:choose>
		
	</div>

</header>
