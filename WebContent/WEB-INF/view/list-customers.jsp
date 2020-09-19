<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Customer List</title>
		
		<!-- Reference your style sheet -->
		<link type="text/css" 
		      rel="stylesheet"
		      href="${pageContext.request.contextPath}/resources/css/style.css" />
	</head>
	<body>
		<h1>List customers</h1>
		
		<div id="wrapper">
			<div id="header">
				<h2>Customer relationship manager</h2>
			</div>
		</div>
		<div id="container">
			<div id="content">
			<input type="button" value="Add Customer" 
			  onclick="window.location.href='addCustomer'; return false" 
			  class="add-button" />
				
				<table>
					<tr>
						<th>First name</th>
						<th>Last name</th>
						<th>Email</th>
					</tr>
					
					<c:forEach var="customer" items="${customers}">
						<c:url var="updateLink" value="/customer/showUpdateForm">
							<c:param name="customerId" value="${customer.id}"></c:param>
						</c:url>
						<tr>
							<td> ${customer.firstName} </td>
							<td> ${customer.lastName} </td>
							<td> ${customer.email} </td>
							<td><a href="${updateLink}">Update</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</body>
</html>