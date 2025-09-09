<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>대학 및 학과 등록</title>
  <link rel="stylesheet" href="/greendae/resource/css/학사관리main.css">
  <style>
    /* ===== 공통 레이아웃 ===== */  

    .table {
      width: 100%;
      border-collapse: collapse;
    }

    .table th {
      background: #f7f7f8;
      color: #444;      
      font-size: 13px;
      padding: 12px;
      text-align: center;       
      border: solid 1px #dbd9d9;
    }

    .table td {            
      padding: 3px;
      text-align: center;
      font-size: 13px;
      border: solid 1px #dbd9d9;
    }
    
    .footer {
      background: #19202D;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 12px;
      top: 1000px;
      height: 60px;
    }   
    
    .page-head + hr {
      border: none; 
      border-top: 3px solid #c0c0c0; 
      margin: 0px 15px;
    }

    .section {
      width: 1130px;     
      min-height: 840px; 
      margin-left: 270px;
      background: #fff; 
      padding: 20px;    
      box-sizing: border-box; 
      border: 1px solid var(--border); 
    }    

    .bordertop {
      border-top: 2px solid black !important;
    }

    .btn-cell {
      text-align: right;
      padding: 10px;      
    }

    .btn {
      width: 100px;
      height: 33px;
      background: #1A528E;
      border: 1px solid #08305A;
      color: #fff;
      font-size: 14px;
      cursor: pointer;
      float: right;
    }

    .btn-row td {
      border-top: 1px solid #E5E5E5;  
      border-left: none; 
      border-right: none;
      border-bottom: none;      
      padding: 10px;
    }

    .fileb {
      border: 1px solid #959595;
      padding: 5px;
      margin-top: 2px;
      margin-left: 12.5px;
      float: left;
    }
    
    .ip {
      width: 426.09px;
      height: 33px;      
      margin-left: 12.5px;
      background-color: #fefefe;
      border: 1px solid #959595;
      box-sizing: border-box;
      float: left;
      position: relative;
    }

    .ipu {
      width: 426.09px;
      height: 126px;
      margin-left: 12.5px;
      background-color: #fefefe;
      border: 1px solid #959595;
      box-sizing: border-box;
      float: left;
    }

    .inp {
      width: 200px;
      height: 33px;      
      margin-left: 12.5px;
      background-color: #fefefe;      
      box-sizing: border-box;
      border: solid 1px #959595;
      float: left;      
    }

    .inpu {
      width: 300px;
      height: 33px;
      margin-left: 12.5px;
      background-color: #fefefe;
      border: 1px solid #959595;
      box-sizing: border-box;
      float: left;
    }

    .iput {
      width: 150px;
      height: 35px;
      margin-left: 12.5px;
      background-color: #fefefe;
      border: 1px solid #959595;
      box-sizing: border-box;
      float: left;
    }

    .day {
      float: left;
      position: relative;
      top: 15px;
      left: 5px;
    }
    
    .weekday {
      float: left;
      position: relative;
      top: 15px;
      left: 5px;
    }

    .spt {
      display: inline-block;
      height: 33px;           
      line-height: 33px;            
      color: #BC2E13;
      font-size: 13px;
      margin-left: 0;
    }
    .panel {

    border-top: 2px solid #d7dbe0;
    border: 1px solid var(--border);
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
    margin: 0px;
    background: #fff;
    position: relative;
    left: -20px;
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

    /* 강의 등록에도 들어가야 하는 css */

    

  </style>
</head>
<body>
  <div class="site" style="height: 1000px">

    <div class="header">
      <div class="header-bg">
        <a href="./학사관리main.html" class="link-admin-logo">
          <img src="./images/admin_logo.png" alt="그린대학교 학사관리시스템">
        </a>
      </div>

      <div class="nav">
        <div class="nav-list">
          <div class="item-home">
            <div class="divider"></div>
            <a href="#" class="link">HOME</a>
          </div>

          <div class="item-sitemap">
            <div class="divider"></div>
            <a href="#" class="link">사이트맵</a>
          </div>

          <a href="#" class="logout-link">로그아웃</a>
        </div>
      </div>
    </div>

    <div class="main" style="height: 1000px;">
      <div class="aside" style="height: 900px;">          

          <!-- 1. 환경설정 -->
          <div class="aside-item item-1">
            <div class="aside-link">
              <img src="./images/ico-admin-setting.png" alt="환경설정" class="aside-icon">
              <div class="aside-title title-1">환경설정</div>
              <div class="aside-ordered-list ordered-1">
                <a href="#" class="ordered-link">기본환경정보</a>
                <a href="#" class="ordered-link">약관관리</a>
              </div>
            </div>
          </div>

          <!-- 2. 학사운영 -->
          <div class="aside-item item-2">
            <div class="aside-link">
              <img src="./images/ico-admin-academic.png" alt="학사운영" class="aside-icon">
              <div class="aside-title title-2">학사운영</div>
              <div class="aside-ordered-list ordered-2">
                <a href="./교육운영현황.html" class="ordered-link">교육 운영 현황</a>
                <a href="#" class="ordered-link">학년별 학생 현황</a>
                <a href="#" class="ordered-link">학과별 학생 현황</a>
                <a href="./강의목록.html" class="ordered-link">강의 목록</a>
                <a href="./강의등록.html" class="ordered-link">강의 등록</a>
                <a href="./수강현황.html" class="ordered-link">수강 현황</a>
              </div>
            </div>
          </div>

          <!-- 3. 인사관리 -->
          <div class="aside-item item-3">
            <div class="aside-link">
              <img src="./images/ico-admin-persons.png" alt="인사관리" class="aside-icon">
              <div class="aside-title title-3">인사관리</div>
              <div class="aside-ordered-list ordered-3">
                <a href="학생목록.html" class="ordered-link">학생 목록 및 등록</a>
                <a href="교수목록.html" class="ordered-link">교수 목록 및 등록</a>
                <a href="교수등록.html" class="ordered-link">임직원 목록 및 등록</a>
              </div>
            </div>
          </div>

          <!-- 4. 대학 및 학과 -->
          <div class="aside-item item-4">
            <div class="aside-link">
              <img src="./images/ico-admin-college.png" alt="대학 및 학과" class="aside-icon">
              <div class="aside-title title-4">대학 및 학과</div>
              <div class="aside-ordered-list ordered-4">
                <a href="학과목록.html" class="ordered-link">대학 및 학과 목록</a>
                <a href="대학및학과등록.html" class="ordered-link">대학 및 학과 등록</a>
              </div>
            </div>
          </div>

          <!-- 5. 게시판 관리 -->
          <div class="aside-item item-5">
            <div class="aside-link">
              <img src="./images/ico-admin-board.png" alt="게시판 관리" class="aside-icon">
              <div class="aside-title title-5">게시판 관리</div>
              <div class="aside-ordered-list ordered-5">
                <a href="#" class="ordered-link">입학안내 공지사항</a>
                <a href="#" class="ordered-link">학사안내 공지사항</a>
                <a href="#" class="ordered-link">커뮤니티 공지사항</a>
                <a href="#" class="ordered-link">입학상담</a>
                <a href="#" class="ordered-link">질문 및 답변</a>
                <a href="#" class="ordered-link">식단안내</a>
                <a href="#" class="ordered-link">자료실</a>
              </div>
            </div>
          </div>

        </div>
      </div>

      <section class="section" aria-label="content" style="height: 1000px;">
        <div class="section-container" style="height: 1000px;">
          <div id="include-header"></div>
          <div id="include-sidebar"></div>

          <div class="mainWrap">
            <div class="page">
              <div class="breadcrumb-bar">
                  <div class="breadcrumb-content1">
                      대학 및 학과 등록
                  </div>

                  <div class="breadcrumb-content3">


                      <a href="#">HOME</a>
                      <span class="path-divider"> > </span>
                      <a href="#">대학 및 학과 등록</a>
                  </div>
              </div>
              <hr>

              <div class="content">
                <div class="panel">
                  <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>대학 정보 입력</div>                    
                  </div>

                  <form action="#">
                    <table class="table">
                      <tr>
                        <th class="bordertop">대학명</th>
                        <td colspan="3"> <input type="text" class="inpu" placeholder="예시: 인문사회대학"></td>
                      </tr>
                      <tr>
                        <th>대학 영문명</th>
                        <td colspan="3"> <input type="text" class="inpu" placeholder="예시: Humanities And Social Sciences"></td>
                      </tr>   
                      <tr>
                        <th>대학 소개</th>
                          <td colspan="3">                         
                            <input type="text" placeholder="대학 소개 제목입력" class="ip"> <br><br>
                            <textarea type="text" placeholder="대학 소개 내용입력" class="ipu"></textarea>
                            <div style="clear: both;">
                              <input type="file" class="fileb">
                              <span style="color:#BC2E13; font-size:12px; float: left; position: relative; top: 17px; left: 5px;">
                                대학·대학원 소개 페이지 출력 이미지(320 x 240) 첨부
                              </span>
                            </div>                          
                          </td>                          
                      </tr>
                      <tr class="btn-row">
                        <tr style="border: none;">
                          <td colspan="4" style="padding: 0px; border: none; padding-top: 15px;"><input type="submit" value="등록" class="등록버튼"></td>
                        </tr> 
                      </tr>  
                    </table>
                  </form>                  
                  <div class="heading4">
                    <img src="./images/bullet-h4.png" alt="">
                    <div>수업정보 입력</div>                    
                  </div>
                  <form action="">
                    <table class="table">
                      <tr>
                        <th class="bordertop">학과 번호</th>                        
                          <td class="bordertop" style="text-align:left; padding-left: 16px;">
                            <span class="spt">고유 2자리 숫자 자동생성</span>
                          </td>
                        <th class="bordertop">단과대학</th>
                          <td class="bordertop">
                            <select name="" id="" class="iput">
                              <option value="">선택</option>
                            </select>                           
                          </td>
                      </tr>
                      <tr>
                        <th>학과명</th>
                          <td>
                            <input type="text" class="inp" placeholder="학과명 입력">
                        </td>
                        <th>영문명</th>
                          <td>
                            <input type="text" class="inp" placeholder="학과 공식 영문 이름">
                          </td>
                      </tr>
                      <tr>
                        <th>설립연도</th>
                          <td>
                            <input type="date" class="inp">
                          </td>
                        <th>학과장</th>
                          <td>
                            <select name="" class="iput">
                              <option value="">선택</option>
                            </select>                           
                          </td>
                      <tr>
                        <th>학과 연락처</th>
                        <td>
                          <input type="text" placeholder="학과 연락처 입력" class="inp">
                        </td>
                        <th>학과 사무실</th>
                        <td>
                          <input type="text" placeholder="인문관 3층 306호" class="inp">
                        </td>
                      </tr>
                      <tr style="border: none;">
                          <td colspan="4" style="padding: 0px; border: none; padding-top: 15px;"><input type="submit" value="등록" class="등록버튼"></td>
                      </tr>                   
                    </table>                    

                  </form>
                  
                </div>                

              </div>
              

            </div>
          </div>

        </div>
      </section>
    </div>



    <div class="footer" role="contentinfo">
      <p class="footer-text">
        Copyright ©Green University All rights reserved. ADMINISTRATOR Version 1.4.1
      </p>
    </div>
  </div>
</body>
</html>

