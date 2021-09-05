<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
{
  box-sizing: border-box;
  margin: 0;
}

body {
  font-family: sans-serif;
}

.container {
  display: flex;
  height: 100vh;
}

.left {
  overflow: hidden;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  justify-content: center;
  -webkit-animation-name: left;
          animation-name: left;
  -webkit-animation-duration: .8s;
          animation-duration: .8s;
  -webkit-animation-fill-mode: both;
          animation-fill-mode: both;
  -webkit-animation-delay: .5s;
          animation-delay: .5s;
  margin-top: -50px;
}

#right {
  flex: 1;
  background-color: black;
  transition: 1s;
  background-image: url(https://wallpaperplay.com/walls/full/2/d/8/13598.jpg); 
  background-size: cover; */
  background-repeat: no-repeat;
  background-position: center;
}
#right:before{
  content: '';
  position: fixed;
  width: 100vw;
  height: 100vh;
  top: 0;
 
}

.header > h2 {
  margin: 0;
  color: #3c6aff;
  text-align: center;
}

.header > p {
  margin-top: 10px;
  font-weight: normal;
  font-size: 12px;
  color: rgba(0, 0, 0, 0.4);
  line-height: 1.5;
  text-align: justify;
}

.form {
  width: 80%;
  display: flex;
  flex-direction: column;
  text-align: center;
  margin: 0 auto;
}

.form > p {
  text-align: right;
}

.form > p > a {
  color: #000;
  font-size: 14px;
}

.form-field {
  height: 46px;
  padding: 0 16px;
  border: none;
  border-bottom: 2px solid #d2e2ff;
  
  background-image: url(https://www.cosmopolitanme.com/public/styles/980px_1470px_fullimage_scale/public/images/2018/07/17/learn.jpg?itok=zAZyAaxN); 
  border-radius: 4px;
  font-family: sans-serif;
  outline: 0;
  transition: .2s;
  margin-top: 20px;
}

.form-field:focus {
  border-color: #0f7ef1;
}

.form > .button {
  padding: 12px 10px;
  border: 0;
  background: #3c6aff;
  border-radius: 3px;
  margin-top: 10px;
  color: #fff;
  letter-spacing: 1px;
  font-family: sans-serif;
  text-decoration: none;
}



.a1 {
  -webkit-animation-delay: .9s;
          animation-delay: .9s;
}

.a2 {
  -webkit-animation-delay: 1s;
          animation-delay: 1s;
}

.a3 {
  -webkit-animation-delay: 1.2s;
          animation-delay: 1.2s;
}

.a4 {
  -webkit-animation-delay: 1.4s;
          animation-delay: 1.4s;
}

.a5 {
  -webkit-animation-delay: 1.6s;
          animation-delay: 1.6s;
}

.a6 {
  -webkit-animation-delay: 1.8s;
          animation-delay: 1.8s;
}

@-webkit-keyframes fadeInUp {
  from {
    opacity: 0;
    -webkit-transform: translate3d(0, 30%, 0);
    transform: translate3d(0, 30%, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    -webkit-transform: translate3d(0, 30%, 0);
    transform: translate3d(0, 30%, 0);
  }

  to {
    opacity: 1;
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}
@-webkit-keyframes left {
  0% {
    opacity: 0;
    width: 0;
  }
  100% {
    opacity: 1;
    padding: 20px 40px;
    width: 500px;
  }
}
@keyframes left {
  0% {
    opacity: 0;
    width: 0;
  }
  100% {
    opacity: 1;
    padding: 20px 40px;
    width: 500px;
  }
}
</style>
<body>

<body onload="randombg()">
  <div class="container">
  
    <div class="left">
      <img src="https://www.academyfront.com/images/blog/cloud-based-school.png" class="animation a6" style="margin: 0 auto 30px;width: 230px">
      <div class="header">
      <%
        if(request.getAttribute("error")!=null){
        %>
        <div class="alert alert-danger" role="alert">
  <%=request.getAttribute("error")%>
</div>
        
        <%
        }
        %>
        <h2 class="animation a1">Login Panel</h2>
        <p class="animation a2" style="color: #5DCC65;font-size: medium;margin-left: 70px;">Welcome to Student Management System</p>
        </div>
        
      <form class="form" action="UserLoginAction" method="post">
      
        <input type="email" class="form-field animation a3"  name="email" placeholder="Enter Email"  style="font-size: medium;">
        <input type="password" class="form-field animation a4" name="password" placeholder="Password" style="font-size: medium;">
        
        <div class="animation a5" style="margin: 20px">
        
          <input type="checkbox" id="check" class="animation a5" name="" required="required"><label for="check"  style="padding-left: 10px;color: #afafaf"  >Remember my password</label>
        </div>
        <button type="submit" class="btn btn-primary btn-lg" >Login</button>
      </form>
    </div>
    <div id="right"></div>
  </div>
</body>
</html>
<script>
function randombg() {
	  var random = Math.floor(Math.random() * 4) + 0;
	  var bigSize = [
	    "url('https://www.racq.com.au/-/media/racqgroupmvc/feature/article/featuredimages/general/university-students.jpg?h=661&w=1000&rev=b9ceb058e225473e9cfa442de99b233c&hash=DE75A20D679C4C730A9137E61C1BF928A92150CC')", 
	    "url('https://image.shutterstock.com/image-photo/portrait-smiling-young-college-student-260nw-1192615495.jpg')",
	    "url('https://www.begalileo.com/blog/wp-content/uploads/2018/12/Tips-Successful-Student-beGalileo-Blog-3.jpg')",
	    "url('https://www.timeshighereducation.com/sites/default/files/styles/article785xauto/public/pa-consulting-modern-student-istock-1152767923_0.jpg?itok=G6Ny_tin')"
	  ];
	  document.getElementById("right").style.backgroundImage = bigSize[random];
	}
</script>
