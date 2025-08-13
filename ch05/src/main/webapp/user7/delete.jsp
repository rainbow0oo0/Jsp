<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	// user7
	String name = request.getParameter("id");

	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "rainbow0oo0";
	String pass = "1234";
	
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
<<<<<<< HEAD
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER7 WHERE NAME = id");
		//psmt.setString(1, id);
=======
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER7 WHERE ID = ?");
		// psmt.setString(1, id);
>>>>>>> 35eceaacffad3a543ca37dc5a6655dc98f1efa9a
		
		psmt.execute();
		
		psmt.close();
		conn.close();
					
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("./list.jsp");
	
	
	
%>