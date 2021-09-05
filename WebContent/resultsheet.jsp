<%@ page language="java" session="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Basic Table </title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/elegant-icons-style.css" rel="stylesheet" />
 <link href="css/font-awesome.min.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>


</head>
<style>
  .width30 {
		width: 30%;
	}
	.width70 {
		width: 70%;	
	}
	.floatL{
		float: left;
	}
	.width50{
		width: 50%;
	}
	.floatR{
		float: right;
	}
	.btn{
		width: 100%;
		border-radius: 0px;
	}
	.width100{
		width: 100%;
	}
	.row{
		margin-left: -20px;
		margin-right: -20px;

	}
	.boxStyle{
		padding: 20px; 
		border-radius: 25px; 
		border-top: 6px solid #dc3545;
		border-bottom: 6px solid #28a745;
	}
</style>


<body>
 <%@include file="Sidebar.jsp" %>
 
 
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<body>
	<header class="bg-dark" style="height: 80px; padding: 40px;background-color: #394A59; ">
		<h3 class="text-light" style="text-align: center;margin-top: 200px; "></h3>
	</header>
	<div class="container bg-dark">
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-2"></div>		
		<div class="col-sm-6 bg-light boxStyle">
		<%
        if(request.getAttribute("error")!=null){
        %>
        <h3 style="color: #4CD964;font-weight: normal;"> <%=request.getAttribute("error")%></h3>
        <%
        }
        %>
		
	<form name="theform" action="ResultAction" method="post" >
	<div class="form-group">
	
		<div class="width30 floatL"><label>Student ID</label></div>
		<div class="width70 floatR"><input id="firstname" class="width100 form-control" name="sid" type="text" value="" size="20" required="required">
	</div><br>
	<div class="form-group">
		<div class="width30 floatL"><label>Student Class</label></div>
		<div class="width70 floatR"><input class="width100 form-control" name="course" type="text" value="" size="20" required="required"></div>
	</div><br>
	<h3 style="color: #1A2732;text-align: center;">Enter Student Marks</h3>
	
	<div class="form-group">
		<div class="width30 floatL"><label>Physics</label></div>
		<div class="width70 floatR"><input class="width100 form-control" name="foc"     type="number" value="" size="20" required="required" ></div>
	</div><br><br>
	<div class="form-group">
		<div class="width30 floatL"><label>Chemistry</label></div>
		<div class="width70 floatR"><input class="width100 form-control" name="c" type="number" value="" size="20"required="required" ></div>
	</div><br><br>
	<div class="form-group">
		<div class="width30 floatL"><label>Social science</label></div>
		<div class="width70 floatR"><input class="width100 form-control" name="java" type="number" value="" required="required" size="20"></div>
	</div><br><br>
 	<div class="form-group">
 		<div class="width30 floatL"><label>Biology</label></div>
 		<div class="width70 floatR"><input class="width100 form-control" name="os" type="number" value="" size="20" required="required" ></div>
 	</div><br><br>
 	 	<div class="form-group">
 		<div class="width30 floatL"><label>Computer</label></div>
 		<div class="width70 floatR"><input class="width100 form-control" name="ds" size="20" type="number" required="required" ></div>
 	</div><br><br>
 	 	<div class="form-group">
 		<div class="width30 floatL"><label>Mathematics</label></div>
 		<div class="width70 floatR"><input class="width100 form-control" name="compiler" type="number" size="20" required="required"></div>
 	</div><br><br>
 	 	<div class="form-group">
 		<div class="width30 floatL"><label>Drawing</label></div>
 		<div class="width70 floatR"><input class="width100 form-control" name="sw" type="number" size="20" required="required"></div>
 	</div>
 	
 	 
 	<div class="form-group">
  	<div class="row">
	<div class="width50"><input class="btn btn-success" type="submit"   value="Submit" style="font-weight: bold"></div>
 	<div class="width50"><input class="btn btn-danger" type="reset" style="font-weight: bold"></div>		
  	</div>
  	</div>
     </form> 
     </div>
     </div>
     </div>
     
    
 

  	     
		
	 
	       
</body>

 
 
 
  <div class="text-right">
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="js/scripts.js"></script>
</div>



</body>

</html>
 