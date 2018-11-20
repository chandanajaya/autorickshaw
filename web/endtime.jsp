<%@page import="java.util.Date"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
     Class.forName("org.gjt.mm.mysql.Driver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
    %>

<%        
    PreparedStatement pstmt = null;
        int executeUpdate = 0;
    	
        String autd="Adithia";
        
         
       
                pstmt = con.prepareStatement("UPDATE  journey SET et= (NOW()) where et IS NULL");


                executeUpdate = pstmt.executeUpdate(); 
     if (executeUpdate != 0) {
    response.sendRedirect("logoutprocess.jsp");

    }
    else
    {
    response.sendRedirect("error.html");
    } 
    
    
 pstmt.close();
 con.close();
%>