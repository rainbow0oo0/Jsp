<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	// 전송 데이터 수신
	String user_id = request.getParameter("user_id");

	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "rainbow0oo0";
	String pass = "1234";
	
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER2 WHERE USER_ID = ?");
		psmt.setString(1, user_id);
		
		psmt.executeUpdate();
		// 내용 적용
		
		psmt.close();
		conn.close();		
		// 출력
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 목록이동
	response.sendRedirect("./list.jsp");
%>