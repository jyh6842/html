<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img {
	width: 150px;
	height: 100px;
}
	div {
		border : 1px dotted green;
		padding : 20px;
		width : 50%;
		margin: 50px auto;
	}
	
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String area = request.getParameter("area");
		//입력한대로 모양 바꾸기
		area = area.replaceAll("\\r", "").replaceAll("\\n", "<br>");
		String job = request.getParameter("job");
	%>
	
	<div>
		<%= name %> 님<br>
		직업 <%=job %><br><br>
		<img src="../images/호랑이.jpg"><br><br>
		<%=area %>
	</div>

</body>
</html>