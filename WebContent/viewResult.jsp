<%@page import="java.sql.ResultSet"%>
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
	ResultBean info=(ResultBean)session.getAttribute("result");
	
	

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

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>



</head>
<style>
body{
    background-image: url(https://images.unsplash.com/photo-1531415074968-036ba1b575da?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=472642856008b6ddb3e596e45ca4263d&auto=format&fit=crop&w=1494&q=80);   
    background-size:1500px 800px;
}


table{
    border:1px solid black;
    border-collapse:collapse ;
	padding:0px;
}

th{
    padding:10px;
    border:1px solid black;

	
}

td{
    padding:10px;
     border:1px solid black;
	text-align:left;
}

tr:nth-child(even)
{
      background-color:white;
}

tr:nth-child(odd)
{
      background-color:#eee;
}
</style>
<body>
  <!-- container section start -->
<jsp:include page="Sidebar.jsp"></jsp:include>      
 <br>
 <br><br>
 <br><br>
 <img alt="" src="img/u.jpg" style="width: 1100px; height: 140px;margin-left: 200px;">
 <h3 style="margin-left: 500px;font-weight: bold;">Detail marks certificate</h3>
 <h5 style="margin-left: 500px;font-weight: bold;">Final Term Examination session 2021-2022</h5>
 

<table style="width:65%;height:90%; " align="center">


<tr style="background-color:#2E3B46;color:white; margin-top: 100px;">
<th style="color: #FFFFFF;font-weight: normal;">profile</th>
<th style="color: #FFFFFF;font-weight: normal;">Student Roll no</th>

<th style="color: #FFFFFF;font-weight: normal;">Student Class</th>

</tr>

<tr>
<td><img src="https://www.freeiconspng.com/uploads/profile-icon-1.png" style="width: 30px;" ></img></td>
<td><%=info.getStudentid() %></td>

<td><%=info.getCourse()%></td>


</tr>
</table>



  






<div align="center">
<caption><h2><ins><i>End Term Marks</i></ins></h2></caption>
</div>

<table style="width:65%;height:90%;" align="center">



<tr style="background-color:#32A9EE;color:white;">
<th style="color: #2F2F2F;font-weight: normal;">Subjects Code</th>
<th style="color: #2F2F2F;font-weight: normal;">Subjects Name</th>
<th style="color: #2F2F2F;font-weight: normal;">Full Marks</th>
<th style="color: #2F2F2F;font-weight: normal;">Passing Marks</th>
<th style="color: #2F2F2F;font-weight: normal;" >Obtain Marks</th>


</tr>

<tr>
<td><b>1236</b></td>
<td>Social science</td>
<td>100</td>
<td>30</td>
<td><%=info.getFoc() %></td>

</tr>

<tr>
<td><b>1237</b></td>
<td>Physics</td>
<td>100</td>
<td>30</td>
<td><%=info.getC() %></td>

</tr>

<tr>
<td><b>1238</b></td>
<td>Chemistry</td>
<td>100</td>
<td>30</td>
<td><%=info.getJava()%></td>

</tr>

<tr>
<td><b>1003</b></td>
<td>Computer</td>
<td>100</td>
<td>30</td>
<td><%=info.getOs() %></td>

</tr>
<tr>
<td><b>1239</b></td>
<td>Mathematics</td>
<td>100</td>
<td>30</td>
<td><%=info.getDs() %></td>

</tr>
<tr>
<td><b>1240</b></td>
<td>Biology</td>
<td>100</td>
<td>30</td>
<td><%=info.getCompiler() %></td>

</tr>
<tr>
<td><b>1241</b></td>
<td>Drawing </td>
<td>100</td>
<td>30</td>
<td><%=info.getSwengineering() %></td>

</tr>



</table>



<div>
<h3 style="margin-left: 100px;color: #2E3B46;font-weight: bold;"><marquee>Failure is not falling down but refusing to get up</marquee></h3>
</div>
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
