<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page errorPage="test.jsp" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test</title>
<script>
function displayDate(){
	document.getElementById("demo").innerHTML="lalallalala";
}
</script>
</head>
<body>

<!-- 成员变量      <%! %> -->
<%! int count = 0; %>
<!-- 局部变量 <% %> -->
<% int count1 = 0; %> 

<p align="center">
成员变量：<%= count++ %>
<br>
局部变量：<%= count1++ %>
</p>
<p>
	<ul>
		<li>Current Time:<%= new java.util.Date() %></li>
		<li>Your hosthome:<%= request.getRemoteHost() %></li>
		<li>Your Session:<%= session.getId() %></li>
		<li>The <code>testParam</code> form parameter: <%= request.getParameter("testParam") %></li>
	</ul>
	<p id="demo">这是一个段落</p>
	<button type="button" onclick="displayDate()">click</button>
</p>
<p>
<%
String s = "111";
int i = Integer.parseInt(s);
out.print("s="+s+";i="+i);
%>
</p>
</body>
</html>