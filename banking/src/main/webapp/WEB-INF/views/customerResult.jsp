<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/WebContent/css/displaytag.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Results</title>
</head>
<body>
	<display:table name="BankUser" pagesize="20" sort="list" export="false"
		id="display">
		<%-- <display:setProperty name="export.pdf.filename" value="Banking.pdf"></display:setProperty>
		<display:setProperty name="export.excel.filename" value="Banking.xls"></display:setProperty>
		<display:setProperty name="export.csv.filename" value="Banking.csv"></display:setProperty> --%>

		<display:column property="customerId" headerClass="sortable"
			title="Customer Id" paramId="customerId"></display:column>

		<display:column property="firstName" headerClass="sortable"
			title="First Name" paramId="firstName"></display:column>

		<display:column property="lastName" headerClass="sortable"
			title="Last Name" paramId="lastName"></display:column>

		<display:column property="gender" headerClass="sortable"
			title="Gender" paramId="gender"></display:column>

		<display:column property="email" headerClass="sortable" title="Email"
			paramId="email"></display:column>

		<display:column property="accountType" headerClass="sortable"
			title="Account Type" paramId="accountType"></display:column>

		<display:column property="currency" headerClass="sortable"
			title="Currency" paramId="currency"></display:column>

		<display:column property="accountBalance" headerClass="sortable"
			title="Account Balance" paramId="accountBalance"></display:column>

	</display:table>
</body>
</html>