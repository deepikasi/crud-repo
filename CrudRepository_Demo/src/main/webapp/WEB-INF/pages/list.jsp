<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
      pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>ListUser</title>
</head>
<body>
<div class="container-fluid">
<div class="row">
 <div class="col-sm-4"></div>
 <div class="col-sm-4">
 
  <table class="table table-striped">
  <thead>
  <tr>
  			<th>Id</th>
            <th>Username</th>
            <th>Phoneno</th>
            <th>City</th>
            <th>email</th>
            <th>Delete</th>
            <th>Edit</th>
  </tr>
  </thead>
  
   <tbody>
   			<c:forEach var="lis" items="${User }">
                  <tr>
                        <td>${lis.id }</td>
                        <td>${lis.userName }</td>
                        <td>${lis.phoneNo }</td>
                         <td>${lis.city}</td>
                           <td>${lis.email}</td>
                        <td><a href="Delete?id=${lis.id }"><span
									class="glyphicon glyphicon-trash"></span></a></td>
									
                        <td><a href="Edit?id=${lis.id }"> <span
									class="glyphicon glyphicon-pencil"></span></a></td>
                  </tr>
            </c:forEach>
   	
   </tbody>
 </table>
 </div>
 <div class="col-sm-4"></div>
      
</body>
</html>

<%-- <table >
            <th>Id</th><br>
            <th>Username</th><br>
            <th>Phoneno</th><br>
            <th>City</th>
            <c:forEach var="lis" items="${User }">
                  <tr>
                        <td>${lis.id }</td>
                        <td>${lis.userName }</td>
                        <td>${lis.phoneNo }</td>
                         <td>${lis.city}</td>
                        <td><a href="Delete?id=${lis.id }"><span
									class="glyphicon glyphicon-trash"></span></a></td>
									
                        <td><a href="Edit?id=${lis.id }"> <span
									class="glyphicon glyphicon-pencil"></span></a></td>
                  </tr>
            </c:forEach>

      </table> --%>