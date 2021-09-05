<%@page import="java.util.Iterator"%>
<%@page import="Bean_package.ResultBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="AdminDao.DaoFactory"%>
<%@ page language="java"   session="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
HttpSession session=request.getSession(false);
if(session==null){
	response.sendRedirect("login.jsp");
	}
else
{
	DaoFactory dao=DaoFactory.getDao();
	ArrayList<ResultBean> list=dao.getAllresult();
	Iterator<ResultBean> itr=list.iterator();
	

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
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <title></title>


  <link href="css/bootstrap.min.css" rel="stylesheet">
  
  <link href="css/bootstrap-theme.css" rel="stylesheet">
 
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

</head>
<style>
.panel-table .panel-body{
  padding:0;
}

.panel-table .panel-body .table-bordered{
  border-style: none;
  margin:0;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type {
    text-align:center;
    width: 100px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:last-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:last-of-type {
  border-right: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:first-of-type {
  border-left: 0px;
}

.panel-table .panel-body .table-bordered > tbody > tr:first-of-type > td{
  border-bottom: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr:first-of-type > th{
  border-top: 0px;
}

.panel-table .panel-footer .pagination{
  margin:0; 
}

/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col{
 line-height: 34px;
 height: 34px;
}

.panel-table .panel-heading .col h3{
 line-height: 30px;
 height: 30px;
}

.panel-table .panel-body .table-bordered > tbody > tr > td{
  line-height: 34px;
}


</style>
<body>
  <!-- container section start -->
 <jsp:include page="Sidebar.jsp"></jsp:include>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<div class="container">
    <div class="row" style="margin-top: 100px;">
    
    <p></p>
    
    
   
    <p> </p><p> </p>
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title"> All Result</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                    <a href="resultsheet.jsp"  type="button" class="btn btn-sm btn-primary btn-create">Create New</a>
                  </div>
                </div>
              </div>
              <div class="panel-body" >
                <table class="table table-striped table-bordered table-list" >
                  <thead>
                    <tr>
                       
                        
                        <th>Student ID</th>
                        <th>Student Course</th>
                        <th>Physics</th>
                        <th>Biology</th>
                        <th>Chemistry </th>
                        <th>Social Science</th>
                        <th>Mathematics</th>
                        <th>Computer</th>
                        <th>Drawing</th>
                        <th>Action</th>
                      </tr>
                  
                  <% while(itr.hasNext()){
                	  ResultBean res=itr.next();
                  %>
                          <tr>
                            
                            <td><%=res.getStudentid() %></td>
                            <td><%=res.getCourse() %></td>
                            <td><%=res.getFoc() %></td>
                            <td><%=res.getOs() %></td>
                            <td><%=res.getC() %></td>
                            <td><%=res.getJava() %></td>
                            <td><%=res.getCompiler()%></td>
                            <td><%=res.getDs()%></td>
                            <td><%=res.getSwengineering() %></td>
                            <td>
                               <a onclick="deleteresult(<%=res.getId()%>)" class="btn btn-danger"  title="delete"><i class="fa fa-trash" ></i></a>
                
                            </td>
                          </tr>
                          <%
                  }
                  %>
                        </tbody>
                        
                    
                </table>
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

</div></div></div>
            
        
    
    
    
    
    
    

  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
 <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="js/scripts.js"></script>
  
  <script type="text/javascript">
  
  function deleteresult(val){
	  f=confirm("Are you sure you want to Detele value ");
	  if(f)
		  document.location.href="Resultdelete.jsp?id="+val;
	   }
  
  
  
  </script>

</body>

</html>
<%
}
%>
 