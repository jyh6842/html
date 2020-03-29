<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   p{
      font-size : 2.0em;
      border : 1px solid orange;
      width : 30%; 
   }
</style>
</head>
<body>
 <%
 	// 0 요청시 입력한 id 값을 가져온다.
 	String inputId = request.getParameter("id");
 	// 1. 드라이버 로드
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	
 	// 2. Connection 객체 얻기
 	String url = "jdbc:oracle:thin:@localhost:1521:xe";
 	String user = "jyh6842";
 	String password = "java";
 	
 	Connection conn = DriverManager.getConnection(url, user, password);
 	
 	// 3. Statement 객체 만들기
 	Statement stmt = conn.createStatement();
 	
 	// 4. sql 문장 만들기
 	String sql = "SELECT * FROM member where mem_id = '"+inputId+"'";
 	
 	// 5. sql 문장을 실행하기
 	ResultSet rs = stmt.executeQuery(sql);
 	
 	boolean check = false;
 	
 	// 출력하기
 	
 	while(rs.next()){
 	   check = true;
 	   out.print("<p>아이디 : " + rs.getString("mem_id") + "</p>");
 	   out.print("<p>이름 : " + rs.getString("mem_name") + "</p>");
 	   out.print("<p>전화번호 : " + rs.getString("mem_hp") + "</p>");
 	}
 	if(!check)
 	{
 	   out.print("<p>원하는 찾는 데이터가 없습니다</p>");
 	}
 %>
 
 
</body>
</html>