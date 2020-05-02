<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="Header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Acknowledgment</title>
</head>
<body>
	<div align="center">
		 <H1 style="color: green;">${updatedBalance}</H1>
	</div>
	<div align="center">
		<a href="back.obj">Home</a>
		<a href="makeDeposit.obj?id=${accountNumber}">Make Deposit</a>
	</div>
</body>
</html>