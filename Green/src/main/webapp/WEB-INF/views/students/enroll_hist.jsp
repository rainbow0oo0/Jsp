<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수강신청내역</title>
    
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

    <div class="breadcrumb-bar">
        <div class="breadcrumb-content">
            <a href="../mainpage/main.html">HOME</a>
            <span class="path-divider">></span>
            <a href="#">학생지원</a>
            <span class="path-divider">></span>
            <span>수강신청내역</span>
        </div>
    </div>

    <!-- ===== 본문 ===== -->
    <div class="container">
        <aside class="sidebar">
            <h2>학생지원</h2>
            <ul>
                <li>수강신청</li>
                <li class="highlight">수강신청내역</li>
                <li>교과과정</li>
                <li>성적조회</li>
                <li>학적</li>
            </ul>
        </aside>

        <main class="reg-content">
            <h2>수강신청내역</h2>
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
                        <th>교과목코드</th>
                        <th>과목명</th>
                        <th>대상학년</th>
                        <th>대상학년</th>
                        <th>담당교수</th>
                        <th>학점</th>
                        <th>이수구분</th>
                        <th>강의시간</th>
                        <th>강의장</th>
                        <th>관리</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="course" items="${courses}">
                        <tr>
                            <td>${course.cs_id}</td>
                            <td>${course.cs_name}</td>
                            <td>${course.cs_grade}</td>
                            <td>${course.pro_name}</td>
                            <td>${course.cs_credit}</td>
                            <td>${course.cs_dist}</td>
                            <td>${course.cs_weekday} ${course.cs_time}</td>
                            <td>${course.cs_room}</td>
                            <td>-</td>
                            <td>
                                <form action="list.do" method="post">
                                    <input type="hidden" name="cs_id" value="${course.cs_id}">
                                    <button type="submit" class="apply-btn">취소</button>
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
        <!-- 공통 footer -->
    </footer>
</body>
</html>
