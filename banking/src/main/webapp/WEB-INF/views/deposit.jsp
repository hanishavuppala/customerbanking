<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="Header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Make Deposit</title>
</head>
<body>
<body>

	<form:form method="POST"
		action="doDeposit.obj?accountNumber=${accountNumber}"
		modelAttribute="BankUser">
		<table>
			<tr>
				<td><form:label path="depositAmount">Enter money to deposit</form:label></td>
				<td><form:input path="depositAmount" size="11" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Deposit Money" /></td>
			</tr>
		</table>
	</form:form>
	</div>
	<div>
		<a href="back.obj">Home</a>
	</div>
	</div>
</body>
</body>
</html>