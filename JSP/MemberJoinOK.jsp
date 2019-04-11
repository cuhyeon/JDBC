<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("userId");
	String userName = request.getParameter("userName");
	String userPass = request.getParameter("userPass");
	String userPassCheck = request.getParameter("userPassCheck");
	String gender = request.getParameter("gender");
	String userEmail = request.getParameter("userEmail");
	String userSsn1 = request.getParameter("userSsn1");
	String userSsn2 = request.getParameter("userSsn2");
	String userZipCode = request.getParameter("userZipCode");
	String userAddr1 = request.getParameter("userAddr1");
	String userAddr2 = request.getParameter("userAddr2");
	String userPhone = request.getParameter("userPhone");
	String [] hobby = request.getParameterValues("hobby");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	출력1> <%= userId %><br>
	출력1> <%= userName %><br>
	출력1> <%= userPass %><br>
	출력1> <%= userPassCheck %><br>
	출력1> <%= userEmail %><br>
	출력1> <%= userSsn1 %><br>
	출력1> <%= userSsn2 %><br>
	출력1> <%= userZipCode %><br>
	출력1> <%= userAddr1 %><br>
	출력1> <%= userAddr2 %><br>
	출력1> <%= userPhone %><br>
	 취미:<br>
	<%
	    for (String str : hobby) {
	%>
	    &nbsp;&nbsp;<%=str%><br>
	<%
	    }
	%>
	 <%= year %>년
	 <%= month %>월
	 <%= day %>일

</body>
</html>