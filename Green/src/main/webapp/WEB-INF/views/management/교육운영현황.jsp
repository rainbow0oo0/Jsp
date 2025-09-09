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

        

        

        /* ===== Tables ===== */
        .table {
            position: relative;

            top: -100px;
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

        .search-bar{
            margin-top: 10px;
            height: 35px;
            
            position: relative;
            
            float: right;
            margin-bottom: 30px;
            box-sizing: border-box;
            top: -85px;
            right: 5px;
        }

        .search-bar .search-input {
            height: 35px;
            border: 1px solid #959595;
            box-sizing: border-box;
            position: relative;
            
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
                            <div class="breadcrumb-bar">
                                <div class="breadcrumb-content1">
                                    교육 운영 현황
                                </div>
                                
                                <div class="breadcrumb-content3">
                                    
                                
                                    <a href="#">학사운영</a>
                                    <span class="path-divider"> > </span>
                                    <a href="#">교육 운영 현황</a>
                                </div>
                            </div>
                            <hr style="width: 1090px; border: none; border-top: 3px solid #c0c0c0; margin-left: 15px; margin-top: 0px;">

                            <div class="content" style="padding-top: 100px;">
                                <form action="" class="search-bar" >
                                    <select name="" id="" class="search-input">
                                        <option value="" disabled selected >검색조건</option>
                                        <option value="">옵션1</option>
                                        <option value="">옵션2</option>
                                        <option value="">옵션3</option>
                                    </select>
                                    <input type="text" class="search-input">
                                    <input type="submit" class="search-input" value="검색" style="color: white; top: 1px; width: 60px; background-color: #1A528E;">
                                </form>

                                 

                                <section class="panel">
                                    
                                    <div class="panel-body">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>학과</th>
                                            <th>과목코드</th>
                                            <th>강의명</th>
                                            <th>학년</th>
                                            <th>담당교수</th>
                                            <th>구분</th>
                                            <th>학점</th>
                                            <th>강의장</th>
                                            <th>수강인원</th>
                                            <th>수강률</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>국어국문학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                                <tr>
                                                <td>컴퓨터공학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                            <tr>
                                                <td>전기공학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                            <tr>
                                                <td>전자공학부</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                            <tr>
                                                <td>화학공학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                            <tr>
                                                <td>국어국문학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                                <tr>
                                                <td>컴퓨터공학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                            <tr>
                                                <td>전기공학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                            <tr>
                                                <td>전자공학부</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                            <tr>
                                                <td>화학공학과</td>
                                                <td>120001</td>
                                                <td>고전소설1</td>
                                                <td>2학년</td>
                                                <td>김국어</td>
                                                <td>전공</td>
                                                <td>3</td>
                                                <td>인문관101</td>
                                                
                                                <td>32/46</td>
                                                <td>70%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    </div>
                                </section>


                            </div>


                            <div class="page-list">
                                <div class="pages">
                                    <a href="#"><img src="./images/btn-first-page.png" alt=""></a>
                                    <a href="#" style="margin-right: 15px;"><img src="./images/btn-prev-page.png" alt=""></a>

                                    <a href="#">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>

                                    <a href="#" style="margin-left: 15px;"><img src="./images/btn-next-page.png" alt=""></a>
                                    <a href="#" style="margin-right: 15px;"><img src="./images/btn-last-page.png" alt=""></a>

                                </div>
                            </div>
                    
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
