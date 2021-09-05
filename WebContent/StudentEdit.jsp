<%@page import="Bean_package.StudentBean"%>
<%@page import="AdminDao.DaoFactory"%>
<%@ page language="java" session="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    HttpSession session= request.getSession(false);
    if(session == null){
    	response.sendRedirect("login.jsp");
    }else{
    	String id= request.getParameter("id");
    	DaoFactory dao=DaoFactory.getDao();
    	StudentBean bean=dao.getStudent(id);
    	
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
 
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

</head>
<style>
.indent-small {
  margin-left: 5px;
}
.form-group.internal {
  margin-bottom: 0;
}

.dialog-panel {
  margin: 10px;
}

.datepicker-dropdown {
  z-index: 200 !important;
}

.panel-body {  
  
  background: #e5e5e5;
  background: -moz-radial-gradient(center, ellipse cover,  #e5e5e5 0%, #ffffff 100%); /* FF3.6+ */
  background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%,#e5e5e5), color-stop(100%,#ffffff)); /* Chrome,Safari4+ */
  background: -webkit-radial-gradient(center, ellipse cover,  #e5e5e5 0%,#ffffff 100%); /* Chrome10+,Safari5.1+ */
  background: -o-radial-gradient(center, ellipse cover,  #e5e5e5 0%,#ffffff 100%); /* Opera 12+ */
  background: -ms-radial-gradient(center, ellipse cover,  #e5e5e5 0%,#ffffff 100%); /* IE10+ */
  background: radial-gradient(ellipse at center,  #e5e5e5 0%,#ffffff 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e5e5e5', endColorstr='#ffffff',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */

  font: 600 15px "Open Sans",Arial,sans-serif;
}

label.control-label {
  font-weight: 600;
  color: #777;  
}
</style>
<body>

   <jsp:include page="Sidebar.jsp"></jsp:include>   
   


<head>
  <link href='https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
  <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css' rel='stylesheet' type='text/css'>
  <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/css/bootstrap-switch.css' rel='stylesheet' type='text/css'>
  <link href='https://davidstutz.github.io/bootstrap-multiselect/css/bootstrap-multiselect.css' rel='stylesheet' type='text/css'>
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/js/bootstrap-switch.min.js' type='text/javascript'></script>
  <script src='https://davidstutz.github.io/bootstrap-multiselect/js/bootstrap-multiselect.js' type='text/javascript'></script>
</head>
<body>
  <div class='container'>
    <div class='panel panel-primary dialog-panel' >
      <div class='panel-heading' style="margin-top: 100px;">
        <h1 style="font-family: cursive;margin-left: 300px;">BASIC INFORMATION</h1>
      </div>
      <%
        if(request.getAttribute("error")!=null){
        %>
        <h3 style="color: red;"> <%=request.getAttribute("error")%></h3>
        <%
        }
        %>
      <div class='panel-body'>
        <form class='form-horizontal' role='form' method="post" action="EditStudentAction?id=<%=id%>">
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' >Student ID</label>
            <div class='col-md-3 indent-small'>
                <div class='form-group internal'>
                  <input class='form-control' id='id_first_name' value="<%=bean.getStudentid()%>" name="studentid" placeholder='Student ID' type='text'>
                </div>
              </div>
              </div>
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' >Name</label>
            <div class='col-md-8'>
              <div class='col-md-2'>
                <div class='form-group internal'>
                  <select class='form-control' name="stitle" value="<%=bean.getStitle()%>">
                    <option>Mr</option>
                    <option>Ms</option>
                    <option>Mrs</option>
                    <option>Miss</option>
                    <option>Dr</option>
                  </select>
                </div>
              </div>
              <div class='col-md-3 indent-small'>
                <div class='form-group internal'>
                  <input class='form-control' id='id_first_name' value="<%=bean.getSfanem() %>" placeholder='First Name' name="sfanem"  type='text'>
                </div>
              </div>
              <div class='col-md-3 indent-small'>
                <div class='form-group internal'>
                  <input class='form-control' id='id_last_name' placeholder='Last Name' value="<%=bean.getSlname()%>" name="slname" type='text'>
                </div>
              </div>
            </div>
          </div>
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_title'>Father Name</label>
            <div class='col-md-8'>
              <div class='col-md-2'>
                <div class='form-group internal'>
                  <select class='form-control' value="<%=bean.getFtitle() %>" name="ftitle">
                    <option>Mr</option>
                    <option>Ms</option>
                    <option>Mrs</option>
                    <option>Miss</option>
                    <option>Dr</option>
                  </select>
                </div>
              </div>
              
              <div class='col-md-3 indent-small'>
                <div class='form-group internal'>
                  <input class='form-control' id='id_first_name' value="<%=bean.getFfname()%>" placeholder='First Name' name="ffname" type='text'>
                </div>
              </div>
              <div class='col-md-3 indent-small'>
                <div class='form-group internal'>
                  <input class='form-control' id='id_last_name' value="<%=bean.getFlname()%>" placeholder='Last Name' name="flname" type='text'>
                </div>
              </div>
             </div>
             </div>
  
              
              
              <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_equipment'>Gender</label>
            <div class='col-md-8'>
              <div class='col-md-3'>
                <div class='form-group internal'>
                  <select class='form-control'  name="gender" value="<%=bean.getGender() %>" >
                    <option>Male</option>
                    <option>Female</option>
                    <option>other</option>  
                  </select>
                </div>
              </div>
            </div>
          </div>
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_comments'>Date of birth</label>
            <div class='col-md-6'>
              <input type="date" class='form-control' id='id_comments' value="<%=bean.getDob() %>" placeholder='Age' name="dob">
            </div>
          </div>
              <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_comments'>Phone number</label>
            <div class='col-md-6'>
              <input type="text" class='form-control' id='id_comments' value="<%=bean.getPhone()%>" name="phone" placeholder='+91' >
            </div>
          </div>
          
          
           <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_comments'>Email-ID</label>
            <div class='col-md-6'>
              <input type="text" class='form-control' id='id_comments' name="email" value="<%=bean.getEmail()%>" placeholder='abc@gmail.com' >
            </div>
          </div>
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_comments'>Password</label>
            <div class='col-md-6'>
              <input type="text" class='form-control' id='id_comments' name="password" value="<%=bean.getPassword() %>" placeholder='*****' >
            </div>
          </div>
          
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_comments'>Address</label>
            <div class='col-md-6'>
              <input type="text" class='form-control' id='id_comments' name="address" value="<%=bean.getAddress() %>" placeholder='Address' >
            </div>
          </div>
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_equipment'>Country</label>
            <div class='col-md-6'>
              <div class='col-md-3'>
                <div class='form-group internal'>
                  <select class='form-control' id='id_equipment' value="<%=bean.getCountry()%>" name="country">
                   <option>United Kingdom</option>
                    <option>England</option>
                    <option>Northern Ireland</option>
                    <option>Scotland</option>
                    <option>United Kingdom</option>
                    <option>Wales</option>
                 </select>
                </div>
                </div>
                </div>
                </div>
                
           <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_comments'>Admission Date</label>
            <div class='col-md-6'>
              <input type="date" class='form-control' id='id_comments' value="<%=bean.getAddmissiondate() %>" placeholder='date' name="addmissiondate">
            </div>
          </div>
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_equipment'>Course Name</label>
            <div class='col-md-8'>
              <div class='col-md-3'>
                <div class='form-group internal'>
                  <select class='form-control' name="coursename" value="<%=bean.getCoursename() %>">
                  <option>Engineering </option>
                    <option> Accounting and Bookkeeping</option>
                    <option>Computer Systems Technology</option>
                    <option>Digital Learning and Teaching</option>
                    <option>Education</option>
                    <option>Finance</option>
                    <option>Health Administration</option>
                  </select>
                </div>
              </div>
              </div>
              </div>
              
           <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_equipment'>Course Stream</label>
            <div class='col-md-8'>
              <div class='col-md-3'>
                <div class='form-group internal'>
                  <select class='form-control' value="<%=bean.getCoursestream()%>" name="coursestream">
                  <option>civil </option>
                    <option>Electronics</option>
                    <option>Mechanical</option>
                    <option>Electronics</option>
                    <option>Design and Communication</option>
                    <option>Fundamentals of Programming </option>
                   
                  </select>
                </div>
              </div>
              </div>
              </div>
              
               <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_equipment'>Semester</label>
            <div class='col-md-8'>
              <div class='col-md-3'>
                <div class='form-group internal'>
                  <select class='form-control' name="semester" value="<%=bean.getSemester() %>">
                  <option>1st</option>
                    <option>2nd</option>
                    <option>3rd</option>
                    <option>4th</option>
                    <option>5th</option>
                    <option>6th</option>
                 </select>
                </div>
              </div>
              </div>
              </div>
          
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='id_comments'>Additional information</label>
            <div class='col-md-6'>
              <textarea class='form-control'  placeholder='Additional comments' name="additioninfo" value="<%=bean.getAdditioninfo()%>"></textarea>
            </div>
          </div>
          
         	  <div class='form-group'>
            <div class='col-md-offset-4 col-md-3'>
              <button class='btn-lg btn-primary' type='submit'>Update</button>
            </div>
            <div class='col-md-3'>
              <button class='btn-lg btn-danger' style='float:right' type='submit'>Cancel</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>


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
  <script type="text/javascript">
  $(document).ready(function() {  
	  $('.multiselect').multiselect();
	  $('.datepicker').datepicker();  
	});
 </script>
</body>

</html>
<%
}
%>