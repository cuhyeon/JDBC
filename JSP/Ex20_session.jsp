<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 객체</title>
</head>
<body>
<!-- 
	session 웹 브라우져마다 (접속한 사용자) 마다 부여되는 고유한 객체
	
	session 값 : 웹 서버가 접속한 클라이언트(브라우져)에 부여하는 고유한 식별 값
	A 라는 사용자가 > 웹 서버에 접속(session 객체 생성) > id 값을 생성 > Client response
	클라이언트와 서버 동기화(연결) 고유한 식별 값으로...
	
	서버에서 생성한 session id 값 : 50715976574B4FC8D1795D0DBE24A1FA
	Client가 가지고 있는 session 값 : 50715976574B4FC8D1795D0DBE24A1FA
	@@@@@@@@서버, 클라이언트 세션 값 동일@@@@@@@@
	
	session 객체
	:처음 접속한 시간
	:마지막 접속한 시간
 -->
  <%
    Date time = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 %>
 <h3> 세션 정보 </h3>
 <%= session.getId() %>
 <hr>
 <%
    time.setTime(session.getCreationTime()); //세션이 시작된 시간 가져오기
 %>
 [session 생성된 시간] : <%= formatter.format(time) %>
 <hr>
 <%
    time.setTime(session.getLastAccessedTime()); //웹 브라우져가 세션에 마지막으로 접근한 시간	
 %>
 
  [session 마지막 접속 시간] : <%= formatter.format(time) %>
</body>
</html>
