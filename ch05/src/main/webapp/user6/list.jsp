<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.User6VO"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// user6
	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "rainbow0oo0";
	String pass = "1234";	

	List<User6VO> users = new ArrayList<>();
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT * FROM USER6";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			
			User6VO vo = new User6VO();
			vo.setName(rs.getString(1));
			vo.setGender(rs.getString(2));
			vo.setAge(rs.getInt(3));
			vo.setAddr(rs.getString(4));
			
			users.add(vo);			
			
		}		
		
	}catch(Exception e){
		e.printStackTrace();
	}


%>

<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>user6::list</title>
	</head>
	<body>
		<h3>User6 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border="1">
			<tr>
				<td>이름</td>
				<td>성별</td>
				<td>나이</td>
				<td>주소</td>
			</tr>
			
			<% for(User6VO user6VO : users){ %>
			<tr>
				<td><%= user6VO.getName() %></td>
				<td><%= user6VO.getGender() %></td>
				<td><%= user6VO.getAge() %></td>
				<td><%= user6VO.getAddr() %></td>
			
				<td>
					<a href="./modify.jsp?user_id=<%= user6VO.getName() %>">수정</a>
					<a href="./delete.jsp?user_id=<%= user6VO.getName() %>">삭제</a>
				</td>
			
			</tr>
			<% } %>
		
		
		</table>	
	</body>
</html>