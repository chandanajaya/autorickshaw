<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
     Class.forName("org.gjt.mm.mysql.Driver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
    %>

<%        
    PreparedStatement pstatement = null;
       int updateQuery = 0;

	String id="ADITHIA";
	String source="YES";
        
        String queryString = "update Autodriver set Target = ? where username= ?";

    pstatement = con.prepareStatement(queryString);
        pstatement.setString(1, source);
                
        pstatement.setString(2, id);

                  updateQuery = pstatement.executeUpdate();
     if (updateQuery != 0) {
    response.sendRedirect("processotp.jsp");

    }
    else
    {
    response.sendRedirect("error.html");
    } 
    
    
 pstatement.close();
 con.close();
%>
    