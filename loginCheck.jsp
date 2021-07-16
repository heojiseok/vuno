<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String user_id = (String) session.getAttribute("user_id");


	if (user_id == null) {
		response.sendRedirect("main.jsp");
		return;

	}


%>