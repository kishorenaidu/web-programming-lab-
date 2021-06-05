<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table.bord {
		border:1px solid black;
		border-collapse: collapse;
	}
	table.bord td {
		border:1px solid black;
		border-collapse: collapse;
	}
</style>
</head>
<body>
	<h1 align="center">PAYSLIP</h1>
	<% 
		LocalDateTime currDate = LocalDateTime.now();
		DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		String formattedDate = currDate.format(myFormatObj);
		
	%>
	<table style="width:100%;">
		<colgroup>
       		<col span="1" style="width: 25%;">
       		<col span="1" style="width: 25%;">
       		<col span="1" style="width: 25%;">
       		<col span="1" style="width: 25%;">
    	</colgroup>
		<tr>
			<td><b>Employee Name:</b></td>
			<td><%=request.getAttribute("empName") %></td>
			<td align="right"><b>Date: </b></td>
			<td><b> <%=formattedDate %> </b></td>
		</tr>
		<tr>
			<td><b>Designation:</b></td>
			<td><%=request.getAttribute("empDesignation") %></td>
			<td></td>
			<td></td>
		<tr>
		<tr>
			<td><b>Month: </b><%=currDate.getMonth() %></td>
			<td><b>Year: </b><%=currDate.getYear() %></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<br>
	<br>
	<table class="bord" style="width:100%;">
		<tr>
			<td colspan="2"><h3 align="center">Earnings</h3></td>
			<td colspan="2"><h3 align="center">Deductions</h3></td>
		</tr>
		<tr>
			<td>Basic & DA</td>
			<td><%=request.getAttribute("basicSal") %></td>
			<td>Professional Tax</td>
			<td><%=request.getAttribute("tax") %></td>
		</tr>
		<tr>
			<td>Medical</td>
			<td><%=request.getAttribute("medical") %></td>
			<td>TDS/IT</td>
			<td>0.00</td>
		</tr>
		<tr>
			<td>Conveyance</td>
			<td><%=request.getAttribute("conveyance") %></td>
			<td></td>
			<td>-</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td>-</td>
		</tr>
		<tr>
			<td>Total Addition</td>
			<td><%=request.getAttribute("earning") %></td>
			<td>Total Deduction</td>
			<td><%=request.getAttribute("deduction") %></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td>NET SALARY</td>
			<td><%=request.getAttribute("totalSal") %></td>
		</tr>	
	</table>
</body>
</html>