<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>학사관리시스템 메인</title>
  <link rel="stylesheet" href="/greendae/resource/css/학사관리main.css">
  <style>

/* ===== Search Bar (right aligned) ===== */
.searchbar {
  display: flex;
  justify-content: flex-end;
  gap: 8px;
  padding: 0 18px 12px;
}

.searchbar select,
.searchbar input {
  height: 36px;
  border: 1px solid var(--border);
  padding: 0 10px;
  background: #fff;
}

.searchbar input::placeholder {
  color: #aaa;
}

.btn {
  height: 36px;
  min-width: 70px;
  border: 1px solid var(--blue);
  background: var(--blue);
  color: #fff;
  cursor: pointer;
  border-radius: 3px;
  font-weight: 600;
}

.btn:hover {
  background: var(--blue-dark);
  border-color: var(--blue-dark);
}

.btn-outline {
  background: #fff;
  color: var(--blue);
}

.btn-block {
  height: 40px;
  min-width: 100px;
}

/* ===== Panel (table container) ===== */
.panel {

    border-top: 2px solid #d7dbe0;
    border: 1px solid var(--border);
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
    margin: 0px;
    background: #fff;
    position: relative;
    left: -5px;
}

.panel .panel-head {
padding: 12px 14px;
border-bottom: 1px solid var(--border);
font-weight: 700;
color: #333;
}

.panel .panel-body {
    padding: 0;
    
}

/* ===== Tables ===== */
.table {
  width: 100%;
  border-collapse: collapse;
}

.table th {
  background: #f7f7f8;
  color: #444;
  border-bottom: 1px solid var(--border);
  font-size: 13px;
  padding: 12px;
  text-align: center;
  border-top: solid 1px;
  border-bottom: solid 1px #aaaaaa;
}

.table td {
  border-bottom: 1px solid var(--border);
  padding: 12px;
  text-align: center;
  font-size: 13px;
  border-bottom: solid 1px #dbd9d9;
}



.status.ok {
  color: var(--green);
  font-weight: 700;
}

.status.wait {
  color: var(--orange);
  font-weight: 700;
}

.status.bad {
  color: var(--red);
  font-weight: 700;
}

/* ===== Pagination / Register Button row ===== */
.page-foot {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 18px 26px;
}

.paging {
  display: flex;
  gap: 6px;
}

.paging .pg {
  min-width: 34px;
  height: 34px;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 1px solid var(--border);
  background: #fff;
  border-radius: 3px;
  cursor: pointer;
  font-size: 13px;
}

.paging .pg.active {
  background: var(--blue);
  border-color: var(--blue);
  color: #fff;
}

/* ===== Forms ===== */
.formset {
  border: 1px solid var(--border);
  margin: 0 18px 18px;
  
}

.formset .set-head {
  padding: 12px 14px;
  border-bottom: 1px solid var(--border);
  font-weight: 700;
  color: #333;
  display: flex;
  align-items: center;
  gap: 8px;
}

.formset .set-head::before {
  content: "│";
  color: var(--blue);
  font-weight: 900;
}

.formset .set-body {
  padding: 18px;
}

.form-grid {
  display: grid;
  grid-template-columns: 170px 1fr 170px 1fr;
  gap: 10px 14px;
  align-items: center;
}

.form-grid label {
  font-size: 13px;
  color: #333;
}

.form-grid input[type="text"],
.form-grid input[type="email"],
.form-grid input[type="date"],
.form-grid select,
.form-grid textarea {
  height: 36px;
  border: 1px solid var(--border);
  padding: 0 10px;
  width: 100%;
  background: #fff;
}

.form-grid textarea {
  height: 86px;
  padding: 10px;
  resize: vertical;
}

.form-row {
  display: flex;
  gap: 14px;
}

.photo {
  width: 90px;
  height: 90px;
  border-radius: 50%;
  background: #ddd;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #777;
  font-size: 12px;
}

.addr-2 {
  grid-column: 2 / span 3;
}

/* ===== Dashboard (index) ===== */
.grid-2 {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 18px;
  margin: 0 ;
}

.mt-12 {
  margin-top: 12px;
}

/* ===== Footer (60px) ===== */
#footer {
  height: 60px;
  background: var(--footer);
  color: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 12px;
}

  </style>

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
            <div class="aside" style="height: 1300px;">
                <div class="aside-list">

                    <!-- 1. 환경설정 -->
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

                    <!-- 2. 학사운영 -->
                    <div class="aside-item item-2">
                        <div class="aside-link">
                            <img src="./images/ico-admin-academic.png" alt="학사운영" class="aside-icon">
                            <div class="aside-title title-2">학사운영</div>
                                
                            <div class="aside-ordered-list ordered-2">
                                <a href="./교육운영현황.html" class="ordered-link">교육 운영 현황</a>
                                <a href="#" class="ordered-link">학년별 학생 현황</a>
                                <a href="#" class="ordered-link">학과별 학생 현황</a>
                                <a href="./강의목록.html" class="ordered-link">강의 목록</a>
                                <a href="./강의등록.html" class="ordered-link">강의 등록</a>
                                <a href="./수강현황.html" class="ordered-link">수강 현황</a>
                            </div>
                        </div>
                    </div>

                    <!-- 3. 인사관리 -->
                    <div class="aside-item item-3">
                        <div class="aside-link">
                            <img src="./images/ico-admin-persons.png" alt="인사관리" class="aside-icon">
                            <div class="aside-title title-3">인사관리</div>

                            <div class="aside-ordered-list ordered-3">
                                <a href="./학생목록.html" class="ordered-link">학생 목록 및 등록</a>
                                <a href="./교수목록.html" class="ordered-link">교수 목록 및 등록</a>
                                <a href="./교수등록.html" class="ordered-link">임직원 목록 및 등록</a>
                            </div>
                        </div>
                    </div>

                    <!-- 4. 대학 및 학과 -->
                    <div class="aside-item item-4">
                        <div class="aside-link">
                            <img src="./images/ico-admin-college.png" alt="대학 및 학과" class="aside-icon">
                            <div class="aside-title title-4">대학 및 학과</div>

                            <div class="aside-ordered-list ordered-4">
                                <a href="./학과목록.html" class="ordered-link">대학 및 학과 목록</a>
                                <a href="./대학및학과등록.html" class="ordered-link">대학 및 학과 등록</a>
                            </div>
                        </div>
                    </div>

                    <!-- 5. 게시판 관리 -->
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

            <section class="section" aria-label="content">

                <div class="section-container">
                    <div id="include-header"></div>
                    <div id="include-sidebar"></div>

                    <div class="mainWrap">
                        <div class="page">

                            <div class="breadcrumb-bar">
                                <div class="breadcrumb-content1">
                                    운영현황 메인
                                </div>
                                
                                <div class="breadcrumb-content3">
                                    
                                
                                    <a href="#">HOME</a>
                                    <span class="path-divider"> > </span>
                                    <a href="#">운영현황 메인</a>
                                </div>
                            </div>
                            <hr style="width: 1090px; border: none; border-top: 3px solid #c0c0c0; margin-left: 15px; margin-top: 0px;">
                            
                            <div class="content">
                                <!-- 대학 운영 현황 -->
                                <section class="panel">
                                    <div class="heading4">
                                        <img src="./images/bullet-h4.png" alt="">
                                        <div>대학 운영 현황</div>
                                    </div>
                                    <div class="panel-body">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>개설대학</th><th>개설강좌</th><th>전체교수</th><th>임직원</th>
                                            <th>학생</th><th>휴학생</th><th>대학원생</th><th>졸업생</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>53</td><td>214</td><td>64</td><td>24</td>
                                            <td>2047</td><td>127</td><td>364</td><td>5680</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    </div>
                                </section>

                                <!-- 교육 운영 현황 -->
                                <section class="panel">
                                    <div class="heading4">
                                        <img src="./images/bullet-h4.png" alt="">
                                        <div>교육 운영 현황</div>
                                    </div>
                                    <div class="panel-body">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>학과</th><th>과목코드</th><th>과목명</th><th>학년</th>
                                            <th>담당교수</th><th>구분</th><th>학점</th><th>강의실</th><th>수강인원</th><th>수강률</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="tl">국어국문학과</td><td>830003</td><td class="tl">고전소설1</td><td>2</td>
                                            <td>김국어</td><td>전공</td><td>3</td><td>인문관101</td><td>32 / 46</td><td>70%</td>
                                        </tr>
                                        <tr>
                                            <td class="tl">컴퓨터공학과</td><td>830001</td><td class="tl">자바프로그래밍</td><td>2</td>
                                            <td>김자바</td><td>전공</td><td>3</td><td>컴퓨터실</td><td>32 / 46</td><td>70%</td>
                                        </tr>
                                        <tr>
                                            <td class="tl">컴퓨터공학과</td><td>830001</td><td class="tl">프로그래밍의 이해</td><td>1</td>
                                            <td>김코딩</td>
                                            <td>전공</td>
                                            <td>3</td>
                                            <td>공학관101</td>
                                            <td>32 / 46</td><td>70%</td>
                                        </tr>
                                        <tr>
                                            <td class="tl">컴퓨터공학과</td><td>830001</td><td class="tl">자바프로그래밍</td><td>2</td>
                                            <td>김자바</td><td>전공</td><td>3</td><td>컴퓨터실</td><td>32 / 46</td><td>70%</td>
                                        </tr>
                                        <tr>
                                            <td class="tl">컴퓨터공학과</td><td>830001</td><td class="tl">자바프로그래밍</td><td>2</td>
                                            <td>김자바</td><td>전공</td><td>3</td><td>컴퓨터실</td><td>32 / 46</td><td>70%</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    </div>
                                </section>

                                <div class="grid-2">
                                    <!-- 학년별 학생 현황 -->
                                    <section class="panel">
                                    <div class="heading4">
                                        <img src="./images/bullet-h4.png" alt="">
                                        <div>학년별 학생 현황</div>
                                    </div>
                                    <div class="panel-body">
                                        <table class="table">
                                        <thead><tr><th>학년</th><th>재학생</th><th>휴학생</th><th>전체</th></tr></thead>
                                        <tbody>
                                            <tr><td>1학년</td><td>460</td><td>32</td><td>492</td></tr>
                                            <tr><td>2학년</td><td>460</td><td>32</td><td>492</td></tr>
                                            <tr><td>3학년</td><td>460</td><td>32</td><td>492</td></tr>
                                            <tr><td>4학년</td><td>460</td><td>33</td><td>492</td></tr>
                                            <tr><td>총합</td><td>1840</td><td>128</td><td>1968</td></tr>
                                        </tbody>
                                        </table>
                                    </div>
                                    </section>

                                    <!-- 학과별 학생 현황 -->
                                    <section class="panel">
                                    <div class="heading4">
                                        <img src="./images/bullet-h4.png" alt="">
                                        <div>학과별 학생 현황</div>
                                    </div>
                                    <div class="panel-body">
                                        <table class="table">
                                        <thead><tr><th>학과</th><th>재학생</th><th>휴학생</th><th>전체</th></tr></thead>
                                        <tbody>
                                            <tr><td class="tl">국어국문학과</td><td>120</td><td>2</td><td>122</td></tr>
                                            <tr><td class="tl">영어영문학과</td><td>87</td><td>3</td><td>90</td></tr>
                                            <tr><td class="tl">컴퓨터공학과</td><td>163</td><td>27</td><td>190</td></tr>
                                            <tr><td class="tl">경제학과</td><td>460</td><td>32</td><td>546</td></tr>
                                            <tr><td class="tl">총합</td><td>1860</td><td>128</td><td>1988</td></tr>
                                        </tbody>
                                        </table>
                                    </div>
                                    </section>
                                </div>

                                <div class="grid-2">
                                  <!-- 학사안내 공지사항 -->
                                  <section class="panel">
                                  <div class="heading4">
                                      <img src="./images/bullet-h4.png" alt="">
                                      <div>학사안내 공지사항</div>
                                  </div>
                                  <div class="panel-body">
                                      <table class="table">
                                      <thead><tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th></tr></thead>
                                      <tbody>
                                          <tr><td>12</td><td class="tl">2025년도 신입생 추가모집 안내</td><td>담당자</td><td>24.04.09</td></tr>
                                          <tr><td>11</td><td class="tl">2025년도 신입생 추가모집 안내</td><td>담당자</td><td>24.04.09</td></tr>
                                          <tr><td>10</td><td class="tl">2025년도 신입생 추가모집 안내</td><td>담당자</td><td>24.04.09</td></tr>
                                          <tr><td>9</td><td class="tl">2025년도 신입생 추가모집 안내</td><td>담당자</td><td>24.04.09</td></tr>
                                          <tr><td>8</td><td class="tl">2025년도 신입생 추가모집 안내</td><td>담당자</td><td>24.04.09</td></tr>
                                      </tbody>
                                      </table>
                                  </div>
                                  </section>

                                  <!-- 입학상담 -->
                                  <section class="panel">
                                  <div class="heading4">
                                      <img src="./images/bullet-h4.png" alt="">
                                      <div>입학상담</div>
                                  </div>
                                  <div class="panel-body">
                                      <table class="table">
                                        <thead><tr><th>번호</th><th>제목</th><th>작성일</th><th>상태</th></tr></thead>
                                        <tbody>
                                            <tr><td>5</td><td class="tl">[정시] 정시모집 관련해 문의드립니다.</td><td>24.04.09</td><td class="status no">답변대기</td></tr>
                                            <tr><td>4</td><td class="tl">[문의] 2025학년도 신입학 추가모집 모집...</td><td>24.06.24</td><td class="status no">답변완료</td></tr>
                                            <tr><td>3</td><td class="tl">[문의] 2025학년도 신입학 추가모집 모집...</td><td>24.06.24</td><td class="status ok">답변완료</td></tr>
                                            <tr><td>2</td><td class="tl">[문의] 2025학년도 신입학 추가모집 모집...</td><td>24.06.24</td><td class="status ok">답변완료</td></tr>
                                            <tr><td>1</td><td class="tl">[문의] 2025학년도 신입학 추가모집 모집...</td><td>24.06.24</td><td class="status ok">답변완료</td></tr>
                                        </tbody>
                                      </table>
                                  </div>
                                  </section>
                            </div>


                        </div>

                        
                    </div>

                    <div id="include-footer"></div>
                    

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
