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
            <a href="./학사안내1-공지사항.html">학사안내</a>
            <br>
            <span class="path-divider"> > </span>
            <br>
            <a href="#">수료 및 졸업</a>
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
                <a href="./학사안내5-수료 및 졸업.html"><li class="highlight">수료 및 졸업</li></a>
                <a href="./학사안내6-자주하는질문.html"><li>자주하는 질문</li></a>
            </ul>
        </aside>
        <main class="content">
            <h2>수료 및 졸업</h2>
            <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 20px 0;">
            <p>
                <br>
                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>수료기준</div>
                </div>

                <table class="department-table" >
                    <tr>
                        <th rowspan="2" style="width: 276px;">구분</th>
                        <th rowspan="2" style="width: 91px">총 취득학점</th>
                        <th colspan="4">수료학점</th>
                        
                    </tr>
                    <tr>
                        <th style="border-top: 1px solid gray; width: 137px;">1학년</th>
                        <th style="border-top: 1px solid gray; width: 137px;">2학년</th>
                        <th style="border-top: 1px solid gray; width: 137px;">3학년</th>
                        <th style="border-top: 1px solid gray; width: 137px;">4학년</th>
                    </tr>
                    <tr>
                        <td>인문사회대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>66</td>
                        <td>99</td>
                        <td>130</td>
                    </tr>
                    <tr>
                        <td>자연과학대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>66</td>
                        <td>99</td>
                        <td>130</td>
                    </tr>
                    <tr>
                        <td>공과대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>66</td>
                        <td>99</td>
                        <td>130</td>
                    </tr>
                    <tr>
                        <td>사범대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>66</td>
                        <td>99</td>
                        <td>130</td>
                    </tr>
                    
                </table>

                <div class="gray-script">
                    <div>- 수료기준 : 졸업학점에 따라 학년별 수료학점이 다르며, 각 학년별 수료학점을 취득한 경우 해당 학년에 대한 ‘수료증명서’를 발급 가능</div>
                </div>
                <br>
                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>조기졸업</div>
                </div>

                <table class="department-table" style="left: 0px;">
                    <tr>
                        <th colspan="3" style="width: 648px;">자격</th>
                        <th rowspan="2" style="width: 276px">신청절차</th>
                        
                    </tr>
                    <tr>
                        <th style="border-top: 1px solid gray; width: 276px;">이수학기</th>
                        <th style="border-top: 1px solid gray; width: 184px; ">평점평균</th>
                        <th style="border-top: 1px solid gray; width: 184px;">취득학점</th>
                        
                    </tr>
                    <tr>
                        <td style=" padding: 15px;">6학기 또는 7학기 이수자로서 해당학기
                            이수로 모든 졸업요건의 충족이 가능한 자.
                        </td>
                        <td>4.00 이상</td>
                        <td>정규졸업 요구학점과 동일</td>
                        <td>졸업을 원하는 학기초 30일 이내에 “조기
                            졸업신청서”를 교무팀에 제출
                        </td>

                    </tr>

                </table>

                <div class="gray-script">
                    <div>※ 편입생 제외</div>
                </div>
                <br>


                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>졸업</div>
                </div>

                <table class="department-table" style="left: 0px;">
                    <tr>
                        <th rowspan="2" style="width: 276px;">소속 단과대학</th>
                        <th rowspan="2" style="width: 137px;">총 취득학점</th>
                        <th colspan="3" style="width: 507px;">전공 이수 학점</th>
                    </tr>
                    <tr>
                        <th style="border-top: 1px solid gray; width: 137px;">복수전공(제1전공 기준동일)</th>
                        <th style="border-top: 1px solid gray; width: 137px;">단일전공</th>
                        <th style="border-top: 1px solid gray; width: 229px;">부전공</th>
                        
                    </tr>
                    <tr>
                        <td>인문사회대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>60</td>
                        <td>제1전공42 / 부전공21</td>
                    </tr>

                    <tr>
                        <td>자연과학대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>60</td>
                        <td>제1전공42 / 부전공21</td>
                    </tr>
                    <tr>
                        <td>공과대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>60</td>
                        <td>제1전공42 / 부전공21</td>
                    </tr>
                    <tr>
                        <td>사범대학</td>
                        <td>130이상</td>
                        <td>33</td>
                        <td>60</td>
                        <td>제1전공42 / 부전공21</td>
                    </tr>

                </table>

                <div class="gray-script">
                    <div>- 등록학기 : 8학기 이상, 의과대학 의학과는 12학기 이상</div>
                    <div>- 총 성적평점평균 : 2.00 이상</div>
                    <div>- 졸업논문(또는 졸업종합시험) : 합격</div>
                </div>
                <br>


            </p>
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

