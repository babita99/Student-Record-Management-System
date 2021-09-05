<%@page import="java.util.Date"%>
<%@page import="Bean_package.ResultBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="AdminDao.DaoFactory"%>
<%@page import="Bean_package.StudentBean"%>
<%@ page language="java" session="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
HttpSession session=request.getSession(false);
if(session==null){
	response.sendRedirect("login.jsp");
	}
else
{
	

%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title></title>

  
  <link href="css/bootstrap.min.css" rel="stylesheet">
  
  <link href="css/bootstrap-theme.css" rel="stylesheet">
     
   
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

</head>
<style>

</style>
<body>
  <!-- container section start -->
<jsp:include page="Sidebar.jsp"></jsp:include>      
    <!--main content start-->
  <div class="container">
  

    <form class="login-form" action="SearchResultAction" method="post">
      <div class="login-wrap">
      <%
        if(request.getAttribute("error")!=null){
        %>
        <h3 style="color: red;"> <%=request.getAttribute("error")%></h3>
        <%
        }
        %>
       <h1><i class="bi bi-card-list"></i>Search Result</h1>
       <img alt=""  style=" margin-left: 80px; width: 150px;" src="https://www.iconshock.com/image/Sigma/Project_management/results">
        <br><br>
        
        <div class="input-group" style="width:310px;">
          
          <input type="number" class="form-control" placeholder="Enter ID" name="sid" autofocus>
        </div>
      <button class="btn btn-primary btn-lg btn-block" type="submit" style="background-color: #394A59;">Search</button>
      
      <a href="" style="font-weight: bold; color: #373737;font-size: 20px;margin-left: 100px;">Back</a>
      </div>
    </form>





  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
 <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="js/scripts.js"></script>
  

</body>
</html>
<%
}
%>
