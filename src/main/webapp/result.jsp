<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="result.css" type="text/css">
</head>
<body>
<%
	String msg = (String) request.getAttribute("msg");
	%>
	<nav id="top">
		<div id="logo">
			<img src="./gok.png" alt="logo" style="width: 100px;">
		</div>
		<div id="kseab">KARNATAKA SCHOOL EXAMINATION AND ASSESSMENT
			BOARD</div>
	</nav>
	<nav id="msg">
		<%=msg%>
	</nav>
	<div id="button">
		<form action="result_login.html">
			<button id="home">OK</button>
		</form>
	</div>
	<nav id="bottombar">
		<div id="gok">Government of Karnataka</div>
	</nav>
</body>
</html>