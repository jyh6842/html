<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JSP</h1>
<h2> post에 의한 요청</h2>
<h2> post 요청시 한글이 전달되어 오면 한글 encoding 처리 해줘야 한다. get으로 올때는 안해줘도 된다.</h2>
<h3> request : 내장되어 있는 요청 객체 이다. 서버를 기준으로 고객이 요청을 준다고 생각</h3>
<h3> reponse : 내장되어 있는 응답 객체이다. 서버를 기준으로 고객이 요청한 것을 처리하여 응답해 준다고 생각</h3>
<h3> out: 내장되어 있는 출력 객체 </h3>
    <%
    	request.setCharacterEncoding("UTF-8");
        String userName = request.getParameter("name");
        String userId = request.getParameter("id");
        
        out.print("이름 : " + userName + "<br>");
        out.print("I D : " + userId + "<br>");
    %>
</body>
</html>