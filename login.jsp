<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>대리점별 데모 계정 리스트</title>
    <link rel="stylesheet" href="css/main.css">

</head>

<body>
    <%

	String user_id = request.getParameter("user_id");
	String password = request.getParameter("password");
	String 담당대리점 = request.getParameter("담당대리점");

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
    
    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String dbURL = "jdbc:sqlserver://192.168.40.1:1433;databaseName=VUNO";

    Class.forName(driverName);
    con = DriverManager.getConnection(dbURL, "sa", "UBPACS!");

	String sql = "select * from [user] where user_id=?";
	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, user_id);

	rs = pstmt.executeQuery();

	// 5.

	//   rs에 데이터(행)가 있으면 아이디있음

	//       패스워드비교 맞으면 로그인인증(세션값생성 "id")

	//       패스워드비교 틀리면 "패스워드틀림" 로그인페이지로 이동

	//   rs에 데이터(행)가 없으면 "아이디없음" 로그인페이지로 이동

	if (rs.next()) {

		// 아이디있음
		
		if (password.equals(rs.getString("password"))) {
			// 로그인인증 index.jsp로 이동
			session.setAttribute("user_id", user_id);
			session.setAttribute("담당대리점", 담당대리점);
			response.sendRedirect("index.jsp");

		} else {
			%>
			<script>
				alert('비밀번호가 일치하지 않습니다.');
				history.back();
			</script>		
			<%	
		}
	} else {
		// 아이디없음  뒤로이동
		%>

		<script>
			alert('존재하지 않는 아이디입니다.');
			//location.href = 'loginForm.jsp';  // 서버가 요청을 받는다.
			history.back();  // history.go(-1);  // 서버에 요청없이 브라우저에서 자체적으로 처리
		</script>
		<%
	}
%>
</body>

</html>