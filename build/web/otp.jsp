<%@page import="java.util.Random"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="img/auto_rickshaw_02.gif"> </body>
<style>
    #submit{
        background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
    }
    #box{
        align-self: center;
        align-content: center;
        width: 320px;
    height: 250px;
    background: #000;
    color: #fff;
    
    box-sizing: border-box;
    padding: 70px 30px;
        
    }
    #input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
}
</style>
<body>
    <center>
        <h1 >Enter otp:</h1>
<form action="otpcnf.jsp" method="post" id="box">
<input type="text" name="otpvalue" id="input"/>
<input  type="submit" id="submit" value="submit" />
</form>
    </center>
</body>
</html>