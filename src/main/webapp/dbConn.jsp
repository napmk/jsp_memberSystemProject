<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/serverdb";
		String user = "root";
		String pass = "12345";
		
		Connection conn = null;
		
		Class.forName(driverName);
		conn = DriverManager.getConnection(url, user, pass);
	%>
</body>
</html>