<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Save Customer</title>
		
		<!-- Reference your style sheet -->
		<link type="text/css" 
		      rel="stylesheet"
		      href="${pageContext.request.contextPath}/resources/css/style.css" />
		
		<link type="text/css" 
		      rel="stylesheet"
		      href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
		      
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<h2>CRM</h2>
			</div>
		</div>
		
		<div id="container">
			<div id="content">
				<h2>Save customer</h2>
				
				<form:form action="saveCustomer" modelAttribute="customer" method="POST">
					<table>
						<tr>
							<td>First name</td>
							<td><form:input path="firstName" /></td>
						</tr>
						<tr>
							<td>Last name</td>
							<td><form:input path="lastName" /></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><form:input path="email" /></td>
						</tr>
						<tr>
							<td></td>
							<td> <input type="submit" value="Save" class="save" /> </td>
						</tr>
				    </table>
				</form:form>
				
				<div style="clear; both;"></div>
				<p>
					<a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
				</p>
			</div>
		</div>
	</body>
</html>