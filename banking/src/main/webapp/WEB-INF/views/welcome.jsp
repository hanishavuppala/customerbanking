<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Banking Application</title>
</head>
<body>
	<div>
		<h1 align="center">Banking Application</h1>
		<div>
			<form:form method="POST" action="searchAccount.obj"
				modelAttribute="BankUser">
				<table>
					<tr>
						<td><form:label path="accountNumber">Account Number</form:label></td>
						<td><form:input path="accountNumber" size="15" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Search Account" /></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>