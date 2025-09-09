<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="./header.jsp" %>



<body>
    <div class="topbar">
        <a href="../mainpage/main.html">HOME</a>
        <a href="#">사이트맵</a>
        <a href="../8회원/회원1-로그인.html">로그인</a>
        <a href="../7학생지원/학생지원1-수강신청.html ">학생지원</a>
    </div>

    <header>
        <div class="logo">
            <span><img src="./images/header_logo.png" alt="그린대학교 로고"></span>
        </div>
        <nav>
            <ul>
                <li>대학소개
                    <ul>
                        <li><a href="../1대학소개/대학소개1-총장인사말.html">총장 인사말</a></li>
                        <li><a href="../1대학소개/대학소개2-교육이념.html">교육이념</a></li>
                        <li><a href="../1대학소개/대학소개3-연혁.html">연혁</a></li>
                        <li><a href="../1대학소개/대학소개4-조직도.html">조직도</a></li>
                        <li><a href="../1대학소개/대학소개5-오시는길.html">오시는길</a></li>
                    </ul>
                </li>
                <li>입학안내
                    <ul>
                        <li><a href="../2입학안내/입학안내1-공지사항.html">공지사항</a></li>
                        <li><a href="../2입학안내/입학안내2-수시모집.html">수시모집</a></li>
                        <li><a href="../2입학안내/입학안내3-정시모집.html">정시모집</a></li>
                        <li><a href="../2입학안내/입학안내4-편입학.html">편입학</a></li>
                        <li><a href="../2입학안내/입학안내5-입학상담.html">입학상담</a></li>
                    </ul>
                </li>
                <li>대학·대학원
                    <ul>
                        <li><a href="../3대학.대학원/대학대학원1-인문사회대학.html">인문사회대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원2-자연과학대학.html">자연과학대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원3-공과대학.html">공과대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원4-사범대학.html">사범대학</a></li>
                        <li><a href="../3대학.대학원/대학대학원5-대학원.html">대학원</a></li>
                    </ul>
                </li>
                <li>학사안내
                    <ul>
                        <li><a href="../4학사안내/학사안내1-공지사항.html">공지사항</a></li>
                        <li><a href="../4학사안내/학사안내2-학사일정.html">학사일정</a></li>
                        <li><a href="../4학사안내/학사안내3-수강신청.html">수강신청</a></li>
                        <li><a href="../4학사안내/학사안내4-성적.html">성적</a></li>
                        <li><a href="../4학사안내/학사안내5-수료 및 졸업.html">수료 및 졸업</a></li>
                        <li><a href="../4학사안내/학사안내6-자주하는질문.html">자주하는질문</a></li>
                    </ul>
                </li>
                <li>대학생활
                    <ul>
                        <li><a href="../5대학생활/대학생활1-학생회소개.html">학생회소개</a></li>
                        <li><a href="../5대학생활/대학생활2-스터디.html">동아리/스터디</a></li>
                        <li><a href="../5대학생활/대학생활3-식단안내.html">식단안내</a></li>
                        <li><a href="../5대학생활/대학생활4-갤러리.html">갤러리</a></li>
                    </ul>
                </li>
                <li>커뮤니티
                    <ul>
                        <li><a href="../6커뮤니티/커뮤티니1-공지사항.html">공지사항</a></li>
                        <li><a href="../6커뮤니티/커뮤티니2-뉴스 및 칼럼.html">뉴스 및 칼럼</a></li>
                        <li><a href="../6커뮤니티/커뮤티니3-취업정보.html"></a>취업정보</li>
                        <li><a href="../6커뮤니티/커뮤티니4-질문과 답변.html">질문 및 답변</a></li>
                        <li><a href="../6커뮤니티/커뮤티니5-자료실.html">자료실</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <div class="breadcrumb-bar">
        <div class="breadcrumb-content">
            <span class="home-icon">
                <a href="../mainpage/main.html">
                    <svg xmlns="./images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <br><span class="path-divider"> > </span><br>
            <a href="./학생지원1-수강신청.html">학생지원</a><br>
            <span class="path-divider"> > </span><br>
            <a href="">학적</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <aside class="sidebar">
            <h2>대학생활</h2>
            <ul>
                <a href="./학생지원1-수강신청.html"><li>수강신청</li></a>
                <a href="./학생지원2-수강신청내역.html"><li>수강신청내역</li></a>
                <a href="./학생지원3-교과과정 .html"><li>교과과정</li></a>
                <a href="./학생지원4-성적조회.html"><li>성적조회</li></a>
                <a href="./학생지원5-학적.html"><li class="highlight">학적</li></a>
            </ul>
        </aside>
        <main class="content">
            <!-- 학적 -->
        <h2 class="page-title">학적</h2>
        <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 20px 0;">
        <div class="section-bar has-icon">
        <img src="./images/mascot.png" alt="">
        </div>

        <section class="student-record">

        <!-- 기본정보 -->
        <h3 class="subsec-title">기본정보</h3>
        <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 0 0;">
        <div class="basic-info">
            <div class="avatar">
            <!-- 실제 사진이 있으면 src로 교체 -->
            <img src="./images/icon-avatar.png" alt="프로필 사진">
            </div>

            <table class="kv-table">
            <colgroup>
                <col style="width:140px"><col>
                <col style="width:140px"><col>
            </colgroup>
            <tbody>
                <tr>
                <th scope="row" class="label">학번</th>
                <td>202001230</td>
                <th scope="row" class="label">학과</th>
                <td>컴퓨터공학과</td>
                </tr>
                <tr>
                <th scope="row" class="label">이름</th>
                <td>홍길동</td>
                <th scope="row" class="label">주민번호</th>
                <td>900103-1234567</td>
                </tr>
                <tr>
                <th scope="row" class="label">휴대폰</th>
                <td>010-1234-1001</td>
                <th scope="row" class="label">EMAIL</th>
                <td>hong1001@naver.com</td>
                </tr>
                <tr>
                <th scope="row" class="label">학년/학기</th>
                <td>3학년 / 1학기</td>
                <th scope="row" class="label">상태</th>
                <td><span class="status-ok">재학중</span></td>
                </tr>
            </tbody>
            </table>
        </div>

        <!-- 취득학점현황 -->
        <h3 class="subsec-title" style="margin-top:22px;">취득학점현황</h3>
        <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 0 0;">
        <table class="stat-table">
            <colgroup>
            <col style="width:120px"><col><col><col><col><col><col><col>
            </colgroup>
            <thead>
            <tr>
                <th>구분</th>
                <th>전공(7)</th>
                <th>교양(6)</th>
                <th>선택(1)</th>
                <th>사회봉사</th>
                <th>기타</th>
                <th>총취득학점</th>
                <th>졸업요건학점</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th class="row-title">취득학점</th>
                <td>21</td>
                <td>16</td>
                <td>3</td>
                <td>0</td>
                <td>0</td>
                <td>40</td>
                <td>130</td>
            </tr>
            </tbody>
        </table>
        <p class="small-note">- 각 괄호안의 숫자는 이수 과목수</p>

        <!-- 년도/학기별 취득학점현황 -->
        <h3 class="subsec-title" style="margin-top:18px;">년도/학기별 취득학점현황</h3>
        <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 20px 0;">
        <table class="year-table">
            <colgroup>
            <col style="width:90px"><col style="width:80px"><col style="width:80px">
            <col style="width:110px"><col style="width:110px"><col style="width:110px">
            <col style="width:110px"><col style="width:120px"><col style="width:110px">
            <col>
            </colgroup>
            <thead>
            <tr>
                <th>년도</th>
                <th>학년</th>
                <th>학기</th>
                <th>신청학점</th>
                <th>전공학점</th>
                <th>선택학점</th>
                <th>기타학점</th>
                <th>총취득학점</th>
                <th>평점평균</th>
                <th>기타</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>2020</td><td>1</td><td>1</td><td>18</td><td>15</td><td>3</td><td>0</td><td>18</td><td>3.2</td><td></td>
            </tr>
            <tr>
                <td>2020</td><td>1</td><td>2</td><td>18</td><td>15</td><td>3</td><td>0</td><td>18</td><td>3.2</td><td></td>
            </tr>
            <tr>
                <td>2021</td><td>2</td><td>1</td><td>18</td><td>18</td><td>0</td><td>0</td><td>18</td><td>4.2</td><td></td>
            </tr>
            <tr>
                <td>2021</td><td>2</td><td>2</td><td>18</td><td>18</td><td>0</td><td>0</td><td>18</td><td>4.2</td><td></td>
            </tr>
            </tbody>
        </table>

        </section>

                




        </main>
    </div>

    <footer>
        <div class="footer-top">
            <ul>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">통합정보시스템</a></li>
                <li><a href="#">학사일정</a></li>
                <li><a href="#">주요업무 연락</a></li>
                <li><a href="#">교내공지사항</a></li>
            </ul>
        </div>
        <div class="footer-mid">
            <div class="footer-info">
                <div class="logo">
                    <img src="./images/footer_logo.png" alt="그린대학교 로고">
                </div>
                <div class="address-info">
                    <span>그린대학교</span>
                    <span>[12345]부산광역시 부산진구 부전대로 123 그린대학교 / 대표전화 : 051-123-1000</span>
                    <span>입학안내 : 051-123-1302 팩스 : 051-123-3333</span>
                </div>
            </div>
            <div class="family-site-wrap">
                <div class="family-site-btn">
                    주요사이트
                    <div class="arrow"></div>
                </div>
                <ul class="family-site-list">
                    <li><a href="#">그린대학교</a></li>
                    <li><a href="#">컴퓨터과학과</a></li>
                    <li><a href="#">학생지원센터</a></li>
                </ul>
            </div>
        </div>
        <p class="copyright">copyright © Green University All rights reserved.</p>
    </footer>
</body>
</html>