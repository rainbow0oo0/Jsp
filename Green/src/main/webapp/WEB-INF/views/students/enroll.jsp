<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수강신청</title>    
    
    <link rel="stylesheet" href="/Green/resource/css/학생지원_공통.css">

</head>
<body>	

    <!-- ===== 상단 공통 영역 ===== -->
    <div class="topbar">
        <a href="../mainpage/main.html">HOME</a>
        <a href="#">사이트맵</a>
        <a href="../8회원/회원1-로그인.html">로그인</a>
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
	                    <li><a href="/Green/introduce/greetings.do">총장 인사말</a></li>
	                    <li><a href="/Green/introduce/ideology.do">교육이념</a></li>
	                    <li><a href="/Green/introduce/history.do">연혁</a></li>
	                    <li><a href="/Green/introduce/organization.do">조직도</a></li>
	                    <li><a href="/Green/introduce/direction.do">오시는길</a></li>
                    </ul>
                </li>
                <li>입학안내
                    <ul>
                        <li><a href="/Green/notice/list.do?wdist=2">공지사항</a></li>
                        <li><a href="/Green/admiss/early.do">수시모집</a></li>
                        <li><a href="/Green/admiss/regular.do">정시모집</a></li>
                        <li><a href="/Green/admiss/transfer.do">편입학</a></li>
                        <li><a href="../2입학안내/입학안내5-입학상담.html">입학상담</a></li>
                    </ul>
                </li>
                <li>대학·대학원
                    <ul>
                        <li><a href="/Green/department/view.do?college=인문사회대학">인문사회대학</a></li>
                        <li><a href="/Green/department/view.do?college=자연과학대학">자연과학대학</a></li>
                        <li><a href="/Green/department/view.do?college=공과대학">공과대학</a></li>
                        <li><a href="/Green/department/view.do?college=사범대학">사범대학</a></li>
                        <li><a href="/Green/department/view.do?college=대학원">대학원</a></li>
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
                    <svg xmlns="/Green/resource/images/ico-home.png" height="16" viewBox="0 -960 960 960" width="16" fill="#333333">
                        <path d="M240-200h120v-240h240v240h120v-360L480-740 240-560v360Zm-80 80v-480l320-240 320 240v480H520v-240h-80v240H160Zm320-350Z"/>
                    </svg>
                </a>
            </span>
            <br><span class="path-divider"> > </span><br>
            <a href="#">학생지원</a>
            <br><span class="path-divider"> > </span><br>
            <a href="#">수강신청</a>
        </div>
    </div>

    <!-- ===== 본문 ===== -->
    <div class="container">
        <aside class="sidebar">
            <h2 >학생지원</h2>
            
            <ul>
                <li class="highlight" style="border:none; border-top:3px solid #000;">수강신청</li>
                <li><a href="/Green/students/course/list.do">수강신청내역</a></li>
                <li>교과과정</li>
                <li>성적조회</li>
                <li>학적</li>
            </ul>
        </aside>

        <main class="reg-content">
            <h2>수강신청</h2>
            <hr style="border:none; border-top:3px solid #000; margin:6px 0 14px;">

            <!-- 검색 박스 -->
            <div class="search-box">
                <select>
                    <option>선택</option>
                    <option>과목명</option>
                    <option>담당교수</option>
                    <option>개설학과</option>
                </select>
                <input type="text" placeholder="검색어를 입력해 주세요">
                <button type="button">검색</button>
            </div>

            <!-- DB 수강신청 목록 -->
            <table class="course-table">
                <thead>
                    <tr>
                        <th>개설학과</th>
                        <th>구분</th>
                        <th>학년</th>
                        <th>코드</th>
                        <th>과목명</th>
                        <th>학점</th>
                        
                        <th>담당교수</th>
                        <th>수강인원</th>
                        <th>비고</th>
                        <th>신청</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="course" items="${courses}">
                        <tr>
                            <td>${course.dep_name}</td>
                            <td>${course.cs_dist}</td>
                            <td>${course.cs_grade}</td>
                            <td>${course.cs_id}</td>
                            <td>${course.cs_name}</td>
                            <td>${course.cs_credit}</td>
                            <td>${course.pro_name}</td>
                            <td>${course.cs_std_now}</td>
                            <td>-</td>
                            <td>
                                <form action="/Green/students/course/register.do" method="post">
                                    <input type="hidden" name="cs_id" value="${course.cs_id}">
                                    <button type="submit" class="apply-btn">신청</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <!-- 페이지네이션 -->
            <div class="pagination">
                <button type="button">&laquo;</button>
                <button type="button">&lsaquo;</button>
                <button type="button" class="active">1</button>
                <button type="button">2</button>
                <button type="button">3</button>
                <button type="button">&rsaquo;</button>
                <button type="button">&raquo;</button>
            </div>
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
