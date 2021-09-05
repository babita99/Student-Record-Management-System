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
	ArrayList<StudentBean>list=dao.getAllStudents();
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

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
     
   
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

</head>
<style>
/*By DjelalEddine@gmail.com*/
#user .avatar {
    width:60px;
	}
#user .avatar > img{
	width:50px;
	height:50px;
	border-radius:10%;
	}
/*Card*/
#user .panel-thumb{
margin:5px auto;
text-align:center;	
	}
#user .panel-thumb .avatar-card {
text-align:center;
height:300px;
margin:auto;
overflow:hidden;
}	
#user .panel-thumb .avatar-card > img{
	max-width:200px;
	max-height:200px;
	}

/* table*/
#user .panel-table{
  animation-duration:3s;
}

#user .panel-table .panel-body .table{
  margin:0px;
}
#user .panel-table .panel-body {
  padding:0px;
}
#user .panel-table .panel-body .table-bordered > thead > tr > th{
  text-align:center;
}
#user .panel-table .panel-footer {
  height:60px;
  padding:0px;
}
</style>
<body>
  <!-- container section start -->
<jsp:include page="Sidebar.jsp"></jsp:include>      
    <!--main content start-->
   


<div class="container" style="margin-top:10px;margin-left: 270px;background-color: #A8D1DF;">
<div class="row">
<div id="user" class="col-md-12"  style="margin-top: 100px; width: 1300px;">
  <div class="panel panel-primary panel-table animated slideInDown">
   <div class="panel-heading " style="padding:5px;">
        <div class="row">
        <div class="col col-xs-3 text-left">
            <a href="#list" class="btn btn-default" aria-controls="list" role="tab" data-toggle="tab"><i class="fa fa-list-alt"></i>table</a>
            <a href="#thumb" class="btn btn-default" aria-controls="thumb" role="tab" data-toggle="tab"><i class="fa fa-picture-o" aria-hidden="true"></i>card</a>
        </div>
        
        <div class="col col-xs-2 well text-center" style="padding:1px;">    
            
        </div>
        <div class="col col-xs-2 text-right ">
          <a href="StudentRegister.jsp"  type="button" class="btn  btn-success "> ADD NEW<i class="fa fa-plus-square" ></i></a>
        </div>
        <div class="col col-xs-2 text-right ">
         
        </div>
        </div>
    </div>
    
   <div class="panel-body">
     <div class="tab-content">
      <div role="tabpanel" class="tab-pane active" id="list">
       <table class="table table-striped table-bordered table-list">
        <thead>
         <tr>
            <th class="avatar">photo</th>
            <th>Student id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Course Name</th>
            <th>Course Stream</th>
            <th>Semester/Year</th>
            
            
            <th><em class="fa fa-cog"></em></th>
          </tr>
          <% while(itr.hasNext()){
                	  StudentBean st=itr.next();
                  %> 
         </thead>
         
         <tbody>
          <tr class="ok">
             <td class="avatar"><img src="https://www.freeiconspng.com/uploads/profile-icon-1.png"></td>
             <td style="#1A2732;font-size: 17px;"><%=st.getStudentid() %></td>
             <td style="#1A2732;font-size: 17px;"><%=st.getSfanem() %> </td>
             <td style="#1A2732;font-size: 17px;"><%=st.getSlname() %> </td>
             <td style="#1A2732;font-size: 17px;"><%=st.getEmail() %></td>
             <td style="#1A2732;font-size: 17px;"><%=st.getCoursename() %> </td>
             <td style="#1A2732;font-size: 17px;"><%=st.getCoursestream() %> </td>
             <td style="#1A2732;font-size: 17px;"><%=st.getSemester() %> </td>
             
             
             <td align="center">
               <a onclick="editstudent(<%=st.getId()%>)" class="btn btn-primary" title="Edit"  ><i class="fa fa-pencil"></i></a>
               <a onclick="deletestudent(<%=st.getId()%>)" class="btn btn-danger"  title="delete"><i class="fa fa-trash" ></i></a>
                
             </td>
          </tr>
          <%
           }
          %>
                   
          </tbody>
        </table>
      </div>
        
      
         </div>
		 </div>
       </div>
       
       </div>
      </div>
      </div><!-- END id="thumb" -->
       
     </div><!-- END tab-content --> 
    </div>
   
   <div class="panel-footer text-center">
   		<ul class="pagination">
	 	  <li ><a>«</a></li>
		   <li class="active"><a href="#">1</a></li>
           <li ><a href="#">2</a></li>
           <li ><a href="#">3</a></li>
		   <li ><a>»</a></li>
         </ul>
   </div>
  </div><!--END panel-table-->
</div>
</div>
</div>
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nicescroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
 
  <script src="js/scripts.js"></script>
  <script>
  function filter($state){
	  var x   = document.getElementsByClassName($state);
	  var btn = document.getElementById($state);

	  if (btn.className == "btn"){
	      btn.className = btn.dataset.class;
	  	for (i = 0; i < x.length; i++) {x[i].className = " animated fadeInLeft "+$state;}
	  	}
	  	else{ 
	  	for (i = 0; i < x.length; i++) {x[i].className = " animated fadeOutRight "+$state;}
	  	 btn.className = "btn";
	  	}

	  }
}
</script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
 
  <script src="js/scripts.js"></script>
  <script type="text/javascript">
  function editstudent(val){
	  f=confirm("Are you sure you want to edit value ");
	  if(f)
		  document.location.href="StudentEdit.jsp?id="+val;
	   }
  function deletestudent(val){
	  f=confirm("Are you sure you want to Detele value ");
	  if(f)
		  document.location.href="StudentDelete.jsp?id="+val;
	   }
  </script>

</body>
</html>
<%
}
%>
