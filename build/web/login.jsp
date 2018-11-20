<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
%>


<%
	String name=request.getParameter("usrname");
	String pwd=request.getParameter("pswd");
	
	java.sql.Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("SELECT * FROM Autodriver where username='" + name  +"' and password='" + pwd + "' order by username ");
	
	if ( rs.next() ) {
        String uname=rs.getString("username");     
       // String username = new String("username");
        session.setAttribute("username", uname);                 
        //out.print("welcome " + uname);
		response.sendRedirect("autoreaddy.html");

         
    }else
        {
        response.sendRedirect("error.html");

        }
    statement.close();
    con.close();   
%>