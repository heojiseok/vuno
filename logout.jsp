<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    pageEncoding="EUC-KR"%>
 
<html>
<head>
    <title>대리점별 데모 계정 리스트</title>
</head>
<body>
    <%
        session.invalidate(); // 모든세션정보 삭제
        response.sendRedirect("main.jsp"); // 로그인 화면으로 다시 돌아간다.
    %>
</body>
</html>
