<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>resultScope</title>
	</head>
	<body>
		<p>
			pageCountext 값 : <%=pageContext.getAttribute("name") %><br/>
			request 값 : <%= request.getAttribute("name") %><br/>
			session 값 : <%= application.getAttribute("name") %><br/>
			application 값 : <%= application.getAttribute("name") %><br/>
		</p>
	</body>
</html>