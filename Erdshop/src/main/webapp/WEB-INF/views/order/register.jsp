<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문등록</title>
	</head>
	<body>
		<h3>주문등록</h3>
		
		<a href="/Erdshop">처음으로</a>
		<a href="/Erdshop/order/list.do">목록이동</a>
		
		<form action="#" method="post">
			<table border="1">
				<tr>
					<td>주문번호</td>
					<td><input type="text" name="orderid" placeholder="주문번호 입력"></td>
				</tr>
				
				<tr>
					<td>주문자</td>
					<td><input type="number" name="orderproduct" placeholder="주문자 입력"></td>
				</tr>
				
				<tr>
					<td>주문상품</td>
					<td><input type="number" name="ordercount" placeholder="주문상품 입력"></td>
				</tr>
				
				<tr>
					<td>주문수량</td>
					<td><input type="text" name="orderdate" placeholder="주문일 입력"></td>
				</tr>
				
				<tr>
					<td>주문일</td>
					<td><input type="text" name="prodno" placeholder="번호 입력"></td>
				</tr>
			
			</table>
		</form>
		
		
	</body>
</html>