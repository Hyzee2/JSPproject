<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>FileUpload</title>
</head>
<body>
<center>
<form action="fileUpload.jsp" method="post" enctype="multipart/form-data">
<table border="1">
	<th colspan="2">���� ���ε� ��</th>
	<tr>
		<td>�ø� ���</td>
		<td><input type="text" name="user"/></td>
	</tr>
	<tr>
		<td>����</td>
		<td><input type="text" name="title"/></td>
	</tr>
	<tr>
		<td>���ϸ� 1</td>
		<td><input type="file" name="filename1" /></td>
	</tr>
	<tr>
		<td>���ϸ� 2</td>
		<td><input type="file" name="filename2" /></td>
	</tr>
	<tr align="center">
		<td colspan="2">
			<input type="submit" name="submit" value="����" />
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>