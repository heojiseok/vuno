
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!doctype html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>대리점별 데모 계정 리스트</title>
    <link rel="stylesheet" href="css/main.css">

</head>
<%
try {
    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=VUNO";

    Class.forName(driverName);
    Connection con = DriverManager.getConnection(dbURL, "sa", "UBPACS!");
    out.println("SUCCESS");
    con.close();
}
catch (Exception e) {
   out.println("FAIL <hr>");
    out.println(e.getMessage());
    e.printStackTrace();
}
%>
</html>