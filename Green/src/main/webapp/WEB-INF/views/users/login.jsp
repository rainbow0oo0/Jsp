<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="./header.jsp" %>



<body>
    <div class="topbar">

        <a href="/Green/">HOME</a>
        <a href="../main.html">사이트맵</a>
        <a href="/Green/login.do">로그인</a>
        <a href="../7학생지원/학생지원1-수강신청.html">학생지원</a>
    </div>

    <header>
        <div class="logo">
            <span><img src="/Green/resource/images/header_logo.png" alt="그린대학교 로고"></span>
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
                        <li><a href="../4학사안내/학사안내5-수료및졸업.html">수료 및 졸업</a></li>
                        <li><a href="../4학사안내/학사안내6-자주하는질문.html">자주하는질문</a></li>
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
                        <li><a href="../6커뮤니티/커뮤니티1-공지사항.html">공지사항</a></li>
                        <li><a href="../6커뮤니티/커뮤니티2-뉴스 및 칼럼.html">뉴스 및 칼럼</a></li>
                        <li><a href="../6커뮤니티/커뮤니티3-취업정보.html"></a>취업정보</li>
                        <li><a href="../6커뮤니티/커뮤니티4-자유게시판.html">자유게시판</a></li>
                        <li><a href="../6커뮤니티/커뮤니티5-질문과 답변.html">질문과 답변</a></li>
                        <li><a href="../6커뮤니티/커뮤니티6-자료실.html">자료실</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <div class="breadcrumb-bar">
        <div class="breadcrumb-content">
            <span class="home-icon">
                <a href="/Green/">
                    <svg xmlns="/Green/resource/images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <span class="path-divider"> > </span>
            <a href="#">회원</a>
            <span class="path-divider"> > </span>
            <a href="#">로그인</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <div class="container">
        <div style="width: 495px; height: 600px; margin: auto; margin-top: 50px;">
            <div class="blue" style="font-weight: bold; font-size: 20px;">LOGIN</div>
            <div class="blue" style="font-size: 15px; margin-top: 5px;">
                로그인을 하시면 더 많은 서비스를 받으실 수 있습니다.
            </div>
            <br>
            
            <form action="/Green/login.do" method="post" class="login-form">
    
			    <div class="check-box">
			        <input type="radio" name="login_type" id="student" value="student" checked>
			        <label for="student">학부생</label>
			    </div>
			    <div class="check-box">
			        <input type="radio" name="login_type" id="staff" value="staff">
			        <label for="staff">교직원</label>
			    </div>
			    <div class="check-box">
			        <input type="radio" name="login_type" id="general" value="general">
			        <label for="general">일반인</label>
			    </div>
			    
			
			    <a href="#"><div style="color: black; float: right;">아이디/비밀번호 찾기</div></a>
			
			
			    <input type="text" name="id" placeholder="아이디" required>
			    <input type="password" name="pw" placeholder="비밀번호" required>
			    
			    <input type="submit" value="로그인" style="background-color: #3f97f6; color: white; cursor: pointer;">
			
			</form>

            <a href="/Green/users/register.do"><div style="color: black; float: right;">회원가입</div></a>  <!--  -->
            <br>
            <div class="heading4">
                <img src="/Green/resource/images/bullet-h4.png" alt="">
                <div>아이디, 비밀번호 안내</div>
            </div>

            <div class="gray-script" style="width: 800px;">
                <div>- 대학 구성원(학원, 교직원)은 회원가입없이 교번, 학번을 사용하여 로그인이 가능합니다.</div>
                <div>- 비밀번호 분실시 학생지원팀에 방문하셔서 초기화하실 수 있습니다.</div>
                <div>- 재학, 휴학, 졸업 유예인 경우 사용하실 수 있으며, 매년 학적변동이 일어날 때 상태가 변경됩니다.</div>
                <div>- 문의사항이 있으시면 담당자(055-123-4567)에게 전화주세요</div>
            </div>

        </div>
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
                    <img src="/Green/resource/images/footer_logo.png" alt="그린대학교 로고">
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
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const checkboxes = document.querySelectorAll('.login-form .check-box input[type="checkbox"]');

            checkboxes.forEach(checkbox => {
                checkbox.addEventListener('change', function() {
                    if (this.checked) {
                        checkboxes.forEach(otherCheckbox => {
                            if (otherCheckbox !== this) {
                                otherCheckbox.checked = false;
                            }
                        });
                    }
                });
            });
        });
    </script>
</body>
</html>

