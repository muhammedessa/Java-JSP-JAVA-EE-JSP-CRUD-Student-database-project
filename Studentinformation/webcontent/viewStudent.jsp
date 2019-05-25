<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html">
<title>All Student</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
 
</head>
<body>


<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


<%@page import='com.muhammedessa.Student' %>
<%@page import='com.muhammedessa.StudentDao'%>
<%@page import='java.sql.*'%>
 
<%@page import="java.util.*"%>  

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
 
 
<div class="container">
  <div class="jumbotron">
     
    <h1>All Student</h1>  
  </div>
 
</div>







   

 



<div class="container">
 
  <p>Student information :</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
      <th>ID</th>
        <th>Name</th>
        <th>password</th>
        <th>Email</th>
        <th>gender</th>
        <th>country</th>
       
         <th>Delete</th>
       <th>Edit</th>      
      </tr>
    </thead>
    
    <% 	    List<Student> list=StudentDao.getAllRecords(); %> 
    
    
<%  for(Student s:list){   %> 
     <tbody>
   
      <tr>
        <td><%= s.getId() %></td>
        <td><%= s.getName()   %></td>
        <td><%= s.getPassword() %></td>
        <td><%= s.getEmail() %></td>
        <td><%= s.getGender() %></td>
        <td><%= s.getCountry() %></td>
       <td><a href=" deleteStudent.jsp?id=<%= s.getId() %>">delete</a></td>
        <td><a href=" editStudent.jsp?id=<%= s.getId() %>">edit</a></td>
      
      </tr>
    </tbody>
         <% }    %> 
  </table>
</div>


    <a class="btn btn-info btn-lg" href="addStudent.jsp" role="button">Add student</a>














</body>
</html>