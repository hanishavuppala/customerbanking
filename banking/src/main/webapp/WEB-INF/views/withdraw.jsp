<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="Header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw</title>
</head>
<body>
	<form:form method="POST"
		action="doWithDraw.obj?accountNumber=${accountNumber}"
		modelAttribute="BankUser">
		<table>
			<tr>
				<td><form:label path="withdrawAmount">Enter money to Withdraw</form:label></td>
				<td><form:input path="withdrawAmount" size="11" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Withdraw Money" /></td>
			</tr>
		</table>
	</form:form>
	</div>
	<div>
		<a href="back.obj">Home</a>
	</div>
	</div>
</body>
</html>