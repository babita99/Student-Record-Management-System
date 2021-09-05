<%@page import="Bean_package.User_infoBean"%>
<%@page import="AdminDao.DaoFactory"%>
<%@page import="Bean_package.FacultyBean"%>
<%@ page language="java" session="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
HttpSession session= request.getSession(false);
if(session == null){
	response.sendRedirect("login.jsp");
}else{
	
	String id= request.getParameter("id");
	DaoFactory dao=DaoFactory.getDao();
	FacultyBean bean= dao.getFaculty(id);
	
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

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

</head>

<body>
  <!-- container section start -->
   <jsp:include page="Sidebar.jsp"></jsp:include>      
    <!--sidebar end-->
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-files-o"></i> Form Validation</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="icon_document_alt"></i>Forms</li>
              <li><i class="fa fa-files-o"></i>Form Validation</li>
            </ol>
          </div>
        </div>
       
        <!-- Form validations -->
        
             
              
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading" style="color: #1A2732; font-size: 20px;">
                Faculty Registration Form
              <%
        if(request.getAttribute("error")!=null){
        %>
        <h1 style="color: red;"> <%=request.getAttribute("error")%></h1>
        <%
        }
        %>
              </header>
              <div class="panel-body"  style="background-color: #EEEEEE;">
                <div class="form" style="margin-right: 500px; ">
                  <form class="form-validate form-horizontal "  method="post" action="FacultyEditAction?id=<%=id%>">
                  
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">Faculty Id </label>
                      <div class="col-lg-10">
                        <input class="form-control" id="cname" name="facid" value="<%=bean.getFacid()%>" type="text"  />
                      </div>
                    </div>
                    
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">Name </label>
                      <div class="col-lg-10">
                        <input class="form-control" id="cname" name="name" value="<%=bean.getName() %>"  type="text"  />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cemail" style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">E-Mail </label>
                      <div class="col-lg-10">
                        <input class="form-control " id="cemail" type="text" value="<%=bean.getEmail() %>" name="email" required />
                      </div>
                    </div>
                    
                   
                    <div class="form-group ">
                      <label for="cname"style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">Date Of Birth</label>
                      <div class="col-lg-10">
                        <input class="form-control" id="subject" name="dob" value="<%=bean.getDob()%>" type="date"  />
                      </div>
                    </div>
                    
                    
                    
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">Gender </label>
                      <div class="col-lg-10">
                     <input class="form-control" id="subject" name="gender" value="<%=bean.getGender() %>"  type="text" required /> 
                     </div>
                     </div>
                     
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">Address </label>
                      <div class="col-lg-10">
                     <input class="form-control" id="subject" name="address" value="<%=bean.getAddress()%>"  type="text" required /> 
                     </div>
                   
                       
                      
                       
                      </div>
                      <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">Contact no</label>
                      <div class="col-lg-10">
                     <input class="form-control" id="subject" name="contact" value="<%=bean.getContact() %>" type="text" required /> 
                       
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="password"style="font-size: 17px;color:#F09E64;font-weight: bold;" class="control-label col-lg-2">Password </label>
                      <div class="col-lg-10">
                        <input class="form-control " id="password" name="password" value="<%=bean.getPassword() %>" type="password" />
                      </div>
                    </div>
                    
                    
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:#F09E64;font-weight: bold;"class="control-label col-lg-2">Qualification<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="subject" name="Qualification" value="<%=bean.getQualification() %>"  type="text" required />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:#F09E64;font-weight: bold;"class="control-label col-lg-2">Experience<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="subject" name="Experience" value="<%=bean.getExperience()%>" type="text" required />
                      </div>
                    </div>
                    
                   <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit">Update</button>
                        <button class="btn btn-default" type="button">Cancel</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </section>
        
        <!-- page end-->
      </section>
 
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
  </section>
  <!-- container section end -->

  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery validate js -->
  <script type="text/javascript" src="js/jquery.validate.min.js"></script>

  <!-- custom form validation script for this page-->
  <script src="js/form-validation-script.js"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>


</body>

</html>
<%
}
%>
