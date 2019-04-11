<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate(); //현재 생성된 세션을 무효화 시킴
	out.print("<script>location.href = 'Ex22_Session_login.jsp'</script>");
%>
</body>
</html>