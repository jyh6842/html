<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	h1 {
		color : red;
	}
	p {
		font-size: 1.5em;
		color: blue;
	}
	span {
	font-size: 2.0em;
	color : red;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1> JSP : Java Server Page </h1>
	
	<p> 클라이언트 요청시 (전송) 데이터를 받아서 처리하는 페이지 입니다.</p>
	<p> jsp 페이지에서는 html 태그와 자바 문장을 혼합해서 사용할 수 있다.</p>
	<p> 자바 "문장"을 사용하기 위해서는 &lt;% %&gt; 기호 안에 기술한다.</p>
	<p> 자바 "변수"를 출력할 때는 &lt;%= %&gt; 기호안에 기술한다.</p>
	<br>
	<p> 클라이언트 요청시 전달데이터는 request 객체를 통하여 가져온다.</p>
	<p> jsp 페이지에서 실행 결과를 client로 보낼 때는 (응답시) response 객체를 이용한다.</p>

	<%
		request.setCharacterEncoding("UTF-8");

		String inputId = request.getParameter("id");
		String inputPass = request.getParameter("pass");
		String inputGender = request.getParameter("gender");

		String frr[] = request.getParameterValues("fruit");
		String str = "좋아하는 과일 : ";

		for (int i = 0; i < frr.length; i++) {
			str += frr[i] + " ";
		}
	%>

	<%=inputId%>님<span> 환영합니다.</span>
	<br> 당신의 성별은	<%=inputGender%>	입니다.
	<br> 당신이 좋아하는 과일	<%=str%>이군요 !!!
	<br>




</body>
</html>