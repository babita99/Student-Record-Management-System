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
	DaoFactory dao=DaoFactory.getDao();
	ArrayList<StudentBean> list=dao.getAllattandance();
	Iterator<StudentBean> itr=list.iterator();

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
    <!--main content start-->
  

<div class="container">
	<div class="row" style="margin-top: 100px; margin-left: 100px;">
		<div class="span5">
		<%
         Date date = new Date();
         out.print( "<h3  align = \"center\">" +date.toString()+"</h3>");
      %>
      <div class="col col-xs-2 text-right "> 
          <a href="Addatandance.jsp"  style="margin-left: 800px;"  type="button" class="btn  btn-success "> Mark Attandance  &nbsp;&nbsp;<i class="fa fa-plus-square" ></i></a>
        </div>
        
            <table  id="attandance" class="table table-striped table-condensed"  style="border: solid; 2px;">
                  <thead>
                  <tr>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px; font-family:sans-serif;">Student Id</th>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px;font-family:sans-serif;">Student Name</th>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px;font-family:sans-serif;">Date</th>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px;font-family:sans-serif;">Status</th>
                      <th style="color: #1A2732;font-weight: bold;font-size: 20px;font-family:sans-serif;">Action</th>                                           
                  </tr>
              </thead>   
              <tbody>
              <% while(itr.hasNext()){
                	  StudentBean r=itr.next();
                  %>
                <tr>
                    <td style="color: #1A2732;font-weight: normal;font-size: 15px;"><%=r.getStudentid() %></td>
                    <td style="color: #1A2732;font-weight: normal;font-size: 15px;"><%=r.getSfanem()%></td>
                    <td style="color: #1A2732;font-weight: normal;font-size: 15px;"><%=r.getDate() %></td>
                    <td><span class="label label-info"><%=r.getStatus()%></span></td>
                    <td ><a class="btn btn-danger" onclick="deleteattan(<%=r.getId()%>)"><i class="icon_close_alt2"></i></a></td>
               </tr> 
                <%
              }
                %>                                 
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
 <script type="text/javascript">
  
  function deleteattan(val){
	  f=confirm("Are you sure you want to Detele value ");
	  if(f)
		  document.location.href="attandancedelete.jsp?id="+val;
	   }
  
  
  
  </script>
  

</body>
</html>
<%
}
%>
