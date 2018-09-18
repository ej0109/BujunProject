<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/base.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/layout.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/main.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" >
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/user/js/prefixfree.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/user/js/common.js"></script>
    
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/init.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/menu.js"></script>    
    
	<title>부전도서관</title>
	
    <script>
	    $(function() {
	        /* 메가드롭다운 */
	        $('.header .header_wrap .gnb .level2, .header .gnb_bg').hide();
	        $('.header .header_wrap .gnb  li, .header .gnb_bg').on({
	            'mouseover focus': function() {
	                $('.header .header_wrap .gnb .level2, .header .gnb_bg').stop().slideDown(300);
	            },
	            'mouseleave blur': function() {
	                $('.header .header_wrap .gnb .level2, .header .gnb_bg').stop().slideUp(300);
	            }
	
	        });
	
	        /* 스티키헤더 */
	        var header = $('.header');
	        var headerOt = $('.header').offset().top;
	        var windowObj = $(window);
	        var windowSt = 0;
	
	        windowObj.on('scroll', function() {
	            windowSt = windowObj.scrollTop();
	            console.log(windowSt);
	
	            if (windowSt > 0) {
	                header.addClass('on');
	            } else {
	                header.removeClass('on');
	            }
	        });
	        windowObj.scroll();
	
	    });  
    </script>	
    
    
    
 <!--    <script type="text/javascript" src="http://www.bjl.go.kr/n_js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="http://www.bjl.go.kr/n_js/main.js"></script>
    <script type="text/javascript" src="http://www.bjl.go.kr/n_js/jquery-ui-1.9.2.custom.js"></script> 
  -->   
    
 
		 
    
</head>
<body>


    
	<!-- gnb -->
	<div class="lnb_menu">
		<div class="lnb_wrap">
			<ul>
				<li>로그인</li>
				<li>회원가입</li>
				<li>마이페이지</li>
			</ul>
		</div>
	</div>
	
	<!-- lnb_pc -->
	<div class="gnb_menu_pc">
		<div class="gnb_wrap">		
			<div class="header">
	            <div class="gnb_wrap">
	                <ul class="gnb">
	                    <li>
	                        <a href="#">Level1</a>
	                        <ul class="sub">
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="#">Level1</a>
	                        <ul class="sub">
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="#">Level1</a>
	                        <ul class="sub">
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="#">Level1</a>
	                        <ul class="sub">
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                        </ul>
	                    </li>
	                    <li>
	                        <a href="#">Level1</a>
	                        <ul class="sub">
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                            <li><a href="#">level2</a></li>
	                        </ul>
	                    </li>
	                </ul>
	                <!--end of gnb-->
	            </div>
	            <div class="sub_bg text_hide">서브 메뉴 배경 요소</div>
	            <!--end of sub_bg-->
	        </div> <!-- 끝 -->
		</div> <!-- //gnb_wrap  -->
        
        
	</div>
	
	
	<!-- lnb_mob -->
	<div class="gnb_menu_mob">
			<!-- (s) 탑 메뉴 -->

			<div id="menu">
				 <a class="menu-icon" href="#">메뉴</a>
				 <a class="m_search" href="#">검색</a>
				
				<div class="black"></div>
				<div class="white"></div>
				<div class="Mob_navigation">
					
<%-- 					<%if(session.getAttribute("idKey")==null || session.getAttribute("idKey")==""){ %>
						<div class="mob_top">
							<div class="txt">로그인을 하시면<br /> 다양하고 특별한 혜택을 <br />이용할 수 있습니다.</div>
							<ul class="mob_topbtn">
								<li class="mob_login"><a href="<%=request.getContextPath()%>/sub/login.jsp">로그인</a></li>
								<li class="mob_join"><a href="<%=request.getContextPath()%>/sub/join.jsp">회원가입</a></li>
							</ul>
						</div>
					<% } else { %>
						<div class="mob_top">
							<div class="txt"><span class="mob_txtc"><%=session.getAttribute("idKey")%></span>님 반갑습니다.</div>
							<ul class="mob_topbtn">
								<li class="mob_login"><a href="#" onclick="logout('<%=session.getAttribute("idKey")%>')">LOGOUT</a></li>
							</ul>
						</div>				
					<% } %> --%>
					
					
					<ul class="side-menu">
						<li class="depth1"><a href="/project/sub/sub.jsp?category=bag&division=clutch" class="off">BAG</a>
							<ul>
								<li class="depth2"><a href="/project/sub/sub.jsp?category=bag&division=clutch" class="off">CLUTCH</a></li> 
								<li class="depth2"><a href="/project/sub/sub.jsp?category=bag&division=boston" class="off">BOSTON</a></li> 
								<li class="depth2"><a href="/project/sub/sub.jsp?category=bag&division=bucket" class="off">BUCKET</a>
									<!-- <ul>
										<li class="depth3"><a href="?pagecode=P000000034" class="off">연혁</a></li> 
										<li class="depth3"><a href="?pagecode=P000000035" class="off">정관</a></li> 
									</ul>  -->
								</li> 
								<li class="depth2"><a href="/project/sub/sub.jsp?category=bag&division=shoulder" class="off">SHOULDER</a></li> 
								<li class="depth2"><a href="/project/sub/sub.jsp?category=bag&division=ladies" class="off">LADIES</a></li> 
							</ul>
						</li>
						<li class="depth1"><a href="#" class="off">WALLET</a>
							<ul>
								<li class="depth2"><a href="/project/sub/sub.jsp?category=wallet&division=formen" class="off">FOR MEN</a></li> 
								<li class="depth2"><a href="/project/sub/sub.jsp?category=wallet&division=forwomen" class="off">FOR WOMEN</a></li> 
							</ul>
						</li>
						<li class="depth1"><a href="/project/sub/sub.jsp?category=leatherBracelets&division=" class="off">LEATHER BRACELETS</a></li>	
						<li class="depth1"><a href="/project/sub/custom_made.jsp" class="off">CUSTOM MADE</a></li>	
						<li class="depth1"><a href="/project/sub/class.jsp" class="off">CLASS</a></li>
						<li class="depth1"><a href="/project/sub/aobut_us.jsp" class="off">ABOUT US</a></li>	
						<li class="depth1"><a href="/project/sub/sub.jsp?category=etc&division=" class="off">ETC</a></li>					
					</ul>
				</div>
			</div>
				
				<!-- (e) 탑 메뉴 -->	
	</div>
	


	<!-- top -->
	<a class="topBt" href="#doc">TOP</a>
	
	<script>
		$(function(){     
	        // Fakes the loading setting a timeout
	        setTimeout(function () {
	            $('body').addClass('loaded');
	        }, 400);
			
	        $(window).scroll(function () {
	            if ($(this).scrollTop() > $(window).height() * 0.2) {
	                $('.topBt').addClass('over');
	            } else {
	                $('.topBt').removeClass('over');
	            }
	        });
	
	        //Click event to scroll to top
	        $('.topBt').click(function () {
	            $('html, body').animate({ scrollTop: 0 }, 300);
	            return false;
	        });
		});
	</script>
 	
 	
 	