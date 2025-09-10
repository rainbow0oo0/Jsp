<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수강신청</title>
    <style>        

        .page {
        width: 1100px; /* 또는 width: 1100px; */
        margin: 0 auto;
        background: #fff;
        /*margin-left: -300px;*/
        }

        html, body{ 
            overflow-x: hidden;
        }

        .page .page-head {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 24px 18px 10px 18px;
        }

        .page .title {
        font-size: 20px;
        font-weight: 700;
        color: rgba(51, 51, 51, 1)
        
        }

        .page .breadcrumb {
        display: flex;
        font-size: 14px;
        font-weight: 350;
        gap: 10px;
        color: rgba(51, 51, 51, 1);
        }

        .page .breadcrumb a {
        color: rgba(51, 51, 51, 1);
        text-decoration: none;
        }

        .page .breadcrumb .current {
        color: #145074 !important;
        font-weight: 350 !important;
        }


        /* ===== Search Bar (right aligned) ===== */
        .searchbar {
        display: flex;
        justify-content: flex-end;
        align-items: center;
        gap: 10px;
        padding: 10px 18px 12px;
        margin-top: 5px;
        }

        .searchbar select,
        .searchbar input {
        height: 36px;
        border: 1px solid var(--border);
        padding: 0 10px;
        background: #fff;
        }

        .searchbar input::placeholder {
        color: #aaa;
        }

        .btn {
        height: 36px;
        min-width: 70px;
        border: 1px solid rgba(26, 82, 142, 1);
        background: rgba(26, 82, 142, 1);
        color: #fff;
        cursor: pointer;
        border-radius: 0px;
        font-weight: 350; 
        }

        
        
        
        .btn-outline {
        background: #fff;
        color: var(--blue);
        }

        .btn-block {
        height: 40px;
        min-width: 100px;
        }

        /* ===== Panel (table container) ===== */
        .panel {
        border-top: 2px solid #d7dbe0;
        border: 1px solid var(--border);
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
        margin: 0 18px 18px;
        background: #fff;
        }

        .panel .panel-head {
        padding: 12px 14px;
        border-bottom: 1px solid var(--border);
        font-weight: 700;
        color: #333;
        }

        .panel .panel-body {
        padding: 0;
        }

        /* ===== Tables ===== */
        .table {
        width: 100%;
        border-collapse: collapse;
        
        }


        .table th,
        .table td {
        border-bottom: 1px solid #ddd;      /* 모든 셀에 선 */
        padding: 15px;
        text-align: center;
        font-size: 13px;
       
        }

        .table th {
        background: #f7f7f8;
        font-weight: 600;
        color: #444;
        }
        .table thead th {
        border-top: 2px solid rgba(135, 152, 163, 1);   /* 윗줄 진하게 */
        border-bottom: 2px solid rgba(135, 152, 163, 1); /* 아랫줄 진하게 */
        }

        .table th:last-child,
        .table td:last-child {
        border-right: none;          /* 마지막 열은 오른쪽 선 제거 */
        }

        .searchbar {
        display: flex;
        justify-content: flex-end;
        gap: 10px;
        padding: 10px 18px 12px;
        margin-top: 5px;   
        }

    
        .searchbar select,
        .searchbar input {
        appearance: none;
        height: 36px;
        border: 1px solid #ccc;   /* 테두리 색 */
        padding: 0 10px;
        background: #fff;
        outline: none;            /* 포커스 시 기본 파란 라인 제거 */
        width: 150px;
        }

        .searchbar .btn:hover {
        background: #145074;
        border-color: #145074;
        }
        
        .pagination {
        display: flex;
        justify-content: center;  /* 버튼들을 가운데 정렬 */
        align-items: center;
        gap: 4px;                 /* 버튼 간격 */
        flex: 1;                  /* 남는 공간을 차지하게 해서 중앙 배치 */
        }


        .pagination-wrap {
        display: flex;
        justify-content: space-between; /* 좌: 페이지네이션 / 우: 등록 */
        align-items: center;
        margin: 20px 18px;
        }

        .pagination button {
        width: 32px;
        height: 32px;
        margin: 0 2px;
        border: 1px solid #ccc;
        background: #fff;
        cursor: pointer;
        font-size: 14px;
        color: #333;
        }

        .pagination button.active {
        background: #145074;
        color: #fff;
        border-color: #145074;
        font-weight: 350;
        }

        .pagination button img {
        width: 14px;
        height: 14px;
        }

         /* 왼쪽 화살표 그룹( << < ) 오른쪽에 여백 */
        .pagination button:nth-child(2) {
        margin-right: 12px;  /* 숫자 버튼과 간격 */
        }

        /* 오른쪽 화살표 그룹( > >> ) 왼쪽에 여백 */
        .pagination button:nth-last-child(2) {
        margin-left: 12px;   /* 숫자 버튼과 간격 */
        }

  </style>

    
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
            <span>수강신청</span>
        </div>
    </div>

    <!-- ===== 본문 ===== -->
    <div class="container">
        <aside class="sidebar">
            <h2>학생지원</h2>
            <ul>
                <li class="highlight">수강신청</li>
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
        <!-- 공통 footer -->
    </footer>
</body>
</html>
