<%@ page language="java" session="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%

HttpSession session =request.getSession(false);
if(session !=null){
	session.removeAttribute("userinfo");
}
session.invalidate();
response.sendRedirect("login.jsp");
%>
