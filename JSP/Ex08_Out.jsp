<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
out 객체 : 서버 쪽 구현이 편해요
단점 : 클라이언트 코드 구현은 문자열로 표현
 -->   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomcat(WAS) 내장객체(out)</title>
</head>
<body>
<%
	boolean b = true;
	if(10 > 5) {
%>		
	if(true) : <font color = "red"><%=b %></font>
<% 	
	}
%>
<H3>out 객체 (서버코드 작업이 편해요)</H3>
<%
	boolean b2 = true;
	if(10 > 5) {
		out.print("if(true) : <font color = 'red'>" + b +"</font>");
	} else {
		out.print("if(true) : <font color = 'red'>" + b2 +"</font>");

	}
%>
</body>
</html>