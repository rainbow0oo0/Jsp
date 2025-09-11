<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="./header.jsp" %>





<body>
    <div class="topbar">

        <a href="/Green/">HOME</a>
        <a href="../main.html">사이트맵</a>

        <a href="/Green/login.do">로그인</a>
        <a href="../students/enroll.jsp">학생지원</a>
    </div>

    <header>
        <div class="logo">
            <span><img src="/Green/resource/images/header_logo.png" alt="그린대학교 로고"></span>
        </div>
        <nav>
            <ul>
                <li>대학소개
                    <ul>
                    <li><a href="../inrtoduce/greetings.jsp">총장 인사말</a></li>
                    <li><a href="../inrtoduce/ideology.jsp">교육이념</a></li>
                    <li><a href="../inrtoduce/history.jsp">연혁</a></li>
                    <li><a href="../inrtoduce/organization.jsp">조직도</a></li>
                    <li><a href="../inrtoduce/direction.jsp">오시는길</a></li>
                    </ul>
                </li>
                <li>입학안내
                    <ul>
                        <li><a href="../admiss_info/notice.jsp">공지사항</a></li>
                        <li><a href="../admiss_info/early_admiss.jsp">수시모집</a></li>
                        <li><a href="../admiss_info/regulat_admiss.jsp">정시모집</a></li>
                        <li><a href="../admiss_info/transfer.jsp">편입학</a></li>
                        <li><a href="../admiss_info/counsel.jsp">입학상담</a></li>
                    </ul>
                </li>
                <li>대학·대학원
                    <ul>
                        <li><a href="../departments/humanities.jsp">인문사회대학</a></li>
                        <li><a href="../departments/natual_sci.jsp">자연과학대학</a></li>
                        <li><a href="../departments/engineering.jsp">공과대학</a></li>
                        <li><a href="../departments/education.jsp">사범대학</a></li>
                        <li><a href="../departments/grad_sch.jsp">대학원</a></li>
                    </ul>
                </li>
                <li>학사안내
                    <ul>
                        <li><a href="../academic/notice.jsp">공지사항</a></li>
                        <li><a href="../academic/schedule.jsp">학사일정</a></li>
                        <li><a href="../academic/enroll.jsp">수강신청</a></li>
                        <li><a href="../academic/grade.jsp">성적</a></li>
                        <li><a href="../academic/graduate.jsp">수료 및 졸업</a></li>
                        <li><a href="../academic/questions.jsp">자주하는질문</a></li>
                    </ul>
                </li>
                <li>대학생활
                    <ul>
                        <li><a href="../campus/union_intro.jsp">학생회소개</a></li>
                        <li><a href="../campus/study.jsp">스터디</a></li>
                        <li><a href="../campus/menu.jsp">식단안내</a></li>
                        <li><a href="../campus/gallery.jsp">갤러리</a></li>
                    </ul>
                </li>
                <li>커뮤니티
                    <ul>
                        <li><a href="../community/notice.jsp">공지사항</a></li>
                        <li><a href="../community/news.jsp">뉴스 및 칼럼</a></li>
                        <li><a href="../community/employment.jsp">취업정보</a></li>
                        <li><a href="../community/board.jsp">자유게시판</a></li>
                        <li><a href="../community/q_a.jsp">질문과 답변</a></li>
                        <li><a href="../community/references.jsp">자료실</a></li>
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
            <a href="#">회원가입</a>
        </div>
    </div>

    <!-- ===========================
         본문 (대학생활 사이드바 + 콘텐츠)
    ============================ -->
    <main>
        <div>            
            <div class="info">

			</div>
        </div>
        <div>
            <div class="content-wrapper">
                <div class="register">
                    <div class="topInfo">
                        <span>
                            <h4>회원가입</h4>
                            <p>반갑습니다 그린대학교 입니다. 회원가입 후 더 많은 정보를 이용하세요.</p>
                            <p>대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다.</p>
                        </span>
                    </div>
                    <div class="registerForm">
                   
                        <form action="/Green/users/register.do" id="registerForm" method="post">
                            <table class="registerTable">
                                <tr>
                                    <th>아이디<i>*</i></th>
                                    <td><input type="text" name="user_id" required placeholder="아이디 입력"><span>영문·숫자 조합 4~10자 이내</span>
                                                                     
                                    <span class="user_idResult"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>비밀번호<i>*</i></th>
                                    <td><input type="password" name="user_pass1" required placeholder="비밀번호 입력"><span>비밀번호는 8-16자리 이내, 영문 · 숫자 · 특수문자 조합</span>
                                    <span class="user_passResult"></span>
                                    </td>
                                	
                                </tr>
                                <tr>
                                    <th>비밀번호 확인<i>*</i></th>
                                    <td><input type="password" name="user_pass2" required placeholder="비밀번호 확인 입력"></td>
                                </tr>
                                <tr>
                                    <th>이름<i>*</i></th>
                                    <td><input type="text" name="user_name" required placeholder="이름 입력">
                                    	<span class="user_name"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>휴대폰<i>*</i></th>
                                    <td><input type="tel" name="user_hp" required placeholder="휴대폰 입력">
                                    	<span class="user_hpResult"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>이메일<i>*</i></th>
                                    <td><input type="email" name="user_email" required placeholder="이메일 입력">
                                    	<button type="button" id="btnCheckuser_email">이메일 인증</button>
                                    	<span class="user_emailResult"></span>
                                    	<div class="auth">
			                            <input type="text" name="auth" placeholder="인증번호 입력"/>
			                            <button type="button" id="btnuser_emailCode">코드 확인</button>
			                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td>
                                        <input type="text" id="postal_code" name="postal_code" placeholder="우편번호" readonly>
                                        <button type="button" onclick="postcode()">주소검색</button>
                                           <br>                                           
                                           <input type="text" id="basic_addr" name="basic_addr" placeholder="기본주소" readonly>
                                           <br>
                                           <input type="text" id="detail_addr" name="detail_addr" placeholder="상세주소">
                                    </td>
                                </tr>
                            </table>
                            <span class="notice">
                                <i>*</i>&nbsp;&nbsp;필수입력
                            </span>
                            <div class="selectBox">
                                <a href="/Green/login.do"><button type="button" id="cancel">취소</button></a>
                                <button type="submit" id="signUp">회원가입</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

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
</body>
</html>

