<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Shop/Customer::list</title>
	</head>
	<body>
		<h3>User1 목록</h3>
		
		<a href="/ch10">처음으로</a>
		<a href="/ch10/user1/register.do">등록하기</a>
		
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>등록일</th>
				<th>관리</th>
			</tr>
			<c:forEach var="customer" items="$()dtoList)">		
			<tr>
				<td>$(cus)</td>
				<td>213131</td>
				<td>213131</td>
				<td>223131</td>
				<td>					
					<a href="">수정</a>					
					<a href="">삭제</a>
				</td>
			</tr>
			</c:forEach>			
		</table>		
	</body>
</html>