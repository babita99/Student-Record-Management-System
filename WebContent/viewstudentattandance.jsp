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
	StudentBean info=(StudentBean)session.getAttribute("atta");
	
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="js/table2csv.min.js"></script>
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

<div class="container">
	<div class="row" style="margin-top: 100px; margin-left: 100px;">
		<div class="span5">
		
      <div class="col col-xs-2 text-right "> 
         
        </div>
        
            <table  id="attandance" class="table table-striped table-condensed"  style="border: solid; 2px;">
                  <thead>
                  <tr>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px; font-family:sans-serif;">Student Id</th>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px;font-family:sans-serif;">Student Name</th>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px;font-family:sans-serif;">Date</th>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px;font-family:sans-serif;">Status</th>
                                                               
                  </tr>
              </thead>   
              <tbody>
              
                <tr>
                    <td style="color: #1A2732;font-weight: normal;font-size: 15px;"><%=info.getStudentid() %></td>
                    <td style="color: #1A2732;font-weight: normal;font-size: 15px;"><%=info.getFfname() %></td>
                    <td style="color: #1A2732;font-weight: normal;font-size: 15px;"><%=info.getDate() %></td>
                    <td style="color: #1A2732;font-weight: normal;font-size: 15px;"><%=info.getStatus() %></td>
                    
                    
                
                                                        
                </tr> 
                                                
              </tbody>
            </table>
            
            </div>
	</div>
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
     
    <!--main content start-->
  
