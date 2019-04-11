<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
    /*
    쿠키값( 사용자 ID )이 존재하면 UID input value 속성 값을 출력 
    쿠키값을 read해서 쿠키 변수명이 UID라면 ... 그 값을
    
    */
    Cookie[] co1 = request.getCookies();
    String userid1 = "";
    for(int i = 0 ; i < co1.length; i++){
        if(co1[i].getName().equals("userid")){
            userid1 = co1[i].getValue();
        }
    }
%>
<!--  <script>
window.onload = function(){
 var data ='userid';
 console.log(data+"님");
 document.getElementById("UID").value=data;
}</script>-->
</head>
<body>
    <form action = "Ex19_Loginok.jsp" method = "get">
    <%-- <input type="text" name="UID" value="<%=userid%>"><br> --%>
    ID : <input type = "text" name = "UID" value=<%= userid1 %>><br>
    PWD : <input type = "password" name="PWD"><br>
    <hr>
    장지훈<input type = "checkbox" name = "chk">
    <input type = "submit" value = "로그인">
    <input type = "reset" value = "취소">
    </form>
</body>
</html>