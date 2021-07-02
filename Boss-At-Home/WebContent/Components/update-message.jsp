<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 

String updateMessage = (String) session.getAttribute("updateMsg");

if(updateMessage != null) {
	out.println(updateMessage);
	session.removeAttribute("updateMsg");
}

%>