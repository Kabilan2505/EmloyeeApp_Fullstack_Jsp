<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="stag" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Employees
List</title>



  <style>
          

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
          
          
    
   
    
    
    
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
 href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
 src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js">
</script>
<script
 src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js">
</script>
</head>
<body>
 
<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>
<div class="topnav">
 <a  href="/home">Home</a>
  <a   href="/users" type="button">Employee Management</a>
  <a  href="/users/new">Add Employee</a>
  
  <a class="active"  href="/search" type="button">List By gender</a>
  
 
</div>




    <div class="container">
        
        <h1>Employees List By Gender</h1>
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
         
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Gender</th>
                    
                    <th>Department</th>
                    <th>Mobile No</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
              <c:forEach items="${ByGender}" var="user">
    <tr>
        <td>${user.id}</td>
        <td>${user.name}</td>
         <td>${user.age}</td>
        <td>${user.email}</td>
         <td>${user.gender}</td>
        <td>${user.dept}</td>
         <td>${user.mob_no}</td>
         <td> 
         <a href="/users/edit/${user.id}"
   class="btn btn-primary" type="button">Update</a>
        <a href="/delete/${user.id}"
   class="btn btn-danger" type="button">Delete</a>
         </td>
        
    </tr>
</c:forEach>
            </tbody>
        </table>
    </div>
    
    <div class="container">
    <a class="btn btn-dark" href="/home" type="button">Back To Home</a>
       <a class="btn btn-danger" href="/users" type="button">Back To Employees List</a>
    </div>
    
    
    

</body>
</html>