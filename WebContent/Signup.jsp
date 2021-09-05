<%@ page language="java" session="false"  contentType="text/html; charset=ISO-8859-1"
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

  <title>Signup Page</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

 
</head>

<body class="login-img3-body">
<jsp:include page="Sidebar.jsp"></jsp:include>  

  <div class="container">

<%
        if(request.getAttribute("error")!=null){
        %>
        <div class="alert alert-danger" role="alert">
  
 <%=request.getAttribute("error")%></div>>
        <%
        }
        %>
    <form class="login-form" action="RegisterServlet" method="post">
      <div class="login-wrap">
        <img alt="" src="https://www.freeiconspng.com/uploads/profile-icon-1.png" style="width: 100px;margin-left: 100px;">
        <div class="input-group">
        
                  <span class="input-group-addon"><i class="fa fa-user-plus" aria-hidden="true"></i></i></span>
          <input type="text" class="form-control" style="color: #2F2F2F;font-weight: normal;" name="name" placeholder=" Enter Username" autofocus>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
          <input type="text" class="form-control" style="color: #2F2F2F;font-weight: normal;" name="email" placeholder=" Enter Email" autofocus>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>
          <input type="password" class="form-control" style="color: #2F2F2F;font-weight: normal;" name="pass" placeholder="Enter Password">
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>
          <input type="password" class="form-control" style="color: #2F2F2F;font-weight: normal;" name="cpass" placeholder="Enter  Confirm Password">
        </div>
        
        <div class="input-group">
        
		<label class="required">Select Role</label>
	<div class="input-group">
		<select  class="form-control" name="role" required>
												<option>Admin</option>
												<option>Student</option>
												<option>Faculty</option>
											
											</select>
										</div>
									</div>
        
        <button class="btn btn-info btn-lg btn-block" style="background: #008AD8;" type="submit">Save</button>
      </div>
      </div>
    </form>
    
    


</body>

</html>
