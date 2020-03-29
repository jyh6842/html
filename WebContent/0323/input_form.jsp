<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> JSP : Java Server Page</h1>

	<%
		request.setCharacterEncoding("utf-8");

		String inputName = request.getParameter("name");
		String inputName2 = request.getParameter("name2");
		String inputId = request.getParameter("id");
	%>

	<%=inputId%>님 즐거운 하루 되세여~
	<br>
	<%=inputName%>님 반갑습니다~
	<br>
	<%= inputName2 %>님 반값습니다.

</body>
</html>