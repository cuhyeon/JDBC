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
TODAY POINT
서버자원(WAS) : memory
application 
[전역객체] 변수 (접속하는 모든 사용작에게 공유)

session
[개인 : 접속한 브라우져 : 고유값] : 접속한 사용자마다 고유하게 부여되는 변수

1. application.setAttribute("count", 0)
사이트접속 : 전체 접속자 수 application >> count + 1.....

2. session.setAttribute("userid", "hong");
접속한 사용자(브라우져) 마다 고유하게 부여되는 변수

A라는 사용자 웹 서버 접속 
서버 session 객체 생성 > 식별 값(50715976574B4FC8D1795D0DBE24A1FA) > 접속 브라우져(response)
session.setAttribute("userid","kdh");

B라는 사용자 웹 서버 접속 
서버 session 객체 생성 > 식별 값(F3F094B8964E39B3319D7ED41CF7C707) > 접속 브라우져(response)
session,setAttribute("userid","hong");

Application 변수는 사용자 마다 같은 값
session 변수는 사용자마다 다른 값
-->
<h3>세션정보</h3>
웹 서버가 부여한 고유한 ID값 : <%=session.getId() %>
<hr>
<%
	String userid = request.getParameter("userid");
	session.setAttribute("id", userid);
	//session 변수 범위 : 모든 페이지 
%>
<h3>세션 변수 값</h3>
<%
	String id = (String)session.getAttribute("id");
	out.print("당신의 ID는 <b>" + id + "</b>");    
%>
</body>
</html>