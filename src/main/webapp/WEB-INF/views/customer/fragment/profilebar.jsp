<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}" />
<c:set var="dto" value="${customerDTO}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>프로필 바입니다.</title>

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link 
	href="${app}/resources/customer/css/customer.css" rel="stylesheet">
<link
	href="${app}/resources/customer/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<header id="header">
	<div class="d-flex flex-column">
	<div id="text-space-box">
 		<div class="profile">
			<img src="${app}/resources/customer/img/profile-img.jpg" alt=""
				class="img-fluid rounded-circle">
				<h3 class="text-light">${dto.name}회원님 안녕하세요.</h3>
				<h3 class="text-light">
					<a href="index.html">폐기머니:${dto.point}</a>
				</h3>
				<h3 class="text-light">
					<a href="purchaseList">내가 구입한 물품 (${purchasecount})</a>
				</h3>
			</div>
		</div>
	</div>
</header>
		
<div>
	<input class="btn btn-secondary" type="button" value="충전하기" onclick="alert('${dto.accountno}')"/>
</div>

<div style="margin-top:10px;">
	<input class="btn btn-secondary" type="button" value="로그아웃" onclick="alert('로그아웃')"/>
</div>
</body>
</html>