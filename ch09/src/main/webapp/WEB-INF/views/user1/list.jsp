<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user1::list</title>
	</head>
	<body>
		<h3>User1 목록</h3>
		
		<a href="/ch09">처음으로</a>
		<a href="/ch09/user1/register.do">등록하기</a>
		
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>나이</th>
				<th>관리</th>
			</tr>
						
			<tr>
				<td>asdf123</td>
				<td>dsafas</td>
				<td>dasfsadf</td>
				<td>22</td>
				<td>					
					<a href="/ch09/user1/modify.do">수정</a>					
					<a href="#">삭제</a>
				</td>
			</tr>
		</table>		
	</body>
</html>