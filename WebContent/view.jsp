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
  <h2 style="color: #3485AB;font-weight: normal;margin-top: 100px;">Attendance Rules</h2>
 <h4 style="color: #2F2F2F;font-weight: normal;margin-top: 50px;">i)&nbsp;In order to be eligible to appear at a University Examination, every student has to attend a
minimum number of two-thirds of the total number of lectures delivered at the College in all
subjects as also in tutorials/preceptorials/practicals, as the case may be, taken separately in each
semester.
<br><br>
ii) &nbsp;Attendance for tutorials, preceptorials will be given only when a student submits
written assignments.

Monthly attendance of the students is put up on the website of the college. Parents are advised to
visit the college website regularly. Parents/Guardians of the students who are falling short of
required attendance are advised to contact the concerned subject teachers while the students
should attend the classes regularly

<br><br>
iii)&nbsp; The University Ordinance VII, Clause 2-A Part (ii) states that the Principal of a College shall
have power to strike off the name of a student who is irregular in attendance, inspite of warning
or when the absence of the student is for such a long period that he/she cannot put in the requisite
percentage of attendance. This rule is strictly followed.
</h4>
  
<%
        if(request.getAttribute("error")!=null){
        %>
        <h3 style="color: #4CD964;font-weight: normal;"> <%=request.getAttribute("error")%></h3>
        <%
        }
        %>
    <form class="login-form" action="searchattandance" method="post">
      <div class="login-wrap">
      
       <h4><i class="bi bi-card-list"></i>Search attandance</h4>
       
        <div class="input-group" style="width:310px;">
          
          <input type="number" class="form-control" placeholder="Enter ID" name="sid" autofocus>
        </div>
      <button class="btn btn-primary btn-lg btn-block" type="submit" style="background-color: #4797BF;">Search</button>
      
      
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
