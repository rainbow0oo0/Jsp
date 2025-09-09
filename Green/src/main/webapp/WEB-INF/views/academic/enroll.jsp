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
            <p></p>
            <a href="./학사안내1-공지사항.html">학사안내</a>
            <p></p>
            <span class="path-divider"> > </span>
            <p></p>
            <a href="">수강신청</a>
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
                <a href="./학사안내3-수강신청.html"><li class="highlight">수강신청</li></a>
                <a href="./학사안내4-성적.html"><li>성적</li></a>
                <a href="./학사안내5-수료 및 졸업.html"><li>수료 및 졸업</li></a>
                <a href="./학사안내6-자주하는질문.html"><li>자주하는 질문</li></a>
            </ul>
        </aside>
        <main class="content">
            <h2>수강신청</h2>
            <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 20px 0;">
            <p>
                <br>
                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>수강신청기간</div>
                </div>

                <div class="gray-script">
                    <div>- 매학기 수강신청은 개강 전에 실시, 학생은 수강신청 공고를 충분히 숙지한 다음, 수강신청 기간에 인터넷을 통해 신청과목을 입력</div>
                    <div>- 필요한 경우 학과사무실의 학사상담이나 지도교수의 지도를 받을 수 있으며, 반드시 학년별 지정된 날짜에 수강신청 완료</div>
                    <div>- 자세한 설명은 학사일정 공지사항 게시판 참조</div>
                </div>
                <br>
                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>수강신청 학점</div>
                </div>

                <div class="gray-script">
                    <div>- 학기당 이수학점 : 18학점 이내(논문과목 별도) [대학 학칙  제20조]</div>
                </div>

                <br>
                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>학부(과)별 신청 학점</div>
                </div>
                <table class="department-table" style="left: 0px;">
                    <tr>
                        <th colspan="2">수강신청 학점수</th>
                        <th>대상학부(과)</th>
                    </tr>

                    <tr>
                        <td>졸업학점이 130학점인 학부(과)</td>
                        <td>최저 12학점, 최대 18학점</td>
                        <td>인문대학, 사회과학대학, 경영대학, 공과대학,
                            자연과학대학, 간호대학, 글로벌융합대학, 소
                            프트웨어융합대학, 미디어스쿨, 데이터과학융
                            합스쿨, 나노융합스쿨, 미래융합스쿨
                        </td>
                    </tr>
                    <tr>
                        <td>졸업학점이 135-140학점인 학부(과)</td>
                        <td>최저 15학점, 최대 21학점</td>
                        <td>의과대학 의예과(수료학점은 72이상)</td>
                    </tr>

                    <tr>
                        <td>졸업학점이 150학점인 학부(과)</td>
                        <td>최저 15학점, 최대 26학점</td>
                        <td></td>
                    </tr>

                </table>
                <br>
                
                <div class="gray-script">
                    <div>- 4학년 1학기에는 12학점 이상, 최종학기에는 1과목 이상 수강신청 하여야 한다.</div>
                    <div>- 직전학기 성적이 3.75 이상인 학생은 최대학점에서 3학점까지 초과 이수할 수 있다.</div>
                    <div>- 장학생 선발은 직전학기에 평점평균 2.0 이상을 취득하여야 하며, 대학별 기준학점 이상을 이수하여야 한다.(학생지원팀 055-123-1010 문의)</div>
                </div>
                <br>

                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>수강신청 변경 및 수강과목 철회</div>
                </div>

                <div class="gray-script">
                    <div>- 수강 신청한 과목을 철회하고자 할 때에는 수업주수 4분의 1이전까지 정해진 기간에 해당 교과목을 해당 사이트를 통하여 철회할 수 있음</div>
                    <div>- 학기당 2과목까지 철회할 수 있으나, 철회로 수강인원이 폐강기준인원 미만이 되는 교과목은 수강철회를 불허</div>
                    <div>- 철회 후 수강신청학점이 학기 당 최저 이수학점 이상이 되어야 함</div>
                </div>

                <br>
                <button class="신청버튼">
                    수강신청하기 
                    <img src="./images/bg-link.png" style="margin-left: 5px; position: relative; top: 1px;">
                </button>

            </p>
        </main>
    </div>

    <footer>
        <div class="footer-top">
            <ul>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">통합정보시스템</a></li>
                <li><a href="./학사안내2-학사일정.html ">학사일정</a></li>
                <li><a href="#">주요업무 연락</a></li>
                <li><a href="./학사안내1-공지사항.html">교내공지사항</a></li>
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
                    <li><a href="../mainpage/main.html">그린대학교</a></li>
                    <li><a href="#">컴퓨터과학과</a></li>
                    <li><a href="#">학생지원센터</a></li>
                </ul>
            </div>
        </div>
        <p class="copyright">copyright © Green University All rights reserved.</p>
    </footer>
</body>
</html>
