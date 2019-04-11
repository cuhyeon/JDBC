<%@page import="kr.or.bit.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
	Emp emp = new Emp();
	emp.setEmpno(0001);
	emp.setEname("홍홍홍");
	session.setAttribute("empobj", emp);
	-->
<%

	
	Emp e = (Emp)session.getAttribute("empobj");
	out.print(e.toString());
%>
</body>
</html>