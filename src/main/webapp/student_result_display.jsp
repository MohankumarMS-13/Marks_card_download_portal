<%@page import="student_details.StudentInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="student_result_display.css" type="text/css">
</head>
<body>
	<nav id="border">
		<%
		StudentInfo s = (StudentInfo) request.getAttribute("details");
		%>
		<%!String A = "A";
	String B = "B";
	String C = "C";
	String A1 = "A+";
	String B1 = "B+";
	String C1 = "C+";
	String F = "F";
	String pass = "PASS";
	String fail = "FAIL";%>
		<div id="topbar">
			<center>
				<div id="topcon1">Karnataka Secondary Education Examination
					Board</div>
			</center>
			<center>
				<div id="topcon2">SSLC Examination Results</div>
			</center>
		</div>
		<div id="details">
			<div id="name">
				<div id="details_left">Name</div>
				<div id="details_right">
					<%=s.getStudent_name()%>
				</div>
			</div>
			<div id="reg">
				<div id="details_left">Reg No.</div>
				<div id="details_right">
					<%=s.getUniversal_seat_number()%>
				</div>
			</div>
		</div>
		<div id="marks">
			<div id="parta">
				<div id="partatop">PART A</div>
				<div>
					<table id="partatable" border="" cellspacing="0px"
						cellpadding="5px">
						<tr align="center" id="bg">
							<td><b>SUBJECT</b></td>
							<td><b>Internal Marks</b></td>
							<td><b>External Marks</b></td>
							<td><b>Total Marks</b></td>
							<td><b>Grade</b></td>
						</tr>
						<tr>
							<td>KANNADA</td>
							<td id="align"><%=s.getKannada_internal_marks()%></td>
							<td id="align"><%=s.getKannada_external_marks()%></td>
							<td id="align"><%=(s.getKannada_internal_marks() + s.getKannada_external_marks())%>
							</td>
							<td id="align">
								<%
								if ((s.getKannada_internal_marks() + s.getKannada_external_marks()) * 100 / 125 >= 90) {
								%> <%=A1%> <%
 } else if ((s.getKannada_internal_marks() + s.getKannada_external_marks()) >= 80) {
 %> <%=A%> <%
 } else if ((s.getKannada_internal_marks() + s.getKannada_external_marks()) >= 70) {
 %> <%=B1%> <%
 } else if ((s.getKannada_internal_marks() + s.getKannada_external_marks()) >= 60) {
 %> <%=B%> <%
 } else if ((s.getKannada_internal_marks() + s.getKannada_external_marks()) >= 50) {
 %> <%=C1%> <%
 } else if ((s.getKannada_internal_marks() + s.getKannada_external_marks()) >= 35) {
 %> <%=C%> <%
 } else {
 %> <%=F%> <%
 }
 %>
							</td>
						</tr>
						<tr id="bg">
							<td>ENGLISH</td>
							<td id="align"><%=s.getEnglish_internal_marks()%></td>
							<td id="align"><%=s.getEnglish_external_marks()%></td>
							<td id="align"><%=s.getEnglish_internal_marks() + s.getEnglish_external_marks()%>
							</td>
							<td id="align">
								<%
								if ((s.getEnglish_internal_marks() + s.getEnglish_external_marks()) * 100 / 100 >= 90) {
								%> <%=A1%> <%
 } else if ((s.getEnglish_internal_marks() + s.getEnglish_external_marks()) >= 80) {
 %> <%=A%> <%
 } else if ((s.getEnglish_internal_marks() + s.getEnglish_external_marks()) >= 70) {
 %> <%=B1%> <%
 } else if ((s.getEnglish_internal_marks() + s.getEnglish_external_marks()) >= 60) {
 %> <%=B%> <%
 } else if ((s.getEnglish_internal_marks() + s.getEnglish_external_marks()) >= 50) {
 %> <%=C1%> <%
 } else if ((s.getEnglish_internal_marks() + s.getEnglish_external_marks()) >= 35) {
 %> <%=C%> <%
 } else {
 %> <%=F%> <%
 }
 %>
							</td>
						</tr>
						<tr>
							<td>HINDI</td>
							<td id="align"><%=s.getHindi_internal_marks()%></td>
							<td id="align"><%=s.getHindi_external_marks()%></td>
							<td id="align"><%=s.getHindi_internal_marks() + s.getHindi_external_marks()%>
							</td>
							<td id="align">
								<%
								if ((s.getHindi_internal_marks() + s.getHindi_external_marks()) * 100 / 100 >= 90) {
								%> <%=A1%> <%
 } else if ((s.getHindi_internal_marks() + s.getHindi_external_marks()) >= 80) {
 %> <%=A%> <%
 } else if ((s.getHindi_internal_marks() + s.getHindi_external_marks()) >= 70) {
 %> <%=B1%> <%
 } else if ((s.getHindi_internal_marks() + s.getHindi_external_marks()) >= 60) {
 %> <%=B%> <%
 } else if ((s.getHindi_internal_marks() + s.getHindi_external_marks()) >= 50) {
 %> <%=C1%> <%
 } else if ((s.getHindi_internal_marks() + s.getHindi_external_marks()) >= 35) {
 %> <%=C%> <%
 } else {
 %> <%=F%> <%
 }
 %>
							</td>
						</tr>
						<tr id="bg">
							<td>MATHS</td>
							<td id="align"><%=s.getMaths_internal_marks()%></td>
							<td id="align"><%=s.getMaths_external_marks()%></td>
							<td id="align"><%=s.getMaths_internal_marks() + s.getMaths_external_marks()%>
							</td>
							<td id="align">
								<%
								if ((s.getMaths_internal_marks() + s.getMaths_external_marks()) * 100 / 100 >= 90) {
								%> <%=A1%> <%
 } else if ((s.getMaths_internal_marks() + s.getMaths_external_marks()) >= 80) {
 %> <%=A%> <%
 } else if ((s.getMaths_internal_marks() + s.getMaths_external_marks()) >= 70) {
 %> <%=B1%> <%
 } else if ((s.getMaths_internal_marks() + s.getMaths_external_marks()) >= 60) {
 %> <%=B%> <%
 } else if ((s.getMaths_internal_marks() + s.getMaths_external_marks()) >= 50) {
 %> <%=C1%> <%
 } else if ((s.getMaths_internal_marks() + s.getMaths_external_marks()) >= 35) {
 %> <%=C%> <%
 } else {
 %> <%=F%> <%
 }
 %>
							</td>
						</tr>
						<tr>
							<td>SCIENCE</td>
							<td id="align"><%=s.getScience_internal_marks()%></td>
							<td id="align"><%=s.getScience_external_marks()%></td>
							<td id="align"><%=s.getScience_internal_marks() + s.getScience_external_marks()%>
							</td>
							<td id="align">
								<%
								if ((s.getScience_internal_marks() + s.getScience_external_marks()) * 100 / 125 >= 90) {
								%> <%=A1%> <%
 } else if ((s.getScience_internal_marks() + s.getScience_external_marks()) >= 80) {
 %> <%=A%> <%
 } else if ((s.getScience_internal_marks() + s.getScience_external_marks()) >= 70) {
 %> <%=B1%> <%
 } else if ((s.getScience_internal_marks() + s.getScience_external_marks()) >= 60) {
 %> <%=B%> <%
 } else if ((s.getScience_internal_marks() + s.getScience_external_marks()) >= 50) {
 %> <%=C1%> <%
 } else if ((s.getScience_internal_marks() + s.getScience_external_marks()) >= 35) {
 %> <%=C%> <%
 } else {
 %> <%=F%> <%
 }
 %>
							</td>
						</tr>
						<tr id="bg">
							<td>S SCIENCE</td>
							<td id="align"><%=s.getSocial_internal_marks()%></td>
							<td id="align"><%=s.getSocial_external_marks()%></td>
							<td id="align"><%=s.getSocial_internal_marks() + s.getSocial_external_marks()%>
							</td>
							<td id="align">
								<%
								if ((s.getSocial_internal_marks() + s.getSocial_external_marks()) * 100 / 100 >= 90) {
								%> <%=A1%> <%
 } else if ((s.getSocial_internal_marks() + s.getSocial_external_marks()) >= 80) {
 %> <%=A%> <%
 } else if ((s.getSocial_internal_marks() + s.getSocial_external_marks()) >= 70) {
 %> <%=B1%> <%
 } else if ((s.getSocial_internal_marks() + s.getSocial_external_marks()) >= 60) {
 %> <%=B%> <%
 } else if ((s.getSocial_internal_marks() + s.getSocial_external_marks()) >= 50) {
 %> <%=C1%> <%
 } else if ((s.getSocial_internal_marks() + s.getSocial_external_marks()) >= 35) {
 %> <%=C%> <%
 } else {
 %> <%=F%> <%
 }
 %>
							</td>
						</tr>
						<tr>
							<td colspan="4"><b>Total Marks</b></td>
							<td id="align"><%=s.getKannada_internal_marks() + s.getKannada_external_marks() + s.getEnglish_internal_marks()
		+ s.getEnglish_external_marks() + s.getMaths_internal_marks() + s.getMaths_external_marks()
		+ s.getHindi_internal_marks() + s.getHindi_external_marks() + s.getScience_internal_marks()
		+ s.getScience_external_marks() + s.getSocial_internal_marks() + s.getSocial_external_marks()%>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="partb">
				<div id="partatop">PART B</div>
				<div>
					<table id="partbtable" border="" cellspacing="0px"
						cellpadding="5px">
						<tr id="bg">
							<td><b>SUBJECT</b></td>
							<td><b>Grade</b></td>
						</tr>
						<tr>
							<td>Physical and Health</td>
							<td>A</td>
						</tr>
						<tr id="bg">
							<td>Attitude and Values</td>
							<td>A</td>
						</tr>
						<tr>
							<td>Work Experience</td>
							<td>A</td>
						</tr>
						<tr id="bg">
							<td>Art Education</td>
							<td>A</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div id="final">
			<div id="result">
				<div id="details_left1">Result</div>
				<div id="details_right1">
					<%
					if (s.getKannada_external_marks() >= 35 && s.getEnglish_external_marks() >= 25 && s.getHindi_external_marks() >= 25
							&& s.getMaths_external_marks() >= 25 && s.getScience_external_marks() >= 25
							&& s.getSocial_external_marks() >= 25) {
					%>
					<%=pass%>
					<%
					} else {
					%>
					<%=fail%>
					<%
					}
					%>
				</div>
			</div>
			<div id="cga">
				<div id="details_left1">CGA</div>
				<div id="details_right1">
					<%
					if ((((s.getKannada_internal_marks() + s.getKannada_external_marks() + s.getEnglish_internal_marks()
							+ s.getEnglish_external_marks() + s.getMaths_internal_marks() + s.getMaths_external_marks()
							+ s.getHindi_internal_marks() + s.getHindi_external_marks() + s.getScience_internal_marks()
							+ s.getScience_external_marks() + s.getSocial_internal_marks() + s.getSocial_external_marks()) * 100
							/ 625) >= 90)) {
					%>
					<%=A1%>
					<%
					} else if ((((s.getKannada_internal_marks() + s.getKannada_external_marks() + s.getEnglish_internal_marks()
							+ s.getEnglish_external_marks() + s.getMaths_internal_marks() + s.getMaths_external_marks()
							+ s.getHindi_internal_marks() + s.getHindi_external_marks() + s.getScience_internal_marks()
							+ s.getScience_external_marks() + s.getSocial_internal_marks() + s.getSocial_external_marks()) * 100
							/ 625) >= 80)) {
					%>
					<%=A%>
					<%
					} else if ((((s.getKannada_internal_marks() + s.getKannada_external_marks() + s.getEnglish_internal_marks()
							+ s.getEnglish_external_marks() + s.getMaths_internal_marks() + s.getMaths_external_marks()
							+ s.getHindi_internal_marks() + s.getHindi_external_marks() + s.getScience_internal_marks()
							+ s.getScience_external_marks() + s.getSocial_internal_marks() + s.getSocial_external_marks()) * 100
							/ 625) >= 70)) {
					%>
					<%=B1%>
					<%
					} else if ((((s.getKannada_internal_marks() + s.getKannada_external_marks() + s.getEnglish_internal_marks()
							+ s.getEnglish_external_marks() + s.getMaths_internal_marks() + s.getMaths_external_marks()
							+ s.getHindi_internal_marks() + s.getHindi_external_marks() + s.getScience_internal_marks()
							+ s.getScience_external_marks() + s.getSocial_internal_marks() + s.getSocial_external_marks()) * 100
							/ 625) >= 60)) {
					%>
					<%=B%>
					<%
					} else if ((((s.getKannada_internal_marks() + s.getKannada_external_marks() + s.getEnglish_internal_marks()
							+ s.getEnglish_external_marks() + s.getMaths_internal_marks() + s.getMaths_external_marks()
							+ s.getHindi_internal_marks() + s.getHindi_external_marks() + s.getScience_internal_marks()
							+ s.getScience_external_marks() + s.getSocial_internal_marks() + s.getSocial_external_marks()) * 100
							/ 625) >= 50)) {
					%>
					<%=C1%>
					<%
					} else if ((((s.getKannada_internal_marks() + s.getKannada_external_marks() + s.getEnglish_internal_marks()
							+ s.getEnglish_external_marks() + s.getMaths_internal_marks() + s.getMaths_external_marks()
							+ s.getHindi_internal_marks() + s.getHindi_external_marks() + s.getScience_internal_marks()
							+ s.getScience_external_marks() + s.getSocial_internal_marks() + s.getSocial_external_marks()) * 100
							/ 625) >= 35)) {
					%>
					<%=C%>
					<%
					} else {
					%>
					<%=F%>
					<%
					}
					%>
				</div>
			</div>
		</div>
	</nav>
	<form action="result_login.html">
		<center>
			<button id="back">Back</button>
		</center>
	</form>
	<div id="bottombar">
		<div id="disclaimer">Disclaimer: Neither NIC nor KARNATAKA
			SCHOOL EXAMINATION AND ASSESSMENT BOARD, KARNATAKA is responsible for
			any inadvertent error that may have crept in the results being
			published on NET. The results published on net are for immediate
			information to the examinees. This cannot be treated as original mark
			sheet. Original mark sheet will be issued by the Board separately</div>
		<div id="last">
			<div>Best viewed in IE 9.0 and above and Chrome and Mozilla
				Firefox</div>
			<div style="margin-left: 20px; margin-right: 20px;">Content
				owned, maintained & updated by KARNATAKA SCHOOL EXAMINATION AND
				ASSESSMENT BOARD, KARNATAKA</div>
			<div>Designed, Developed & Hosted by National Informatics
				Centre, Karnataka</div>
		</div>
	</div>
</body>
</html>