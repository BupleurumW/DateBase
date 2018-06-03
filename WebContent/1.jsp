<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>SELECT 操作</title>
</head>
<body>
<!--
JDBC 驱动名及数据库 URL 
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/student_management"
     user="root"  password=""/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from S;
</sql:query>
<h1>JSP 数据库实例 - 菜鸟教程</h1>
<table border="1" width="100%">
<tr>
   <th>学号</th>
   <th>姓名</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.Sno}"/></td>
   <td><c:out value="${row.Sname}"/></td>
</tr>
</c:forEach>
</table>
 
 
    <div class="main">
    	<div class="mainin">
        	<h1><img src="images/ht_name.png"></h1>
            <div class="mainin1">
            	<ul>
                	<li><span>用户名：</span><input name="loginName" type="text" id="loginName" placeholder="登录名" class="SearchKeyword"></li>
                    <li><span>密码：</span><input type="password" name="Possword" id="Possword" placeholder="密码"/ class="SearchKeyword2"></li>
                    <li><button class="tijiao">提交</button></li>
                </ul>
            </div>
            <div class="footpage"><span style="" font-family:arial;""="">Copyright ?</span>2016 <a href="http://www.mycodes.net/" target="_blank">源码之家</a> － 网聚卡车人的力量</div>
        </div>
    </div>
<img src="images/loading.gif" id="loading" style=" display:none;position:absolute;" />
<div id="POPLoading" class="cssPOPLoading">
    <div style=" height:110px; border-bottom:1px solid #9a9a9a">
        <div class="showMessge"></div>
    </div>
    <div style=" line-height:40px; font-size:14px; letter-spacing:1px;">
        <a onclick="puc()">确定</a>
    </div>
</div>
<div style="text-align:center;">
<p>更多源码：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>