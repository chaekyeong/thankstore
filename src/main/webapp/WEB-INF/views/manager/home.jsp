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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
<title>ThankStore 메인</title>
<!-- Google Fonts -->
<link
   href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
   rel="stylesheet">
<link 
   href="${app}/resources/customer/css/customer.css" rel="stylesheet">
<link
   href="${app}/resources/customer/css/bootstrap.min.css"
   rel="stylesheet">
<link
   href="${app}/resources/quixlab/themes/quixlab/css/style.css"
   rel="stylesheet">

<!-- jquery 경로 -->
<script type="text/javascript"
   src="${app}/resources/customer/js/jquery-3.6.0.min.js"></script>
</head>
	<body class="h-100" style="background-color:white; width:100%; height:100%" >

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper" style="width:100%; height:620px">

        <!--**********************************
            Nav header start
        ***********************************-->
         <div class="nav-header" style="width: 11.375rem;">
            <div class="brand-logo">
                <a href="index.html">
                    <b class="logo-abbr"><img src="images/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="./images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="images/logo-text.png" alt="">
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
		<div class="header">  
            <div class="header-content clearfix" style="margin:0px">
                
                <div class="nav-control">
                    <div class="hamburger" >
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                
                <div class="header-left">
                    <div class="input-group icons" style="padding: 0px">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                        </div>
                        	<input type="search" class="form-control" placeholder="카테고리 검색" aria-label="Search Dashboard">
                        <div class="drop-down   d-md-none">
							<form action="#">
								<input type="text" class="form-control" placeholder="Search">
							</form>
                        </div>
                    </div>
                </div>
                
            </div>
      	</div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <!--**********************************
            Sidebar end
        ***********************************-->
		<div class="card" style="width:180px; margin:0px 0px 0px 0px;">
				<div class="card-body" style="height:600px">
					<div class="col">
                          <div class="card card-profile text-center">
                              <span class="mb-1 text-warning"><i class="icon-people" ></i></span>
                          </div>
                     </div> 
                     

					<div class="media-body">
                              <h3 class="mb-0" style="font-size:15px">${sessionScope.memberInfo.name} 님, 안녕하세요</h3>
                              <p class="text-muted mb-0">폐기머니 : ${dto.point} 원</p>
					</div>
                          <p></p>
					<div class="row mb-5">
                          
                          <div class="col-12 text-center" style="margin: 10px 0 10px 0;">
                              <button class="btn mb-1 btn-warning btn-block">지도보기</button>
                          </div>
                          
                          <div class="col-12 text-center" style="margin: 10px 0 10px 0;">
                              <button class="btn mb-1 btn-warning btn-block">충전하기</button>
                          </div>
                          
                          <div class="col-12 text-center" style="margin: 10px 0 10px 0;">
                              <button class="btn mb-1 btn-warning btn-block">충전하기</button>
                          </div>
                         
                          <div class="col-12 text-center" style="margin: 10px 0 10px 0; position:bottom">
                              <button class="btn mb-1 btn-warning btn-block">로그아웃</button>
                          </div>
                          </h2>
					</div>                         
				</div>
			</div>
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body" style="color:#FFFFFF; min-height:600px">
			
			dd
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="${app}/resources/quixlab/themes/quixlab/plugins/common/common.min.js"></script>
    <script src="${app}/resources/quixlab/themes/quixlab/js/custom.min.js"></script>
    <script src="${app}/resources/quixlab/themes/quixlab/js/settings.js"></script>
    <script src="${app}/resources/quixlab/themes/quixlab/js/gleek.js"></script>
    <script src="${app}/resources/quixlab/themes/quixlab/js/styleSwitcher.js"></script>

</body>

	
</html>
