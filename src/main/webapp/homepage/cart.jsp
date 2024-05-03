<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="utils.CookieManager" %>
<%@ page import="utils.JSFunction" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cart</title>
</head>
<body>
<h3>장바구니</h3>

<%String total = (String)session.getAttribute("order"); %>
<p><%= total %></p>

</body>
</html>