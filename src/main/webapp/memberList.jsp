<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Home > 등록 회원 관리
	<hr>
	<%	
		String sql="SELECT id, username, email, signuptime FROM members";
		Statement stmt = null;
		ResultSet rs=null;
		
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			String m_id = rs.getString("id");
			String m_name = rs.getString("username");
			String m_email = rs.getString("email");
			String m_signtime = rs.getString("signuptime");
			
			out.println(m_id + " / ");
			out.println(m_name + " / ");
			out.println(m_email + " / ");
			out.println(m_signtime + " <br> ");
		}
		
		rs.close();
		stmt.close();
		conn.close();
	%>
</body>
</html>