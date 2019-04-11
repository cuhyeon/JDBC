<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:useBean id="empbean" class="kr.or.bit.Emp" scope="request"></jsp:useBean>

<!-- jsp:useBean id="빈이름" class="자바빈 클래스 이름" scope="범위" 
	
	Request 는 현재 페이지까지 
	
	id : JSP페이지에서 자바빈 객체에 접근 할 때 사용하는 이름이다.

	class : 패키지 이름을 포함한 자바빈 클래스의 완전한 이름을 입력

	scope : page, request, session, application 
			
			[Default : page] -->

<!-- 
    Emp empbean = new Emp();
    empbean.setEmpno(2000);
    empbean.setEname("kim");
    request.setAttribute("empbean",empbean);
    
    [scope]
    default(page)
    request.setAttribute("empbean",empbean);
   	 같은 session 가지는 모든 페이지에서 
    
    scope="application"
    application.setAttribute("empbean",empbean);
    
    
    @@@@@@@@@PageContext / Request에서 사용될때@@@@@@@@@
    
	setAttribute("key", value) → 값을 넣는다.
	
	getAttribute("key") → 값을 가져온다.
	
	removeAttribue("key") → 값을 지운다.
	
	session에서 사용될때
	
	set / get / remove 동일하고 추가로++
	
	invalidate( ) → 값을 전부 지운다.
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    out.print(empbean.getEmpno() + "<br>");
    out.print(empbean.getEname() + "<br>");
%>
</body>
</html>