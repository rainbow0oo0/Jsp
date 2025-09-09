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
            <a href="">성적조회</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <aside class="sidebar">
            <h2>학생지원</h2>
            <ul>
                <a href="./학생지원1-수강신청.html"><li>수강신청</li></a>
                <a href="./학생지원2-수강신청내역.html"><li>수강신청내역</li></a>
                <a href="./학생지원3-교과과정 .html"><li>교과과정</li></a>
                <a href="./학생지원4-성적조회.html"><li class="highlight">성적조회</li></a>
                <a href="./학생지원5-학적.html"><li>학적</li></a>
            </ul>
        </aside>
        <main class="content">
           <!-- 성적조회 -->
        <h2 class="page-title">성적조회</h2>
        <div class="cur-section-bar has-icon">
        
        </div>

        <div class="grade-head">
        <div class="filters">
            <label for="grade-year" class="sr-only">년도</label>
            <select id="grade-year" class="sel year">
            <option selected>2025</option>
            <option>2024</option>
            <option>2023</option>
            </select>
            <span class="suffix">년</span>

            <label for="grade-term" class="sr-only">학기</label>
            <select id="grade-term" class="sel term">
            <option selected>1</option>
            <option>2</option>
            </select>
            <span class="suffix">학기</span>
        </div>

        <div class="grade-summary">
            <strong>이수과목수 5과목, 총 취득학점 <span class="emph">15</span>학점</strong>
        </div>
        </div>

        <table class="grade-table">
        <colgroup>
            <col style="width:120px">
            <col> <!-- 과목명 -->
            <col style="width:100px">
            <col style="width:100px">
            <col style="width:90px">
            <col style="width:90px">
            <col style="width:90px">
            <col style="width:100px">
            <col style="width:110px">
        </colgroup>
        <thead>
            <tr>
            <th>교과목코드</th>
            <th>과목명</th>
            <th>대상학년</th>
            <th>담당교수</th>
            <th>이수구분</th>
            <th>점수</th>
            <th>등급</th>
            <th>취득학점</th>
            <th>기타</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <td>830003</td>
            <td class="subject">자바 프로그래밍</td>
            <td>2학년</td>
            <td>김자바</td>
            <td>전공</td>
            <td>99.0</td>
            <td>A+</td>
            <td>3</td>
            <td><button class="btn-detail">상세확인</button></td>
            </tr>
            <tr>
            <td>830003</td>
            <td class="subject">자료구조</td>
            <td>2학년</td>
            <td>김자료</td>
            <td>전공</td>
            <td>86.2</td>
            <td>B</td>
            <td>3</td>
            <td><button class="btn-detail">상세확인</button></td>
            </tr>
            <tr>
            <td>830003</td>
            <td class="subject">대학영어</td>
            <td>2학년</td>
            <td>김영어</td>
            <td>교양</td>
            <td>92.6</td>
            <td>A</td>
            <td>3</td>
            <td><button class="btn-detail">상세확인</button></td>
            </tr>
            <tr>
            <td>830003</td>
            <td class="subject">알고리즘</td>
            <td>2학년</td>
            <td>김자바</td>
            <td>전공</td>
            <td>56.2</td>
            <td>F</td>
            <td>0</td>
            <td><button class="btn-detail">상세확인</button></td>
            </tr>
            <tr>
            <td>830003</td>
            <td class="subject">세계의역사</td>
            <td>2학년</td>
            <td>김역사</td>
            <td>교양</td>
            <td>80.0</td>
            <td>B</td>
            <td>3</td>
            <td><button class="btn-detail">상세확인</button></td>
            </tr>
            <tr>
            <td>830003</td>
            <td class="subject">데이터베이스</td>
            <td>2학년</td>
            <td>김디비</td>
            <td>전공</td>
            <td>88.8</td>
            <td>B+</td>
            <td>3</td>
            <td><button class="btn-detail">상세확인</button></td>
            </tr>
        </tbody>
        </table>

        <p class="grade-note">※ 점수 이의신청은 학생지원실에 문의하시기 바랍니다.</p>

                
                    


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
