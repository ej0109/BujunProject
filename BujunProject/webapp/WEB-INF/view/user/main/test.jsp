<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko"><head>
	    <meta charset="euc-kr">
        <title>희망과 꿈이 있는 부전도서관</title>

	    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link href="//www.bjl.go.kr/css/base.css" rel="stylesheet" type="text/css">
		<link href="//www.bjl.go.kr/css/layout.css" rel="stylesheet" type="text/css">
        <link href="//www.bjl.go.kr/css/board.css" rel="stylesheet" type="text/css">
		<link href="//www.bjl.go.kr/css/btn.css" rel="stylesheet" type="text/css"> 		
		<link href="//www.bjl.go.kr/css/ui.css" rel="stylesheet" type="text/css">

		<link href="//www.bjl.go.kr/css/main.css" rel="stylesheet" type="text/css"> 

<!--[if lt IE 9]>
	<script src="//www.bjl.go.kr/n_js/html5shiv.js"></script>
<![endif]-->

		<link rel="stylesheet" type="text/css" href="//www.bjl.go.kr/script/themes/base/ui.all.css" title="style">
		<link rel="stylesheet" type="text/css" href="//www.bjl.go.kr/script/ui/demos.css" title="style">
    	<link rel="shortcut icon" href="http://www.bjl.go.kr/img/bjl.ico" type="image/x-icon">

		
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/jquery-ui-1.9.2.custom.js"></script> 
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/common.js"></script>
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/init.js"></script>
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/responsive.js"></script>
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/common2.js"></script>
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/sub.js"></script>
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/jquery.easing.1.3.min.js"></script>	
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/jquery.bxslider.min.js"></script>	
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/main.js"></script>
		<script type="text/javascript" src="http://www.bjl.go.kr/n_js/mainvisual.js"></script>

		<script type="text/javascript">
		<!--
		$(function() {
			$("#side .sm_2th > li > a").on("focusin mouseenter", function() {
				var $moreState = $(this).children(".more").children(".state");
				
				if(!$(this).parent("li").hasClass("on")) {
					$moreState.text($moreState.text().replace("닫힘", "열림"));
					$(this).next(".sm_3th").stop().slideDown(400);
				}
			})
				
			$("#side .sm_2th > li").on("mouseleave", function() {
				var $moreState = $(this).find("> a .more .state");
				
				if(!$(this).hasClass("on")) {
					$moreState.text($moreState.text().replace("열림", "닫힘"));
					$(this).children(".sm_3th").stop().slideUp(400);
				}
			});

			$("#side .sm_2th li .sm_3th li:last-child a").on("focusout", function() {
				var $moreState = $(this).parents("li").eq(1).find("> a .more .state");

				if(!$(this).parents("li").eq(1).hasClass("on")) {
					$moreState.text($moreState.text().replace("열림", "닫힘"));
					$(this).parents(".sm_3th").stop().slideUp(400);
				}
			});
		});
		$(function(){  
		  $(".sub_menu ul.sm_3th.on").parent("li").addClass("on");

		  var side2Depth = $(".sm_3th").siblings("a").removeClass("link"),//link  
			side3Depth = $(".sm_3th");
		    side2Depth.on("click",function(){
			var side2DepthLink = $(this).attr("href"),
			linkArr = side2DepthLink.split("="),
			moveLink = linkArr[1];
 		  
			  event.preventDefault();
			//  alert(moveLink);
			  if($(this).hasClass("on") === true){
			   
				return false;
			  }else{
				$(this).addClass("open").siblings(side3Depth).addClass("open").parent().addClass("open");
				$(this).next(side3Depth).slideDown(200);
				$(this).parent().siblings(".open").find(side3Depth).slideUp(200);
				$(this).parent().siblings().removeClass("open").children().removeClass("open");
			  }
 		  });
		});

		//-->
		</script>


		<script type="text/javascript">
		//<![CDATA[
		$(function(){
			
			var gg = navigator.userAgent.toLowerCase();
			//iphone
			//android
			$("body a").click(function() {
				var check_tel = $(this).attr("href");

				if(check_tel.indexOf("tel") != "-1"){
					if(gg.indexOf("android") != "-1" || gg.indexOf("iphone") != "-1") {
						return true;
					} else {
						return false;
					}
				}

			});
		});
		 //]]>

		</script>



		<script type="text/javaScript">
		//<![CDATA[
		$(document).ready(function($) {
			
			window.fn_menu_layout = function() {
				var dept_1_mnu = $('#site_nav > ul > li').length;
				var site_mnu_width = 100 / dept_1_mnu;
				$('#site_nav > ul > li').css('width', site_mnu_width + '%');
				$("#site_nav > ul > li").hover(function(){
					$("ul:not(:animated)",this).slideDown("fast");
				}, function(){
					$("ul",this).slideUp("fast");
				});
			};

			window.fn_leftmenu_control = function(code) {
				
				$("#left_"+code+" > a").parents('li').addClass('selected');
				$("#left_"+code+" > a").next().slideDown("slow");
			};

			window.onload = function() { 
				
				fn_leftmenu_control("");
				
			}
		});
		//]]>
		</script>



<script type="text/javascript">
//<![CDATA[
function fnSearchBook() {
	var theForm = eval("document.frmSearch");

	var str = alltrim(theForm.value1.value);
	if (str.length == 0) {
		alert("검색어를 입력하여 주십시오.");
		theForm.value1.focus();
		return false;
	}

	return true;
}

$(document).ready(function() {

	$("#m1").click(function() {
		$("#a1").show();
		$("#a2").hide();
		$("#a3").hide();
		$("#murl1").attr("href","/content/6100.php");
		$("#m1").attr("src","/images/main/tab_01_on.gif");
		$("#m2").attr("src","/images/main/tab_02.gif");
		$("#m3").attr("src","/images/main/tab_03.gif");
		return false;
	});

	$("#m2").click(function() {
		$("#a2").show();
		$("#a1").hide();
		$("#a3").hide();
		$("#murl1").attr("href","/content/?m1=03&m2=04");
		$("#m1").attr("src","/images/main/tab_01.gif");
		$("#m2").attr("src","/images/main/tab_02_on.gif");
		$("#m3").attr("src","/images/main/tab_03.gif");
		return false;
	});

	$("#m3").click(function() {
		$("#a3").show();
		$("#a2").hide();
		$("#a1").hide();
		$("#murl1").attr("href","/content/6101.php");
		$("#m1").attr("src","/images/main/tab_01.gif");
		$("#m2").attr("src","/images/main/tab_02.gif");
		$("#m3").attr("src","/images/main/tab_03_on.gif");
		return false;
	});

	$("#scr_z1").click(function() {
		zoomIn();
		return false;
	});
	$("#scr_z2").click(function() {
		zoomOut();

		return false;
	});
	$("#scr_z3").click(function() {
		resetZoom();
		return false;
	});
});
//]]>
</script>

<script type="text/javascript" src="/script/zoom.js" charset="euc-kr"></script>


<!-- <script type="text/javascript" src="/voicemonds/voicemonDS.js"></script> -->


<!-- <META NAME="GOOGLEBOT" CONTENT="NOINDEX,NOFOLLOW">
 -->
<script type="text/javascript">
//<![CDATA[
	function fnSearchBook() {
		var theForm = eval("document.frmSearch");

		var str = alltrim(theForm.value1.value);
		if (str.length == 0) {
			alert("검색어를 입력하여 주십시오.");
			theForm.value1.focus();
			return false;
		} else {
			if(theForm.gubun[0].checked == true) {
				theForm.action = "/content/?m1=03&m2=02";
				theForm.smode.value="search";
			} else {
				frmSearch.search_flag.value="6";
				frmSearch.contents.value="3";
				theForm.smode.value="search2";
				theForm.action = "/content/?m1=03&m2=02";
			}
		}

		return true;
	}
//]]>
</script>
</head>
<body>

<div id="skipNavi">
	
	
				<a href="#container">본문 바로가기</a>	
	
</div>


<!-- Top S -->
	









 
  






	<!-- Top E -->
<!-- container -->




<script src="/n_js/cm.tower.ui.js"></script>
<script src="/n_js/ui.common.js"></script>


<script type="text/javascript" src="/jquery.cycle.all.js" charset="utf-8"></script> 
<script type="text/javascript" src="/bannerget.js" charset="utf-8"></script> 

<script>

	setInterval(function(){
		$('#contentsFull').find(' > div:visible').find('.conNext').trigger('click');
	},100000);
</script>


<!-- 메인영역 끝  -->
<!-- container -->
<div id="container" class="container">
<div class="dv_wrap">
	<div class="mtab_tit">
		<h2 class="mCont mtabs mtab1 on" id="mtab1" data-val="0"><a href="#"><span>소식</span><span class="tt">소식</span></a></h2>
		<h2 class="mCont mtabs mtab2" id="mtab2" data-val="1"><a href="#"><span>도서/프로그램</span><span class="tt">도서/프로그램</span></a></h2>
		<!-- <h2 class="mCont mtabs mtab3" id="mtab3" data-val="2"><a href="#"><span>여행</span><span class="tt">TOUR</span></a></h2> -->
	</div>
</div>


<div class="contentsFull" id="contentsFull">
	
	<!-- 1번페이지 -->
	<div class="contentsFull0">
		<h2 class="offscreen">현재 선택된 컨텐츠는 스토리 입니다.</h2>
		<div class="conNext mCont" data-val="1"><a href="javascript:;" title="소식컨텐츠 보기">&gt; <span>소식</span></a></div>
		
		
		
		


 

		<div class="group">
			
			

							
			

			<div class="t02_1">
				

				                                

				<div class="clr popupzone box1_1" id="c1m1">
					<div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 341px;"><ul id="slider_visual" style="width: 1015%; position: relative; transition-duration: 0.5s; transform: translate3d(-2955px, 0px, 0px);"><li data-index="7" style="float: left; list-style: none; position: relative; width: 591px;" class="bx-clone">
								<a href="https://1398.acrc.go.kr/hpg/req/hpgPsmStep1.do" title="공공기관 채용비리를 신고해주세요!" target="_blank"> 
								 <img src="/files/popup/P_285.jpg" alt="공공기관 채용비리를 신고해주세요!">
								</a>

							</li>
							
							<li data-index="0" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="/lms_bbs2/dn.php?downloadname=2018년 원북 선정도서 서평 공모(서식).hwp&amp;filename=20180904130757.hwp&amp;bbs_idx=16309" title="2018 원북 선정도서 서평 공모" target="_self"> 
								 <img src="/files/popup/P_336.jpg" alt="2018 원북 선정도서 서평 공모">
								</a>

							</li>

							<li data-index="1" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="http://www.bjl.go.kr/content/index.php?bbsid=6100&amp;bbs_idx=16306&amp;pagekind=c&amp;gopage=/main/index.php&amp;m1=07&amp;m2=01" title="소확행 소중한 책과 떠나는 부전도서관 행복여행" target="_self"> 
								 <img src="/files/popup/P_335.jpg" alt="소확행 소중한 책과 떠나는 부전도서관 행복여행">
								</a>

							</li>

							<li data-index="2" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="javascript:NewWindow5('/popup.php?idx=333','mpopWin','300','500','no','0','0');" title="평범한 우리가 세상을 바꾸는 방법 공익신고"> 
								 <img src="/files/popup/P_333.jpg" alt="평범한 우리가 세상을 바꾸는 방법 공익신고">
								</a>

							</li>

							<li data-index="3" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="http://www.bjl.go.kr/content/index.php?bbsid=6100&amp;bbs_idx=16227&amp;pagekind=c&amp;gopage=/main/index.php&amp;m1=07&amp;m2=01" title="골든벨" target="_self"> 
								 <img src="/files/popup/P_330.jpg" alt="골든벨">
								</a>

							</li>

							<li data-index="4" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="/content/?m1=06&amp;m2=10&amp;m3=01" title="제18회 2018 부산시민독후감 공모" target=""> 
								 <img src="/files/popup/P_322.jpg" alt="제18회 2018 부산시민독후감 공모">
								</a>

							</li>

							<li data-index="5" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="#" title="2018 원북원부산 선정도서 팝업존"> 
								 <img src="/files/popup/P_300.jpg" alt="2018 원북원부산 선정도서 팝업존">
								</a>

							</li>

							<li data-index="6" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="http://www.bjl.go.kr/20180119mv.html" title="범국민 장애인식개선 캠페인 공익광고 영상" target="_blank"> 
								 <img src="/files/popup/P_286.jpg" alt="범국민 장애인식개선 캠페인 공익광고 영상">
								</a>

							</li>

							<li data-index="7" style="float: left; list-style: none; position: relative; width: 591px;">
								<a href="https://1398.acrc.go.kr/hpg/req/hpgPsmStep1.do" title="공공기관 채용비리를 신고해주세요!" target="_blank"> 
								 <img src="/files/popup/P_285.jpg" alt="공공기관 채용비리를 신고해주세요!">
								</a>

							</li>
 
					<li data-index="0" style="float: left; list-style: none; position: relative; width: 591px;" class="bx-clone">
								<a href="/lms_bbs2/dn.php?downloadname=2018년 원북 선정도서 서평 공모(서식).hwp&amp;filename=20180904130757.hwp&amp;bbs_idx=16309" title="2018 원북 선정도서 서평 공모" target="_self"> 
								 <img src="/files/popup/P_336.jpg" alt="2018 원북 선정도서 서평 공모">
								</a>

							</li></ul></div></div>
					
						<button type="button" class="ir btn_prev">이전 이미지</button>
						<button type="button" class="ir btn_stop">일시정지</button>
						<button type="button" class="ir btn_play">자동재생</button>
						<button type="button" class="ir btn_next">다음 이미지</button>
					</div>
				</div>

				
			</div>
			

		</div>

	</div>
	
	
	
	
	
	
</div>

	




			
			

 

		    

			



</div>


		



                




   

 






 

  




</body></html>
