<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="./header.jsp" %>

<body>
    <div class="topbar">
        <a href="../main.html">HOME</a>
        <a href="../main.html">사이트맵</a>
        <a href="../8회원/회원1-로그인.html">로그인</a>
        <a href="../7학생지원/학생지원1-수강신청.html">학생지원</a>
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
                        <li><a href="../2입학안내/입사안내1-공지사항.html">공지사항</a></li>
                        <li><a href="../2입학안내/입사안내2-수시모집.html">수시모집</a></li>
                        <li><a href="../2입학안내/입사안내3-정시모집.html">정시모집</a></li>
                        <li><a href="../2입학안내/입사안내4-편입학.html">편입학</a></li>
                        <li><a href="../2입학안내/입사안내5-입학상담.html">입학상담</a></li>
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
                        <li><a href="./학사안내1-공지사항.html">공지사항</a></li>
                        <li><a href="./학사안내2-학사일정.html">학사일정</a></li>
                        <li><a href="./학사안내3-수강신청.html">수강신청</a></li>
                        <li><a href="./학사안내4-성적.html">성적</a></li>
                        <li><a href="./학사안내5-수료및졸업.html">수료 및 졸업</a></li>
                        <li><a href="./학사안내6-자주하는질문.html">자주하는질문</a></li>
                    </ul>
                </li>
                <li>대학생활
                    <ul>
                        <li><a href="../5대학생활/대학생활1-학생회소개.html">학생회소개</a></li>
                        <li><a href="../5대학생활/대학생활2-스터디.html">스터디</a></li>
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
                <a href="#">
                    <svg xmlns="./images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <span class="path-divider"> > </span>
            <br>
            <a href="#">학생지원</a>
            <br>
            <span class="path-divider"> > </span>
            <br>
            <a href="#">자주묻는질문</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <aside class="sidebar">
            <h2>학사안내</h2>
            <ul>
                <a href="./학사안내1-공지사항.html"><li>공지사항</li></a>
                <a href="./학사안내2-학사일정.html"><li>학사일정</li></a>
                <a href="./학사안내3-수강신청.html"><li>수강신청</li></a>
                <a href="./학사안내4-성적.html"><li>성적</li></a>
                <a href="./학사안내5-수료 및 졸업.html"><li>수료 및 졸업</li></a>
                <a href="./학사안내6-자주하는질문.html"><li class="highlight">자주하는 질문</li></a>
            </ul>
        </aside>

        <main class="req-content">
            <h2>자주묻는질문</h2>
            <hr class="req-divider"> <br>

            <div class="faq-box">
                <div class="faq-top">
                <a class="faq-a">
                    <img src="images/bullet-h4.png" alt="아이콘" class="icon">
                    <span>휴·복학 관련</span>
                </a> <hr class="req-divider">
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">일반휴학 연장은 몇 학기까지 가능한가요?</span>
                </div>

                <div class="faq-row">
                    <span class="a">A</span>
                    <span class="txt">휴학연장은 1회에 2학기 가능하고 총 6학기 휴학 가능합니다.</span>
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">복학하려고 하는데 어떻게 신청하나요?</span>
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">등록금을 납부해서 등록 후 일반 휴학 가능한가요? 환불은 언제 되나요?</span>
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">군휴학 내려면 입영통지서 외에 어떤 서류가 필요한가요?</span>
                </div>
            </div>        

            <div class="faq-box">
                <div class="faq-top">
                <a class="faq-a">
                    <img src="images/bullet-h4.png" alt="아이콘" class="icon">
                    <span>교과 및 학사 관련</span>
                </a> <hr class="req-divider">
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">학과별 교과과정과 학사안내를 확인하고 싶은데, 어떻게 확인할 수 있나요??</span>
                </div>

                <div class="faq-row">
                    <span class="a">A</span>
                    <span class="txt">홈페이지 내 대학요람(대학생활 안내)를 통해 해당 입학년도, 해당학과의 교과과정과 학사안내를 확인하세요.</span>
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">복수전공 취소 또는 부전공 전환 신청은 어떻게 하나요?</span>
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">수강 신청은 어떻게 하나요?</span>
                </div>
                
            </div>        

            <div class="faq-box">
                <div class="faq-top">
                <a class="faq-a">
                    <img src="images/bullet-h4.png" alt="아이콘" class="icon">
                    <span>수강신청 관련</span>
                </a> <hr class="req-divider">
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">4학년 2학기에도 최소 12학점을 수강해야 하나요?</span>
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">9학기 이상 등록자는 수강신청학점에 따라 등록금이 달라지나요?</span>
                </div>

                <div class="faq-row">
                    <span class="q">Q</span>
                    <span class="txt">수강 신청은 어떻게 하나요?</span>
                </div>

                <div class="faq-row">
                    <span class="a">A</span>
                    <span class="txt">수강신청 안내를 참고하시기 바랍니다.</span>
                </div>     

            </div>         
            </div>
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
