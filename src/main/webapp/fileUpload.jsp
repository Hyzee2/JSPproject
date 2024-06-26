<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%
	String uploadPath=request.getRealPath("upload");

	int size = 10*1024*1024;
	String user="";
	String title="";
	String filename1="";
	String filename2="";
	
	try{
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "euc-kr",
											new DefaultFileRenamePolicy());
		
		user = multi.getParameter("user");
		title = multi.getParameter("title");
		
		Enumeration files = multi.getFileNames();
		
		String file1 = (String)files.nextElement();
		filename1 = multi.getFilesystemName(file1);
		
		String file2 = (String)files.nextElement();
		filename2 = multi.getFilesystemName(file2);
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="filecheck" action="fileCheck.jsp" method="post">
	<input type="hidden" name="user" value="<%=user %>" />
	<input type="hidden" name="title" value="<%=title %>" />
	<input type="hidden" name="filename1" value="<%=filename1 %>" />
	<input type="hidden" name="filename2" value="<%=filename2 %>" />
</form>
<a href = "#" onclick = "javascript:filecheck.submit()">업로드 확인 및 다운로드 페이지 이동</a>
</body>
</html>