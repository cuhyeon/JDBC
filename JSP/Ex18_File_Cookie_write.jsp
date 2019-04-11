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
1.메모리 쿠키(브라우저 쿠키)
 :Client 강제로 지우지 않는 한
 :브라우저를 닫기 전까지 그 값을 유지합니다
2.파일 쿠키(소멸시간을 가지고 있어요)
 :Client 강제로 지우지 않는 한
 :정해진 만료 시간까지
 setMaxage(60) //60초뒤에 소멸
 30일(30*24*60*60) 일*시*분*초
 -->
 	<%
 	Cookie co = new Cookie("bit","kim");
 	response.addCookie(co);
 	%>
</body>
</html>