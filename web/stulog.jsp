<%-- 
    Document   : stulog
    Created on : 31 Oct, 2018, 1:25:59 AM
    Author     : chandana
--%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <c:set var="name" scope="session" value= request.getAttribute("usrname")}"/>

        <%
           out.println(name); 
        %>            


    </head>
    <body>
        <h1></h1>
    </body>
</html>
