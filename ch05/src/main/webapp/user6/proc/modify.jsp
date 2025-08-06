<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String email = request.getParameter("eamil");
	
	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "rainbow0oo0";
	String pass = "1234";
	
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		Statement stmt = conn.createStatement();
		
		String sql =  "UPDATE USER6 SET name='" + name + "', age=" + age + " email='" + email + "'";
			sql += "WHERE id="+id+"";
			
			stmt.executeUpdate(sql);
			
			stmt.close();
			conn.close();			
		
	}catch(Exception e){
		e.printStackTrace();
	}

	response.sendRedirect("../list.jsp");
%>