<%@page import="Bean_package.FacultyBean"%>
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
	ArrayList<FacultyBean>  list=dao.getAllFaculty();
	Iterator<FacultyBean> itr=list.iterator();

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
    <!--main content start-->
    
    
    
    
    
    
    <section id="main-content" style="margin-left: 240px;background-color: #A8D1DF;">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
           
            <div class="col col-xs-2 text-right ">
          <a href="FacultyAdd.jsp"  style="margin-left: 1100px;" type="button" class="btn  btn-success "> ADD NEW  &nbsp;&nbsp;<i class="fa fa-plus-square" ></i></a>
        </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               Faculty Data
              </header>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                
                  <tr>
                  <th style="color: #08746F;font-size: 17px;"><i class="icon_profile"></i> Faculty Id</th>
                    <th style="color: #08746F;font-size: 17px;"><i class="icon_profile"></i> Name</th>
                    <th style="color: #08746F;font-size: 17px;"><i class="icon_mail_alt"></i> Email</th>
                    <th style="color: #08746F;font-size: 17px;"><i class="icon_pin_alt"></i> Address</th>
                    <th style="color: #08746F;font-size: 17px;"><i class="icon_mobile"></i> Mobile</th>
                    <th style="color: #08746F;font-size: 17px;" ><i class="icon_cogs"></i> Action</th>
                  </tr>
                  <% while(itr.hasNext()){
                	  FacultyBean fac=itr.next();
                  %>
                  <tr>
                  <td style="color: #2F2F2F;font-size: 15px;"><%=fac.getFacid()%></td>
                    <td style="color: #2F2F2F;font-size: 15px;"><%=fac.getName() %></td>
                    <td style="color: #2F2F2F;font-size: 15px;"><%=fac.getEmail() %></td>
                    <td style="color: #2F2F2F;font-size: 15px;"><%=fac.getAddress() %></td>
                    <td style="color: #2F2F2F;font-size: 15px;"><%=fac.getContact() %></td>
                    
                    <td>
                      <div class="btn-group">
                        
                        <a class="btn btn-success" onclick="editstudent(<%=fac.getId()%>)"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" onclick="deletestudent(<%=fac.getId()%>)"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <%
                  }
                  %>
                      
                </tbody>
              </table>
            </section>
          </div>
        </div>
        
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nicescroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>
  <script type="text/javascript">
  function editstudent(val){
	  f=confirm("Are you sure you want to edit value ");
	  if(f)
		  document.location.href="FacultyEdit.jsp?id="+val;
	   }
  function deletestudent(val){
	  f=confirm("Are you sure you want to Detele value ");
	  if(f)
		  document.location.href="FacultyDelete.jsp?id="+val;
	   }
  
  
  
  </script>

</body>
</html>
<%
}
%>
