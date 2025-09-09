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
                        <li><a href="./학사안내5-수료 및 졸업.html">수료 및 졸업</a></li>
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
            <a href="#">학사안내</a>
            <br>
            <span class="path-divider"> > </span>
            <br>
            <a href="#">성적</a>
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
                <a href="./학사안내4-성적.html"><li class="highlight">성적</li></a>
                <a href="./학사안내5-수료 및 졸업.html"><li>수료 및 졸업</li></a>
                <a href="./학사안내6-자주하는질문.html"><li>자주하는 질문</li></a>
            </ul>
        </aside>
        <main class="content">
            <h2>성적</h2>
            <hr style="border: none; border-top: 3px solid #000; margin: 5px 0 20px 0;">
            <p>
                <br>
                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>시험</div>
                </div>
                
                <div class="bold-blue">- 시험은 정기시험, 비정기시험, 추가시험, 재시험 등으로 구분</div>
                <div class="gray-script">
                    <div>1) 정기시험 : 중간시험과 학기말시험으로 나누며 중간시험은 학기 당 수업일수 2분의 1이 되는 주에 실시하고, 학기말시험은 학기의 최종 주에 실시</div>
                    <div>2) 비정기시험 : 과제학습, 세미나 등 계속적인 학습활동을 평가하는 시험으로 담당교수의 책임 하에 실시</div>
                    <div>3) 추가시험 : 질병 또는 부득이한 사정으로 정기시험에 응시할 수 없는 학생은 사유와 증빙서류를 첨부하여 추가시험신청서를 제출</div>
                </div>

                <div class="bold-blue">- 시험 부정행위자의 처리</div>
                <div class="gray-script">
                    <div>1) 시험 중 부정행위가 적발되면 감독교수는 그 행위내용을 시험지 상단에 기록하고 날인한 후 즉시 총장에게 보고</div>
                    <div>2) 시험 부정행위자에 대하여는 다음의 내용에 따라 제적 또는 유기정학 처분</div>
                    <div> └ 시험에 대리로 응시하거나 대리응시를 부탁한 경우</div>
                    <div> └ 시험지에 다른 사람의 이름을 쓰거나 쓰게 한 경우</div>
                    <div> └ 부정행위자로 적발되어 징계처분을 받은 사실이 있는 학생이 거듭 부정행위를 한 경우</div>
                </div>
                <br>

                <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>성적</div>
                </div>

                <div class="bold-blue">- 평가내용</div>
                <div class="gray-script">
                    <div>1) 성적평가는 각 교과목의 시험성적, 과제평가, 출석상황 및 학습태도 등을 종합하여 평가</div>
                    <div>2) 출석 및 학습태도 10-20%, 정기시험 50-70%, 비정기시험 및 과제 20-30%로 함을 원칙</div>
                    
                </div>

                <div class="bold-blue">- 등급</div>
                <table class="department-table">
                    <br>
                    <tr>
                        <th>등급</th>
                        <th>평점</th>
                        <th>백분위 기준점수</th>
                        <th>비고</th>
                    </tr>
                    <tr>
                        <td>A+</td>
                        <td>4.5</td>
                        <td>99</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>A</td>
                        <td>4</td>
                        <td>94</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>B+</td>
                        <td>3.5</td>
                        <td>89</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>B</td>
                        <td>3</td>
                        <td>84</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>C+</td>
                        <td>2.5</td>
                        <td>79</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>C</td>
                        <td>2</td>
                        <td>74</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>D+</td>
                        <td>1.5</td>
                        <td>69</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>D</td>
                        <td>1</td>
                        <td>64</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>F</td>
                        <td>0</td>
                        <td>59</td>
                        <td></td>
                    </tr>
                </table>

                <div class="gray-script">
                    <br>
                    <div>※ 이수한 교과목의 성적이 D0급 이상 또는 P일 경우는 학점을 취득한 것으로 인정</div>
                </div>
                <br><br><br>
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

