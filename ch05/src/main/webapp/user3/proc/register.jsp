<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	// 전송 데이터 수신
	String user_id = request.getParameter("user_id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");

	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "rainbow0oo0";
	String pass = "1234";
	
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		String sql = "INSERT INTO USER3 VALUES (?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		psmt.setString(2, name);
		psmt.setString(3, hp);
		psmt.setString(4, age);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}	
	
	response.sendRedirect("../list.jsp");	
	
	
%>