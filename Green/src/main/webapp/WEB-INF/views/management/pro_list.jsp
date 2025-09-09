<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>학사관리시스템 메인</title>
  <link rel="stylesheet" href="/greendae/resource/css/학사관리main.css">
  <style>
        

        .page {
        width: 1100px; /* 또는 width: 1100px; */
        margin: 0 auto;
        background: #fff;
        /*margin-left: -300px;*/
        }

        html, body{ 
            overflow-x: hidden;
        }

        .page .page-head {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 24px 18px 10px 18px;
        }

        .page .title {
        font-size: 20px;
        font-weight: 700;
        color: rgba(51, 51, 51, 1)
        
        }

        .page .breadcrumb {

        font-size: 12px;

        color: rgba(51, 51, 51, 1);
        }

        .page .breadcrumb a {
        color: rgba(51, 51, 51, 1);
        text-decoration: none;
        }

        .page .breadcrumb .current {
        color: #145074 !important;
        font-weight: 350 !important;
        }




       

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
        border: 1px solid rgba(26, 82, 142, 1);
        background: rgba(26, 82, 142, 1);
        color: #fff;
        cursor: pointer;
        border-radius: 0px;
        font-weight: 350; 
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
        margin: 0 18px 18px;
        background: #fff;
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


        .table th,
        .table td {
        border-bottom: 1px solid #ddd;      /* 모든 셀에 선 */
        padding: 15px;
        text-align: center;
        font-size: 13px;
       
        }

        .table th {
        background: #f7f7f8;
        font-weight: 600;
        color: #444;
        }
        .table thead th {
        border-top: 2px solid rgba(135, 152, 163, 1);   /* 윗줄 진하게 */
        border-bottom: 2px solid rgba(135, 152, 163, 1); /* 아랫줄 진하게 */
        }

        .table th:last-child,
        .table td:last-child {
        border-right: none;          /* 마지막 열은 오른쪽 선 제거 */
        }


        /* 상태 공통 */
        .table td.status {
        font-weight: 350;
        }

        /* 상태별 색상 */
        .table td.employed { color: rgba(0, 128, 0, 1) }
        .table td.leave    { color: rgba(255, 165, 0, 1) }
        .table td.retired  { color: rgba(255, 0, 0, 1) }

        .searchbar {
        display: flex;
        justify-content: flex-end;
        gap: 10px;
        padding: 10px 18px 12px;
        margin-top: 5px;   /* 위쪽 간격 추가 */
        }

    
        .searchbar select,
        .searchbar input {
        appearance: none;
        height: 36px;
        border: 1px solid #ccc;   /* 테두리 색 */
        padding: 0 10px;
        background: #fff;
        outline: none;            /* 포커스 시 기본 파란 라인 제거 */
        width: 150px;
        }

        .searchbar .btn:hover {
        background: #145074;
        border-color: #145074;
        }
        
        .pagination {
        display: flex;
        justify-content: center;  /* 버튼들을 가운데 정렬 */
        align-items: center;
        gap: 4px;                 /* 버튼 간격 */
        flex: 1;                  /* 남는 공간을 차지하게 해서 중앙 배치 */
        }


        .pagination-wrap {
        display: flex;
        justify-content: space-between; /* 좌: 페이지네이션 / 우: 등록 */
        align-items: center;
        margin: 20px 18px;
        }

        .pagination button {
        width: 32px;
        height: 32px;
        margin: 0 2px;
        border: 1px solid #ccc;
        background: #fff;
        cursor: pointer;
        font-size: 14px;
        color: #333;
        }

        .pagination button.active {
        background: #145074;
        color: #fff;
        border-color: #145074;
        font-weight: 350;
        }

        .pagination button img {
        width: 14px;
        height: 14px;
        }

         /* 왼쪽 화살표 그룹( << < ) 오른쪽에 여백 */
        .pagination button:nth-child(2) {
        margin-right: 12px;  /* 숫자 버튼과 간격 */
        }

        /* 오른쪽 화살표 그룹( > >> ) 왼쪽에 여백 */
        .pagination button:nth-last-child(2) {
        margin-left: 12px;   /* 숫자 버튼과 간격 */
        }

        .register-btn {
        min-width: 120px;
        padding: 0 20px;
        height: 36px;
        border: 1px solid rgba(8, 48, 90 , 1);
        background: rgba(26, 82, 142, 1);
        color: #fff;
        font-weight: 350;
        cursor: pointer;
        border-radius: 0;
        
        }
        .register-btn:hover {
        background: rgba(26, 82, 142, 1);
        border-color: rgba(8, 48, 90 , 1);
        }


  </style>

</head>
<body>

    <div class="site">

        <div class="header">

            <div class="header-bg">

                <a href="./학사관리main.html" class="link-admin-logo">

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
                        <div class="page-head">
                            <div class="title">교수 목록</div>
                            <div class="breadcrumb">

                                <a href="#">인사관리</a> 
                                <img src="./images/bg-link-arr-over.png" alt=""> 
                                <span class="current" style="color:rgba(20, 80, 116, 1) font-weight 350px;">교수목록</span>


                            </div>
                        </div>
                        <hr style="border: none; border-top: 3px solid #c0c0c0; margin: 5px 6px 0px ;">
                        <div class="searchbar">
                            <select>
                                <option value="label-box">검색조건</option>


                              
                            </select>
                            <input type="text" placeholder="키워드 입력">
                            <button class="btn">검색</button>
                        </div>

                        <!-- 대학 운영 현황 -->
                        <section class="panel">                            
                            <div class="panel-body">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>교수번호</th><th>이름</th><th>주민번호</th><th>휴대폰</th>
                                    <th>이메일</th><th>학과</th><th>직위</th><th>재직여부</th><th>임용일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status employed">재직중</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status leave">휴직</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status retired">퇴직</td><td>2025-01-01</td>
                                </tr>
                                  <tr>
                                    <td>202001230</td><td>홍길동</td><td>900103-1234567</td><td>010-1234-1001</td>
                                    <td>hong1001@naver.com</td><td>컴퓨터공학과</td><td>정교수</td><td class="status retired">퇴직</td><td>2025-01-01</td>
                                </tr>
                                
                                </tbody>
                            </table>
                            </div>
                        </section>

                        <div class="pagination-wrap">
                        <!-- 페이지네이션 -->
                        <div class="pagination">
                            <button><img src="./images/btn-first-page.png" alt="첫 페이지"></button>
                            <button><img src="./images/btn-prev-page.png" alt="이전 페이지"></button>
                            <button class="active">1</button>
                            <button>2</button>
                            <button>3</button>
                            <button><img src="./images/btn-next-page.png" alt="다음 페이지"></button>
                            <button><img src="./images/btn-last-page.png" alt="마지막 페이지"></button>
                        </div>

                        <!-- 등록 버튼 -->

                        <a href="./교수등록.html"><button class="btn register-btn">등록</button></a>

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
