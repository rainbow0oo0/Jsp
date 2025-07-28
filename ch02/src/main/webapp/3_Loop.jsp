<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>반복문</title>
		<%-- 
			날짜 : 2025/07/28
			이름 : 김철학
			내용 ㅣ JSP 스크립트릿 조건문 실습
		 --%>
	</head>
	<body>
		<h3>반복문</h3>
		
		<h4>for</h4>
		<%
			for(int i = 1; i<=5; i++){
				out.println("<p>i : " + i + "</p>" );
			}		
		%>
		
		<% for(int j=1; j<=5; j++) {%>
			<p>j : <%= j %></p>
		<% } %>
		
		<h4>while</h4>
		<%
			int k = 1;
			while(k >= 10){		
				out.println("<p>k : " + k + "</p>" );
		%>
			<p>k : <%= k %></p>
		<%
				k++;
			}
		%>
		
		
		<h4>구구단</h4>
		
		
		<table border="1">
			<tr>
				<td> 2 X 1 = 2 </td>
				<td> 3 X 1 = 3 </td>
				<td> 4 X 1 = 4 </td>
				<td> 5 X 1 = 5 </td>
				<td> 6 X 1 = 6 </td>
				<td> 7 X 1 = 7 </td>
				<td> 8 X 1 = 8 </td>
				<td> 9 X 1 = 9 </td>							
			</tr>
			<tr>
				<td> 2 X 2 = 2 </td>
				<td> 3 X 2 = 6 </td>
				<td> 4 X 2 = 8 </td>
				<td> 5 X 2 = 10 </td>
				<td> 6 X 2 = 12 </td>
				<td> 7 X 2 = 14 </td>
				<td> 8 X 2 = 16 </td>
				<td> 9 X 2 = 18 </td>
			
			</tr>
		</table>
		
		<table border="1">
		<% for(int x = 1; x <= 9; x++) { %>
		  <tr>
		    <% for(int y = 2; y <= 9; y++) { %>
		      <td><%= y %> x <%= x %> = <%= y * x %></td>
		    <% } %>
		  </tr>
		<% } %>
		</table>
		
		

	</body>
</html>