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
<%
	request.setCharacterEncoding("utf-8");
	String u_id = request.getParameter("userID");
	
	String sql ="DELETE FROM members WHERE id =?";
	PreparedStatement pstmt = null;
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, u_id); //u_id 위에 꺼 가져온다
	
	int count = pstmt.executeUpdate(); //1이 반환되면 성공
	if (count == 1){
		response.sendRedirect("drowSuccess.jsp"); //탈퇴성공
	}else{
		response.sendRedirect("drawErr.jsp"); //탈퇴실패
	}
	pstmt.close();
	conn.close();
%>

</body>
</html>