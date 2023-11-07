<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
    <!-- Include the Bootstrap CSS link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
    crossorigin="anonymous">
    
    
    
    
    <style type="text/css">
          html {
  height:100%;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.bg {
  animation:slide 3s ease-in-out infinite alternate;
  background-image: linear-gradient(-60deg, #6c3 50%, #09f 50%);
  bottom:0;
  left:-50%;
  opacity:.5;
  position:fixed;
  right:-50%;
  top:0;
  z-index:-1;
}

.bg2 {
  animation-direction:alternate-reverse;
  animation-duration:4s;
}

.bg3 {
  animation-duration:5s;
}



h1 {
  font-family:monospace;
}

@keyframes slide {
  0% {
    transform:translateX(-25%);
  }
  100% {
    transform:translateX(25%);
  }
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
    
    </style>
          
          
          
          
          
</head>
<body>
<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>
<div class="topnav">
 <a  href="/home">Home</a>
  <a   href="/users" type="button">Employee Management</a>
  <a   class="active" href="/users/new">Add Employee</a>

  
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
            <h1 class="text-center">Add Employee</h1>
            <div class="card-body">
            
             <form  action="/saveusers" method="post" modelAttribute="user">
            <div class="mb-3">
                <label path="name" class="form-label">Name</label>
                <input path="name" type="text" class="form-control" id="name" name="name" required placeholder="Enter Your Name">
            </div>
            <div class="mb-3">
             <label path="age" class="form-label">Age</label>
             <input path="age" type="number" class="form-control" id="age" name="age" reqiured placeholder="Enter Your Age">
            </div>
              <div class="mb-3">
             <label path="dept" class="form-label">Department</label>
             <input path="dept" type="text" class="form-control" id="dept" name="dept" reqiured placeholder="Enter Your Department">
            </div>
              <div class="mb-3">
             <label path="email" class="form-label">Email Id</label>
             <input path="email" type="text" class="form-control" id="email" name="email" reqiured placeholder="Enter Your Email" >
            </div>
              <div class="mb-3">
             <label path="mob_no" class="form-label">Mobile N0</label>
             <input path="mob_no" type="number" class="form-control" id="mob_no" name="mob_no" reqiured placeholder="Enter Your Mobile Number">
            </div>
            <div class="mb-3">
    <label for="gender" class="form-label">Gender</label>
    <select class="form-select" id="gender" name="gender" required >
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
    </select>
</div>
          <div class="col-lg-5 col-md-5 col-sm-5 container justify-content-center">
					  <button type="submit" class="btn btn-primary">
						  Submit
					  </button>
					    <a href="/cancel"
   class="btn btn-danger" type="button">cancel</a>
					
					 
			</div>
        </form>
            
            </div>
            </div>
            </div>
            </div>

</body>
</html>

      
       
