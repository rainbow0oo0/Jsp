<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String user_id = request.getParameter("cid");
	
	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "rainbow0oo0";
	String pass = "1234";
	
	try {
		
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");				
		DataSource ds = (DataSource) ctx.lookup("jdbc/rainbow0oo0");
		
		Connection conn = ds.getConnection();
			
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER1 WHERE CID = ?");
		psmt.setString(1, user_id);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 목록이동
	response.sendRedirect("/ch05/customer/list.jsp");
%>