<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>학생등록</title>
	<link rel="stylesheet" href="/greendae/resource/css/학생_교수등록.css">

</head>
<body>
	<div class="site">
		<div class="header">
			<div class="header-bg">
				<a href="#" class="link-admin-logo">
					<img src="./images/admin_logo.png" alt="그린대학교 학사관리시스템">
				</a>
			</div>
			<div class="nav">
				<div class="nav-list">
					<div class="item-home">
						<div class="divider"></div>
						<a href="#" class="link">HOME</a>
					</div>
					<div class="item-sitemap">
						<div class="divider"></div>
						<a href="#" class="link">사이트맵</a>
					</div>
					<a href="#" class="logout-link">로그아웃</a>
				</div>
			</div>
		</div>

		<div class="main">
			<div class="aside">
				<div class="aside-list">
					<div class="aside-item item-1">
						<div class="aside-link">
							<img src="./images/ico-admin-setting.png" alt="환경설정" class="aside-icon">
							<div class="aside-title title-1">환경설정</div>
							<div class="aside-ordered-list ordered-1">
								<a href="#" class="ordered-link">기본환경정보</a>
								<a href="#" class="ordered-link">약관관리</a>
							</div>
						</div>
					</div>
					<div class="aside-item item-2">
						<div class="aside-link">
							<img src="./images/ico-admin-academic.png" alt="학사운영" class="aside-icon">
							<div class="aside-title title-2">학사운영</div>
							<div class="aside-ordered-list ordered-2">
								<a href="#" class="ordered-link">교육 운영 현황</a>
								<a href="#" class="ordered-link">학년별 학생 현황</a>
								<a href="#" class="ordered-link">학과별 학생 현황</a>
								<a href="#" class="ordered-link">강의 목록</a>
								<a href="#" class="ordered-link">강의 등록</a>
								<a href="#" class="ordered-link">수강 현황</a>
							</div>
						</div>
					</div>
					<div class="aside-item item-3">
						<div class="aside-link">
							<img src="./images/ico-admin-persons.png" alt="인사관리" class="aside-icon">
							<div class="aside-title title-3">인사관리</div>
							<div class="aside-ordered-list ordered-3">
								<a href="#" class="ordered-link">학생 목록 및 등록</a>
								<a href="#" class="ordered-link">교수 목록 및 등록</a>
								<a href="#" class="ordered-link">임직원 목록 및 등록</a>
							</div>
						</div>
					</div>
					<div class="aside-item item-4">
						<div class="aside-link">
							<img src="./images/ico-admin-college.png" alt="대학 및 학과" class="aside-icon">
							<div class="aside-title title-4">대학 및 학과</div>
							<div class="aside-ordered-list ordered-4">
								<a href="#" class="ordered-link">대학 및 학과 목록</a>
								<a href="#" class="ordered-link">대학 및 학과 등록</a>
							</div>
						</div>
					</div>
					<div class="aside-item item-5">
						<div class="aside-link">
							<img src="./images/ico-admin-board.png" alt="게시판 관리" class="aside-icon">
							<div class="aside-title title-5">게시판 관리</div>
							<div class="aside-ordered-list ordered-5">
								<a href="#" class="ordered-link">입학안내 공지사항</a>
								<a href="#" class="ordered-link">학사안내 공지사항</a>
								<a href="#" class="ordered-link">커뮤니티 공지사항</a>
								<a href="#" class="ordered-link">입학상담</a>
								<a href="#" class="ordered-link">질문 및 답변</a>
								<a href="#" class="ordered-link">식단안내</a>
								<a href="#" class="ordered-link">자료실</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<= class="section" aria-label="content">
				<div class="section-container">
					<div class="content-header">
						<h1>학생등록</h1>
						<div class="breadcrumb">
							<a href="#">인사관리</a> > 학생등록
						</div>
					</div>
					<div class="info-container">
						<div class="info-section">
							
							<div class="heading4">
								<img src="./images/bullet-h4.png" alt="">
								<div>기본정보 입력</div>                    
							</div>

							<table class="info-table">
								<tbody>
									<tr>
										<td rowspan="4" class="profile-cell">
											<div class="profile-image-section">
												<div class="profile-icon">
													<img src="./images/icon-avatar.png" alt="게시판 관리">
												</div>
											</div>
											<div class="profile-empty-section"></div>
										</td>
										<th class="bordertop">학번</th>
										<td class="bordertop" style="color:#BC2E13; text-align: left; padding-left: 15px;" >학과 코드 + 연도 + 학기 + 순번 조합 자동생성</td>
										<th class="bordertop">주민등록번호</th>
										<td class="bordertop">
											<input type="text" placeholder="- 포함 14자리 입력" class="input-box2">
										</td>
									</tr>
									<tr>
										<th>이름</th>
											<td>
												<input type="text" placeholder="학생 이름 입력" class="input-box">
											</td>
										<th>영문명</th>
											<td><input type="text" placeholder="여권 등과 동일한 영문 이름" class="input-box2"></td>
									</tr>
									<tr>
										<th>성별</th>
										<td>
											<div class="gender-options">
												<label><input type="radio" name="gender" value="male"> 남</label>
												<label><input type="radio" name="gender" value="female"> 여</label>
											</div>
										</td>
										<th>국적</th>
										<td>
											<select class="input-box">
												<option>선택</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>휴대폰</th>
										<td><input type="text" placeholder="휴대폰 번호 입력" class="input-box"></td>
										<th>이메일</th>
										<td><input type="email" placeholder="이메일 입력" class="input-box"></td>
									</tr>
									<tr>
										<td colspan="1"></td>
										<th>주소</th>
										<td colspan="3">
											<div>
												<input type="text" placeholder="우편번호 선택" class="input-box"><br>
												<input type="text" placeholder="기본주소 선택" class="input-box_주소"><br>
												<input type="text" placeholder="상세주소 입력" class="input-box_주소">
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="info-section">
							<div class="heading4">
								<img src="./images/bullet-h4.png" alt="">
								<div>학적정보 입력</div>                    
							</div>

							<table class="info-table">
								<tbody>
									<tr>
										<th>입학년도</th>
										<td>
											<select class="input-box"><option>선택</option></select>
										</td>
										<th>졸업년도</th>
										<td>
											<select class="input-box"><option>선택</option></select>
										</td>
									</tr>
									<tr>
										<th>입학구분</th>
										<td>
											<select class="input-box"><option>수시</option></select>
										</td>
										<th>입학학과(전공)</th>
										<td>
											<div class="combo-box-group">
												<select class="input-box"><option>인문사회대학</option></select>
												<select class="input-box"><option>영미영문학과</option></select>
											</div>
										</td>
									</tr>
									<tr>
										<th>입학학년/학기</th>
										<td>
											<div class="combo-box-group">
												<select class="input-box"><option>1학년</option></select>
												<select class="input-box"><option>1학기</option></select>
											</div>
										</td>
										<th>지도교수</th>
										<td>
											<select class="input-box"><option>선택</option></select>
										</td>
									</tr>
									<tr style="border: none;">
										<td colspan="4" style="padding: 0px; border: none; padding-top: 15px;">
											<input type="submit" value="등록" class="등록버튼">
										</td>
									</tr>
								</tbody>								
							</table>
						</div>
					</div>	
				</div>
								
			</section>
		</div>
		<div class="footer" role="contentinfo">
			<p class="footer-text">
				Copyright ©Green University All rights reserved. ADMINISTRATOR Version 1.4.1
			</p>
		</div>
	</div>
</body>
</html>