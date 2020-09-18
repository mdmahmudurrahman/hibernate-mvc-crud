<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Customer List</title>
	</head>
	<body>
		<h1>List customers</h1>
		
		<div id="wraper">
			<div id="header">
				<h2>Customer relationship manager</h2>
			</div>
		</div>
		<div id="container">
			<div id="content">
				<table>
					<tr>
						<th>First name</th>
						<th>Last name</th>
						<th>Email</th>
					</tr>
					
					<c:forEach var="customer" items="${customers}">
						<tr>
							<td> ${customer.firstName} </td>
							<td> ${customer.lastName} </td>
							<td> ${customer.email} </td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</body>
</html>