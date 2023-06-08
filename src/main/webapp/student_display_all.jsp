<%@page import="student_details.StudentInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="student_display_all.css" type="text/css">
</head>
<body>
<nav id="topbar">
		<div id="logo">
			<img src="./gok.png" alt="logo" style="width: 100px;">
		</div>
		<div id="kseab">KARNATAKA SCHOOL EXAMINATION AND ASSESSMENT
			BOARD</div>
	</nav>
	<div id="msg">Details of all Students</div>
	<%
	List<StudentInfo> l = (List<StudentInfo>) request.getAttribute("detailsAll");
	%>
	<table border="">
		<tr>
			<td rowspan="2" align="center">USN</td>
			<td rowspan="2" align="center">NAME</td>
			<td rowspan="2" align="center">DATE OF BIRTH</td>
			<td rowspan="2" align="center">FATHER NAME</td>
			<td rowspan="2" align="center">MOTHER NAME</td>
			<td colspan="2" align="center">KANNADA</td>
			<td colspan="2" align="center">ENGLISH</td>
			<td colspan="2" align="center">HINDI</td>
			<td colspan="2" align="center">MATHEMATICS</td>
			<td colspan="2" align="center">SCIENCE</td>
			<td colspan="2" align="center">SOCIAL</td>
		</tr>
		<tr>
			<td>INTERNAL</td>
			<td>EXTERNAL</td>
			<td>INTERNAL</td>
			<td>EXTERNAL</td>
			<td>INTERNAL</td>
			<td>EXTERNAL</td>
			<td>INTERNAL</td>
			<td>EXTERNAL</td>
			<td>INTERNAL</td>
			<td>EXTERNAL</td>
			<td>INTERNAL</td>
			<td>EXTERNAL</td>
		</tr>
		<%
		for (StudentInfo s : l) {
		%>
		<tr>
			<td><%=s.getUniversal_seat_number()%></td>
			<td><%=s.getStudent_name()%></td>
			<td><%=s.getDate_of_birth()%></td>
			<td><%=s.getStudent_father_name()%></td>
			<td><%=s.getStudent_mother_name()%></td>
			<td><%=s.getKannada_internal_marks()%></td>
			<td><%=s.getKannada_external_marks()%></td>
			<td><%=s.getEnglish_internal_marks()%></td>
			<td><%=s.getEnglish_external_marks()%></td>
			<td><%=s.getHindi_internal_marks()%></td>
			<td><%=s.getHindi_external_marks()%></td>
			<td><%=s.getMaths_internal_marks()%></td>
			<td><%=s.getMaths_external_marks()%></td>
			<td><%=s.getScience_internal_marks()%></td>
			<td><%=s.getScience_external_marks()%></td>
			<td><%=s.getSocial_internal_marks()%></td>
			<td><%=s.getSocial_external_marks()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<form action="student_crudpage.html" method="post">
		<center>
			<button id="back">Back</button>
		</center>
	</form>
	<nav id="bottombar">
        <div id="gok">Government of Karnataka</div>
    </nav>
</body>
</html>