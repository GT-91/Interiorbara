<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>

	<!-- header_top : 헤더 윗부분 -->
	<div class="header_top">
	
		<!-- 왼쪽 여백 -->
		<div></div>
		
		<!-- header_logo : 로고 -->
		<div class="header_logo">
			<img src="${path}/resources/img/mainimg/main_logo.jpg" alt="#" onclick="location.href='OHMainView'" />
		</div>
		
		<!-- header_login_box : 회원관리부분 -->
		<div class="header_login_box">
		
		<!-- 로그인 세션 부분 -->
			<c:choose>
			   <c:when test="${loginUserDto eq null }">
	   				<div class="header_login">
						<a href="${path}/my/loginform" style="text-decoration:none;color:#1a1f27">로그인</a>
					</div>
					<div class="header_join">
						<a href="${path}/my/joinform" style="text-decoration:none;color:#1a1f27">회원가입</a>
					</div>
			   </c:when>
			   <c:otherwise>
   					<div class="header_login">
						<a href="${path}/my/logout" style="text-decoration:none;color:#1a1f27">로그아웃</a>
					</div>
					<div class="header_join">
						<a href="${path}/my/mypage" style="text-decoration:none;color:#1a1f27">mypage</a>
					</div>
			   </c:otherwise>
			</c:choose>
			
		</div>

		<!-- 오른쪽 여백 -->
		<div></div>
		
	</div>
	
	<!-- header_bottom : 헤더 아랫부분 -->
	<div id="header_bottom" class="header_bottom">
	
		<div class="header_category_list list_4">
			<a href="${path}/oh/OHMainView" style="text-decoration:none;color:#1a1f27">우리 집 자랑하기</a>
		</div>

	</div>
	
</header>
