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
   <%@ include file="Sidebar.jsp" %>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content" style="margin-left: 240px;">
      
        
        <!-- Form validations -->
        
             
              
        
            <section class="panel">
              <header class="panel-heading" style="color: #ffffff; font-size: 20px;background-color: #063A69;">
                Add Faculty 
                <div class="col col-xs-2 text-right ">
          <a href="FacultyShow.jsp"  style="margin-left: 1100px;"  type="button" class="btn  btn-info "> View   &nbsp;&nbsp;<i class="fa fa-plus-square" ></i></a>
        </div>
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
                  <form class="form-validate form-horizontal "  method="post" action="FacultyAddAction">
                  
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">Faculty Id </label>
                      <div class="col-lg-10">
                        <input class="form-control" id="cname" name="facid"  type="text" maxlength="4"  required="required"/>
                      </div>
                    </div>
                    
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">Name </label>
                      <div class="col-lg-10">
                        <input class="form-control" id="cname" name="name"  type="text"  />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cemail" style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">E-Mail </label>
                      <div class="col-lg-10">
                        <input class="form-control " id="cemail" type="email" name="email" required="required" />
                      </div>
                    </div>
                    
                   
                    <div class="form-group ">
                      <label for="cname"style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">Date Of Birth</label>
                      <div class="col-lg-10">
                        <input class="form-control" id="subject" name="dob"  type="date"  required="required" />
                      </div>
                    </div>
                    
                    <div class="form-group ">
                      <label for="ccomment" style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">Address</label>
                      <div class="col-lg-10">
                        <textarea class="form-control " id="ccomment" name="address"  required="required"></textarea>
                      </div>
                    </div>
                    
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">Gender </label>
                      <div class="col-lg-10">
                     <input class="form-control" id="subject" name="gender"  type="text" required="required"/> 
                     </div>
                   
                       
                      </div>
                      <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">Contact no</label>
                      <div class="col-lg-10">
                     <input class="form-control" id="subject" name="contact"  type="text" required="required" /> 
                       
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="password"style="font-size: 17px;color:;font-weight: bold;" class="control-label col-lg-2">Password </label>
                      <div class="col-lg-10">
                        <input class="form-control " id="password" name="password" type="password" required="required" />
                      </div>
                    </div>
                    
                    
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:;font-weight: bold;"class="control-label col-lg-2">Qualification<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="subject" name="Qualification"  type="text" required="required" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" style="font-size: 17px;color:;font-weight: bold;"class="control-label col-lg-2">Experience * years<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class="form-control" id="subject" name="Experience"  type="number" required="required" />
                      </div>
                    </div>
                    
                   <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-danger" type="submit">Save</button>
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
