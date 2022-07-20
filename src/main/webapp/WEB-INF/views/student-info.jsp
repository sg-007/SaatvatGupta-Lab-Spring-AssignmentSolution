<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Student Info</title>
</head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<body>

	<div class="container">
		<h1>Student Info</h1>
		<table>
			<thead>
				<tr>
					<th>&nbsp;Student Id&nbsp;</th>
					<th>&nbsp;First Name&nbsp;</th>
					<th>&nbsp;Last Name&nbsp;</th>
					<th>&nbsp;Course&nbsp;</th>
					<th>&nbsp;Country&nbsp;</th>
					<th>&nbsp;Action&nbsp;</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${studentInfo}" var="student">
					<tr>
						<td><c:out value="${student.id}" /></td>
						<td><c:out value="${student.firstName}" /></td>
						<td><c:out value="${student.lastName}" /></td>
						<td><c:out value="${student.course}" /></td>
						<td><c:out value="${student.country}" /></td>
						<td>
						&nbsp;
						<a href="/Student/update-student?id=${student.id}"> Update </a>
						&nbsp;|&nbsp; 
						<a href="/Student/delete-student?id=${student.id}"> Delete </a>
						&nbsp;
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
<p></p><p></p>
<a href="/Student/show-form">Add Students</a>
</body>
</html>