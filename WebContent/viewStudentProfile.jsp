<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
 <link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
 <link href="css/elegant-icons-style.css" rel="stylesheet" />
 <link href="css/font-awesome.min.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
</head>
<style>
.search-table{
    padding: 10%;
    margin-top: -6%;
}
.search-box{
    background: #c1c1c1;
    border: 1px solid #ababab;
    padding: 3%;
}
.search-box input:focus{
    box-shadow:none;
    border:2px solid #eeeeee;
}
.search-list{
    background: #fff;
    border: 1px solid #ababab;
    border-top: none;
}
.search-list h3{
    background: #eee;
    padding: 3%;
    margin-bottom: 0%;
}
</style>
<body>
<%@include file="Sidebar.jsp" %>


<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container search-table">
            <div class="search-box">
                <div class="row">
                    <div class="col-md-3">
                        
                    </div>
                    <div class="col-md-9">
                        <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Search all fields e.g. HTML">
                        <script>
                            $(document).ready(function () {
                                $("#myInput").on("keyup", function () {
                                    var value = $(this).val().toLowerCase();
                                    $("#myTable tr").filter(function () {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                    });
                                });
                            });
                        </script>
                    </div> 
                </div>
            </div>
            <div class="search-list">
     
                <table class="table" id="myTable">
                    <thead>
                    <th>Student Name</th>
                        <th>Student ID</th>
                        <tr>
                        
                            <th>Field</th>
                            <th>Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                    
                    <tr>
                        <td>HTML</td>
                        <td>Web Development</td>
                    </tr>
                    <tr>
                        <td>PHP</td>
                        <td>Web Development</td>
                    </tr>
                    <tr>
                        <td>C#</td>
                        <td>Programming Language</td>
                    </tr>
                    <tr>
                        <td>JavaScript</td>
                        <td>Web Development</td>
                    </tr>
                    <tr>
                        <td>Bootstrap</td>
                        <td>Web Design</td>
                    </tr>
                    <tr>
                        <td>Python</td>
                        <td>Programming Language</td>
                    </tr>
                    <tr>
                        <td>Android</td>
                        <td>App Development</td>
                    </tr>
                    <tr>
                        <td>Angular JS</td>
                        <td>Web Delopment</td>
                    </tr>
                    </tbody>
                </table>

            </div>
        </div>
 
 
 
 
 
 
 
 
 
 
 
  <div class="text-right">
      <div class="credits">
    </div>
<script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>

  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="js/scripts.js"></script>
</body>
</html>