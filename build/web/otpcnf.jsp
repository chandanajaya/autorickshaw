<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
String name="Nanda";
String phone="9495275530";
int otp= (Integer) session.getAttribute("otp");
String otpvalue=request.getParameter("otpvalue");
int enterOtp=Integer.parseInt(otpvalue);
if(otp==enterOtp)
{
try
{
response.sendRedirect("signout.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
else
{
response.sendRedirect("signout.html");
}
%>