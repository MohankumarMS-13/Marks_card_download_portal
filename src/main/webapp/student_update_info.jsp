<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="student_update_info.css" type="text/css">
</head>
<body>
	<%
	ArrayList a = (ArrayList) request.getAttribute("details");
	%>
	<form action="update" method="post">
		<div>
			<nav id="topbar">
				<div id="logo">
					<img src="./gok.png" alt="logo" style="width: 100px;">
				</div>
				<div id="kseab">KARNATAKA SCHOOL EXAMINATION AND ASSESSMENT
					BOARD</div>
			</nav>
		</div>
		<nav id="details">
			<div>
				<h1 id="spd">STUDENT PERSONAL DETAILS</h1>
			</div>

			<nav id="first">
				<div id="text">REGISTRATION NUMBER</div>
				<div id="colon">:</div>
				<div id="input">
					<input type="text" name="usn" value=<%=a.get(0)%>
						readonly="readonly" id="field">
				</div>
				<div id="text">STUDENT NAME</div>
				<div id="colon">:</div>
				<div id="input">
					<input type="text" name="name" value=<%=a.get(1)%> id="field3">
				</div>
			</nav>
			<nav id="second">
				<div id="text">DATE OF BIRTH</div>
				<div id="colon">:</div>
				<div id="input">
					<input type="date" name="dob" value=<%=a.get(2)%> id="dob">
				</div>
			</nav>
			<nav id="third">
				<div id="text">STUDENT FATHER NAME</div>
				<div id="colon">:</div>
				<div id="input">
					<input type="text" name="fname" value=<%=a.get(3)%> id="field">
				</div>
				<div id="text">STUDENT MOTHER NAME</div>
				<div id="colon">:</div>
				<div id="input">
					<input type="text" name="mname" value=<%=a.get(4)%> id="field3">
				</div>
			</nav>
		</nav>
		<nav id="details">
			<div>
				<h1 id="spd">STUDENT MARKS DETAILS</h1>
			</div>
			<nav id="marks">
				<div id="text1">KANNADA</div>
				<div>
					<input id="field1" type="number" name="kim" value=<%=a.get(5)%>
						min="0" max="25">
				</div>
				<div id="spacer">
					<input id="field1" type="number" name="kem" value=<%=a.get(6)%>
						min="0" max="100">
				</div>
				<div id="text2">ENGLISH</div>
				<div>
					<input id="field1" type="number" name="eim" value=<%=a.get(7)%>
						min="0" max="20">
				</div>
				<div id="spacer">
					<input id="field1" type="number" name="eem" value=<%=a.get(8)%>
						min="0" max="80">
				</div>
			</nav>
			<nav id="marks">
				<div id="text1">HINDI</div>
				<div>
					<input id="field1" type="number" name="him" value=<%=a.get(9)%>
						min="0" max="20">
				</div>
				<div id="spacer">
					<input id="field1" type="number" name="hem" value=<%=a.get(10)%>
						min="0" max="80">
				</div>
				<div id="text2">MATHEMATICS</div>
				<div>
					<input id="field1" type="number" name="mim" value=<%=a.get(11)%>
						min="0" max="20">
				</div>
				<div id="spacer">
					<input id="field1" type="number" name="mem" value=<%=a.get(12)%>
						min="0" max="80">
				</div>
			</nav>
			<nav id="marks">
				<div id="text1">SCIENCE</div>
				<div>
					<input id="field1" type="number" name="sim" value=<%=a.get(13)%>
						min="0" max="20">
				</div>
				<div id="spacer">
					<input id="field1" type="number" name="sem" value=<%=a.get(14)%>
						min="0" max="80">
				</div>
				<div id="text2">SOCIAL SCIENCE</div>
				<div>
					<input id="field1" type="number" name="ssim" value=<%=a.get(15)%>
						min="0" max="20">
				</div>
				<div id="spacer">
					<input id="field1" type="number" name="ssem" value=<%=a.get(16)%>
						min="0" max="80">
				</div>
			</nav>
		</nav>
		<nav id="button">
			<div id="click">
				<button id="update">UPDATE</button>
			</div>
	</form>
	<form action="student_update.html">
		<div id="click">
			<button id="back">BACK</button>
		</div>
	</form>
	</nav>
	<nav id="bottombar">
		<div id="gok">Government of Karnataka</div>
	</nav>
</body>
</html>