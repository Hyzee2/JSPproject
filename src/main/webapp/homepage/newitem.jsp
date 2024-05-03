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
				alert("���� ������ 0 �Դϴ�.");
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

<h3>�Ż�ǰ ����Դϴ�.</h3>

<table border = "1">
	<tr>
		<th>��ǰ��</th>
		<th>����</th>
	</tr>
	<tr>
		<td>��� ���̾�</td>
		<td align="center">
			<img alt="��� ���̾�" src="./Lion.png"><br>
			<button onclick='count("minus");' value="-">-</button>
			<div id="result" name="result" style="display: inline-block;">0</div>
			<button onclick='count("plus");' value="+">+</button>
		</td>
	</tr>
</table>

<form id="formCart" method="post" action="./template.jsp">
	<input type="hidden" name="listname" value="cart" />
	<input type="hidden" id="order" name="order" value="" />
	<button type="button" onclick="goCart();">�ֹ��ϱ�</button>
</form>

<%
request.setCharacterEncoding("euc-kr");

String order = request.getParameter("order");
out.println("���ǿ� ����� ��峪?"+order);
session.setAttribute("order", order);
%>

</body>
</html>