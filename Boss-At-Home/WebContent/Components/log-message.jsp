<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 

String logMessage = (String) session.getAttribute("log-msg");


if(logMessage!=null) {
	out.println(logMessage);
	session.removeAttribute("log-msg");
}

%>