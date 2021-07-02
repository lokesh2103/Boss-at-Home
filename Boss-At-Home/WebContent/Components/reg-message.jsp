<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 

String regMessage = (String) session.getAttribute("reg-msg");

if(regMessage!=null) {
	out.println(regMessage);
	session.removeAttribute("reg-msg");
}

%>