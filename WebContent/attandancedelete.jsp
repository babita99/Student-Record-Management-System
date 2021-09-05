<%@page import="AdminDao.DaoFactory"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
DaoFactory dao=DaoFactory.getDao();
boolean f= dao.deleteAttandance(id);
response.sendRedirect("studentAttandance.jsp");
%>
