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
         <div class="nav-header" style="width: 180px; height: 80px; background-color:#ff643d;">
            <div class="brand-logo">
                <a href="index.html" style="width: 180px; height: 80px;">
                    <b class="logo-abbr"><img src="images/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="./images/logo-compact.png" alt=""></span>
                    <span class="brand-title" style="text-color: white">
                        Thank Store
                    </span>
                </a>
            </div>
        </div>
        
<!--         <div style="background-color:#ff643d; width: 180px; height: 80px;">
        </div> -->
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
        <div class="nk-sidebar" style="height: 600px;  width: 180px">         
        	
			
                   
            <div class="nk-nav-scroll" style="height: 800px; width:180px;">            	
                <ul class="metismenu" id="menu">
                    <li class="nav-label">카테고리</li>
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">김밥류</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./searchresult?searchKeyword=&mainCategory=김밥류&subCategory=삼각김밥">삼각김밥</a></li>
                            <li><a href="./layout-one-column.html">줄김밥</a></li>
                            <li><a href="./layout-two-column.html">주먹밥</a></li>
                        </ul>
                    </li>    
                                 
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">도시락류</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./layout-blank.html">도시락일반</a></li>
                            <li><a href="./layout-one-column.html">도시락샐러드</a></li>
                        </ul>
                    </li>   
                    
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">빵류</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./layout-blank.html">일반빵</a></li>
                            <li><a href="./layout-one-column.html">핫도그</a></li>
                            <li><a href="./layout-two-column.html">샌드위치</a></li>
                            
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">즉석요리</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./layout-blank.html">튀김</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">완제품</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./layout-blank.html">박스류</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">유제품류</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./layout-blank.html">우유</a></li>
                            <li><a href="./layout-blank.html">요거트</a></li>
                            <li><a href="./layout-blank.html">요구르트</a></li>
                        </ul>                        
                    </li>                      
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->
		<div class="nk-sidebar" style="height: 600px;  width: 180px; margin-left:180px">
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
        <div class="content-body" style="color:#76838f; height:600px; margin-left:360px">
			<div id='box-right' style="width:80%; height:600px">
	    <div id="product-search-box">
   			<div class="row">
	   			<div class="col-md-11">
	    			<h3>${dto.name} 회원님의 구매목록</h3>
	       		</div>
	   		</div>
	   	</div>
	   	<hr style="border: solid 3px #1b4af5;">
	   	<form>
	   		<c:forEach var="purchaseDTO" items="${purchaseList}" varStatus="status">
	   			<div id="list-box">
	   				<div class="row">
	   					<h6>상품명 : ${purchaseDTO.name}<br/></h6>
	   					<div style="height:150px; text-align:center;">
	   						<img src="https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=${dto.name}+${purchaseDTO.productcode}+${purchaseDTO.no}&choe=UTF-8"/>
	   					</div>
	   				</div>
	   			</div>
	   		
	   		</c:forEach>
	   	</form>

	    
    </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
    </div>
    <div id='box-right'>
    효범이형 map 자리쓰세요
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
	<script src="${app}/resources/quixlab/themes/quixlab/plugins/sweetalert/js/sweetalert.min.js"></script>
    <script src="${app}/resources/quixlab/themes/quixlab/plugins/sweetalert/js/sweetalert.init.js"></script>
</body>

	
</html>
