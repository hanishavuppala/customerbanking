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
<style type="text/css">
table {
	border: 1px solid #666;
	width: 80%;
	margin: 20px 0 20px 0 !important;
}

th,td {
	padding: 2px 4px 2px 4px !important;
	text-align: left;
	vertical-align: top;
}

thead tr {
	background-color: #fc0;
}

th.sorted {
	background-color: orange;
}

th a,th a:visited {
	color: black;
}

th a:hover {
	text-decoration: underline;
	color: black;
}

th.sorted a,th.sortable a {
	background-position:;
	display: block;
	width: 100%;
}

/* th.sortable a { */
/* 	background-image: url(../img/arrow_off.png); */
/* } */

/* th.sortable a { */
/* 	background-image: url(../img/arrow_down.png); */
/* } */

/* th.sortable a { */
/* 	background-image: url(../img/arrow_up.png); */
/* } */

tr.odd {
	background-color: #fff
}

tr.tableRowEven,tr.even {
	background-color: #fea
}

div.exportlinks {
	background-color: #eee;
	border: 1px dotted #999;
	padding: 2px 4px 2px 4px;
	margin: 2px 0 10px 0;
	width: 79%;
}

span.export {
	padding: 0 4px 1px 20px;
	display: inline;
	display: inline-block;
	cursor: pointer;
}

/* span.excel { */
/* 	background-image:url(../img/ico_file_excel.png); */
/* } */

/* span.csv { */
/* 	background-image: url(../img/ico_file_csv.png); */
/* } */
/* span.xml { */
/* 	background-image: url(../img/ico_file_xml.png); */
/* } */

/* span.pdf { */
/* 	background-image: url(../img/ico_file_pdf.png); */
/* } */

/* span.rtf { */
/* 	background-image: url(../img/ico_file_rtf.png); */
/* } */

span.pagebanner {
	background-color:#eee;
	border: 1px dotted #999;
	padding: 2px 4px 2px 4px;
	width: 79%;
	margin-top: 10px;
	display: block;
	border-bottom: none;
}

span.pagelinks {
	background-color: #eee;
	border: 1px dotted #999;
	padding: 2px 4px 2px 4px;
	width: 79%;
	display: block;
	border-top: none;
	margin-bottom: -5px;
}


.group-1 {
    font-weight:bold;
    padding-bottom:10px;
    border-top:1px solid black;
}
.group-2 {
    font-style:italic;
    border-top: 1px solid black;

}
.subtotal-sum, .grandtotal-sum {
    font-weight:bold;
    text-align:right;
}
.subtotal-header {
    padding-bottom: 0px;
    border-top: 1px solid white;
}
.subtotal-label, .grandtotal-label {
    border-top: 1px solid white;
    font-weight: bold;
}
.grouped-table tr.even {
    background-color: #fff;
}
.grouped-table tr.odd {
    background-color: #fff;
}
.grandtotal-row {
    border-top: 2px solid black;
}


</style>
</head>
<body>
	<div align="center">
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
	</div>
</body>
</html>