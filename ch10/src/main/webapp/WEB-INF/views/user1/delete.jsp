<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	// user1 delete
	String name = request.getParameter("name");

	String host = "jdbc:mysql://127.0.0.1:3306/studydb"; 
	String user = "rainbow0oo0";
	String pass = "1234";
	
	try{
		
		Class.forName("mysql://127.0.0.1:3306/studydb");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER1 WHERE NAME = ?");
		psmt.setString(1, name);
		
		psmt.execute();
		
		psmt.close();
		conn.close();
					
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("./list.jsp");
	
	
	
%>