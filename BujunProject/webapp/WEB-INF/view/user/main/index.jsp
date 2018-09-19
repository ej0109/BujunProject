<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header -->
<%@ include file="../include/header.jsp" %>


	<!-- 비쥬얼 -->
	<div class="visual">
		<div class="visual_wrap">
		
			<div class="visual_title c">
				<img src="${pageContext.request.contextPath}/resources/user/images/main/visual_title.png" alt="지식과 문화의 길, 따스한 삶이 있는 부전도서관" />
			</div>
			
			<div class="search_bg">
				<div class="search_title">소장자료 검색</div>
				
				<form class="search_form">
					<input type="text" />
					<button type="button" class="m_search">
						<img src="${pageContext.request.contextPath}/resources/user/images/main/v_search.png" alt="검색">
					</button>
				</form>
			</div>

		</div>
	</div>
	
	
	<!-- 팝업존 / 소식 -->
	<div class="bujun_news_wrap" >
		<div class="bujun_news">
			
			<div class="title c">
				<div class="m_tit">부전도서관 소식</div>
				<div class="s_tit">부전도서관 소식을 알려드립니다.</div>
			</div>
			
			<div class="bujun_wl">
				<div class="bujun_wl_bg">
					<div id="popup"> 
						<div class="roll_pop_tle control"> 
							<div class="roll_pop_btn"> 
								<a href="#" id="popPrev"><img src="${pageContext.request.contextPath}/resources/user/images/main/pop_arr02.png" alt="팝업 이전이미지" /></a> 
								<a href="#" id="popStop"><img src="${pageContext.request.contextPath}/resources/user/images/main/pop_stop.png" alt="팝업 이미지 일시정지" /></a> 
								<a href="#" id="popNext"><img src="${pageContext.request.contextPath}/resources/user/images/main/pop_arr01.png" alt="팝업 다음이미지" /></a> 
								<div class="pop_count"><span id="pager_cnt">1</span> / <span id="total_cnt">1</span></div> 
							</div> 
						</div> 
						
						<div class="control_bg"></div>
		 
						<div class="roll_pop_area"> 
							<div id="main_popup_zone" class="pop_img"> 
							 
							<span id="mainPopupzone1" class="news_pause">
								<img id="img_popzone_1" src="${pageContext.request.contextPath}/resources/user/images/main/pop01.jpg" alt="동래장학회 나눔을 실천하는 사람이 존경받는 아름다운 도시, 바로 동래입니다. Dongnaegu Scholarship Foundation has been evaluated as the best university to innovate undergraduate educational systems’ by unifying two local natioral universities successfully for the first time within Korea." />
							</span> 
		
							<span id="mainPopupzone2" class="news_pause">
								<img id="img_popzone_2" src="/common/images/main/pop/pop03.jpg" alt="동래장학회 사진2" />
							</span>
		
							</div> 
							<!--//main_popup_zone--> 
						</div> 
						<!--//roll_pop_area--> 
					</div>
				
				</div> 
			</div>
		
			<div class="bujun_wr">
				 <!-- 공지사항 -->
				 <article id="main_notice" class="main_notice">
					<div class="main_notice_line">
						<div id="main_notice_div">
							
							
							<!-- 1 -->
							<h3 class="nt_01"><a href="#" class="on">공지사항</a></h3>
							<div class="ncons"  style="display:block;">
								<ul>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											11								
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											제8회 &#40;재&#41;동래장학회 장학생 선발자 명단									
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											제8회 &#40;재&#41;동래장학회 장학생 선발자 명단									
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
								</ul>
								<a href="/index.php?pagecode=P000000026" class="more" title="공지사항 목록 더보기로 이동합니다."><img src="/common/images/main/plus_blk.png" alt="공지사항 더보기" /></a>
							</div>
							<!-- //1 -->
	
	
							<!-- 2 -->
							<h3 class="nt_02"><a href="#" >보도자료</a></h3>
							<div class="ncons" >
	
								<ul>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											22
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											제8회 &#40;재&#41;동래장학회 장학생 선발자 명단
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											제8회 &#40;재&#41;동래장학회 장학생 선발자 명단
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
								</ul>
								<a href="/index.php?pagecode=P000000028" class="more" title="보도자료 목록 더보기로 이동합니다."><img src="/common/images/main/plus_blk.png" alt="보도자료 더보기" /></a>						
							</div>
							<!-- //2 -->
						
						
							<!-- 3 -->
							<h3 class="nt_03"><a href="#" >보도자료</a></h3>
							<div class="ncons" >
	
								<ul>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											33							
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											제8회 &#40;재&#41;동래장학회 장학생 선발자 명단									
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
									<li>
										<a href="?action=BD0000M&amp;pagecode=P000000026&amp;command=View&amp;idx=395">
											제8회 &#40;재&#41;동래장학회 장학생 선발자 명단									
										</a>
										<span class="main_date">2018.03.20</span>
									</li>
								</ul>
								<a href="/index.php?pagecode=P000000028" class="more" title="보도자료 목록 더보기로 이동합니다."><img src="/common/images/main/plus_blk.png" alt="보도자료 더보기" /></a>						
							</div>
							<!-- //3 -->						
						
						</div>
					</div>
				</article> 		
			</div>
		
		</div> 		
		
		<div class="news_bg_1"></div>
		<div class="news_bg_2"></div>
		<div class="news_bg_3"></div>
	
	
	</div>
	
	
	<div class="book_con">
		<div class="book_con_wrap">
			ddd
		</div>
	</div>
	
	
	<div class="quick">
		<div class="quick_wrap">
			
			<div class="tit">QUICK<span>SERVICE</span></div>
			<ul class="quick_menu">
				<li><a href="#"><span class="txt">비치희망자료</span></a></li>
				<li><a href="#"><span class="txt">나의 대출정보</span></a></li>
				<li><a href="#"><span class="txt">자원봉사신청</span></a></li>
				<li><a href="#"><span class="txt">전자책e-book</span></a></li>
				<li><a href="#"><span class="txt">자리 예약</span></a></li>
				<li><a href="#"><span class="txt">새로들어온책</span></a></li>
				<li><a href="#"><span class="txt">공공도서관 통합검색</span></a></li>
				<li><a href="#"><span class="txt">특성화 금융정보자료실</span></a></li>
				<li><a href="#"><span class="txt">특성화 문화강좌신청</span></a></li>
				<li><a href="#"><span class="txt">편의시설</span></a></li>
				
			</ul>
			
		</div>
	</div>
	
	
	
	
	
	
	
	

	
	
	
	




</body>
</html>