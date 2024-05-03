<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	function count(type){
		let resultElement = document.getElementById("result");
		
		let number = resultElement.innerText;
		
		if(type == "plus"){
			number = parseInt(number) + 1;
		}else if(type == "minus"){
			if(number > 0){
				number = parseInt(number) - 1;
			}else{
				alert("현재 수량이 0 입니다.");
			}
		}
		
		resultElement.innerText = number;
	}
	
	function goCart(){
		let resultElement = document.getElementById("result");
		let order = resultElement.innerText;
		
		document.getElementById("order").value = order;
		document.getElementById("formCart").submit();
	}
</script>
</head>
<body>

<h3>신상품 목록입니다.</h3>

<table border = "1">
	<tr>
		<th>상품명</th>
		<th>사진</th>
	</tr>
	<tr>
		<td>댄싱 라이언</td>
		<td align="center">
			<img alt="댄싱 라이언" src="./Lion.png"><br>
			<button onclick='count("minus");' value="-">-</button>
			<div id="result" name="result" style="display: inline-block;">0</div>
			<button onclick='count("plus");' value="+">+</button>
		</td>
	</tr>
</table>

<form id="formCart" method="post" action="./template.jsp">
	<input type="hidden" name="listname" value="cart" />
	<input type="hidden" id="order" name="order" value="" />
	<button type="button" onclick="goCart();">주문하기</button>
</form>

<%
request.setCharacterEncoding("euc-kr");

String order = request.getParameter("order");
out.println("세션에 제대로 담겼나?"+order);
session.setAttribute("order", order);
%>

</body>
</html>