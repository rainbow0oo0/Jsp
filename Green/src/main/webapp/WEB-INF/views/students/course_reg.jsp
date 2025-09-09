<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
</head>
<body>

<h2>수강신청</h2>

	<table>
		<tr>
			<th>개설학과</th>
			<th>구분</th>
			<th>학년</th>
			<th>코드</th>
			<th>과목명</th>
			<th>학점</th>
			<th>담당교수</th>
			<th>수강인원</th>		
			<th>비고</th>		
			<th>신청</th>		
		</tr>
		<c:forEach var="course" items="${courses}">
			<tr>
				<td>${course.dep_name}</td>
				<td>${course.cs_dist}</td>
				<td>${course.cs_grade}</td>
				<td>${course.cs_id}</td>
				<td>${course.cs_name}</td>
				<td>${course.cs_credit}</td>
				<td>${course.pro_name}</td>
				<td>${course.cs_enroll}</td>
				<td>-</td>
				<td>
					<form action="register.do" method="post">
						<input type="hidden" name="cs_id" value="${course.cs_id}">
						<input type="submit" value="신청">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>