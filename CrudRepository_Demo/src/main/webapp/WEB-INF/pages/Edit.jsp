<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>EditUser</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<form:form action="Update" modelAttribute="user" name="forms">

					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Username</th>
								<th>Phoneno</th>
								<th>City</th>
								<th>Update</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}">
								<c:if test="${list.id==user.id}">
									<tr>
										<td>${list.id}</td>
										<form:hidden path="id" value="${list.id}" />
										<td><form:input path="userName" value="${list.userName}" /></td>
										<td><form:input path="phoneNo" value="${list.phoneNo}" /></td>
										<td><form:input path="city" value="${list.city}" /></td>



										<td><a onclick="forms.submit()" href="#"> <span
												class="glyphicon glyphicon-arrow-up"></span></a></td>



										<td><a href="Delete?id=${user.id}"> <span
												class="glyphicon glyphicon-trash"></span></a></td>
									</tr>
								</c:if>
								<c:if test="${list.id != user.id}">
									<tr>
										<td>${list.id}</td>
										<td>${list.userName}</td>
										<td>${list.phoneNo}</td>
										<td>${list.city}</td>
										<td><a href="Edit?id=${list.id}">Edit</a></td>
										<td><a href="Delete?id=${user.id}"> <span
												class="glyphicon glyphicon-trash"></span></a></td>
									</tr>
								</c:if>
							</c:forEach>


						</tbody>



					</table>
				</form:form>
</body>
</html>


<%-- <form:form action="Update" modelAttribute="user" name="forms">
			
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
				<tr>
					<th>Id</th>
					<th>Username</th>
					<th>Phoneno</th>
					<th>City</th>

					<th>Edit</th>
					<th>Delete</th>

				</tr>
				<c:forEach var="list" items="${list}">
					<c:if test="${list.id==user.id}">
						<tr>
							<td>${list.id}</td>
							<form:hidden path="id" value="${list.id}" />
							<td><form:input path="userName" value="${list.userName}" /></td>
							<td><form:input path="phoneNo" value="${list.phoneNo}" /></td>
							<td><form:input path="city" value="${list.city}" /></td>



							<td><a onclick="forms.submit()" href="#"> <span
									class="glyphicon glyphicon-pencil"></span></a></td>



							<td><a href="Delete?id=${user.id}"> <span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>
					</c:if>
					<c:if test="${list.id != user.id}">
						<tr>
							<td>${list.id}</td>
							<td>${list.userName}</td>
							<td>${list.phoneNo}</td>
							<td>${list.city}</td>
							<td><a href="Edit?id=${list.id}">Edit</a></td>
							<td><a href="Delete?id=${user.id}"> <span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>
					</c:if>
				</c:forEach>
			</table>

		</form:form> --%>