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
			

 -->

1. 일반적인 사용 (=출력) : <%= 100 + 200 + 300 %><br>
2. sendRedirect : response 객체 함수 (클라이언트 서버에게 페이지를 재청)<br>
<%
	response.sendRedirect("Ex01_Basic.jsp");
%>
<!-- 
response.sendRedirect 코드가 클라이언트 브라우져 해석할 수 있는 형태로 변환
<script type = "text/javascript">
	location.href="Ex01_Basic.jsp""
</script>
 -->
</body>
</html>