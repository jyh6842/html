<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1{
		color: red;
	}

	p{
		font-size: 2.0em;
	}

</style>
</head>
<body>
	<%
		String username = request.getParameter("name");
	out.print("이름" + username + "<br>");
	%>
	
	이름 : <%= username %>
</body>
</html>