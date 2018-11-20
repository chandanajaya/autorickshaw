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
    	String id=request.getParameter("id");
	String source=request.getParameter("board");
        String dest=request.getParameter("dest");
        String autd="Adithia";
        
         
       
                pstmt = con.prepareStatement("INSERT INTO journey(roll_stu,auto_driver,st,source,dest) VALUES ( ?,?,(now()),?,?)");
                pstmt.setString(1,id);
                pstmt.setString(2,autd);
                
                pstmt.setString(3,source); 
                pstmt.setString(4,dest);


                executeUpdate = pstmt.executeUpdate(); 
     if (executeUpdate != 0) {
    response.sendRedirect("sendsms.jsp");

    }
    else
    {
    response.sendRedirect("error.html");
    } 
    
    
 pstmt.close();
 con.close();
%>
    