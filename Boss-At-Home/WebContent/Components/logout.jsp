<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session = "false" %>

<% 

HttpSession session = request.getSession();
if(session != null) {
	session.invalidate();
	response.sendRedirect("http://localhost:8090/Boss-At-Home/");
}

%>