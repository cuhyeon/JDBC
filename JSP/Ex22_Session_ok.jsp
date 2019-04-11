<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
	//데이터 받기
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	System.out.println(uid + " / " + pwd);
	
	//로직 처리
	//DB연결 >> selsect >> 회원테이블 >> ID,PWD 존재...
	boolean success = false;
	if(uid.equals(pwd)) {
		//로그인 성공
		//session 변수에 id값을 담기
		//session 변수는 모든 JSP 페이지에서 공유가능
		session.setAttribute("memberid", uid);
		success= true;
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(success == true) {
		out.print("<b>로그인성공</b>");
		String user = (String)session.getAttribute("memberid");
		out.print(user + "님 로그인 되어 있습니다.");
	}
	%>
</body>
</html>