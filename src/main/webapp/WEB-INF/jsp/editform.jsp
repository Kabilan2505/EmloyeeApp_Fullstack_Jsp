<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
          
          
          
          <style type="text/css">
          html {
  height:100%;
}

body {
  margin:0;
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

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
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
  <a href="/users" type="button">Employee Management</a>
  <a href="/users/new">Add Employee</a>
  <a class="active"  >Update Employee</a>
 
 
</div>
<br>
<br>
<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>
<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
            <h1 class="text-center">Update Employee</h1>
            <div class="card-body">
                <form action="/update/${user.id}" method="POST">
                    <div class="form-group">
                        <label> Name</label>
                        <input
                            type="text"
                            name="name"
                            value="${user.name}"
                            class="form-control"
                            placeholder="Enter Employee Name"/>
                    </div>

                    <div class="form-group">
                        <label>Age</label>
                        <input
                            type="number"
                            name="age"
                            value="${user.age}"
                            class="form-control"
                            placeholder="Employee age"/>
                    </div>
                    
                    
                    <div class="form-group">
                        <label>Department</label>
                        <input
                            type="text"
                            name="dept"
                            value="${user.dept}"
                            class="form-control"/>
                    </div>
                    

                    <div class="form-group">
                        <label>Email Id</label>
                        <input
                            type="email"
                            name="email"
                            value="${user.email}"
                            class="form-control"
                            placeholder="Enter Employee Email"/>
                    </div>

                    <div class="form-group">
                        <label>Mobile no</label>
                        <input
                            type="number"
                            name="mob_no"
                            value="${user.mob_no}"
                            class="form-control"/>
                    </div>
                                        <div class="form-group">
   <label for="gender">Gender</label>
<select class="form-select" name="gender" id="gender">
    <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
    <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
      <option value="other" ${user.gender == 'other' ? 'selected' : ''}>Other</option>
</select>

</div>
                    <br>
                    <br>
                    <div class="col-lg-5 col-md-5 col-sm-5 container justify-content-center">
                        <button type="submit" class="btn btn-success">
                          Update
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
