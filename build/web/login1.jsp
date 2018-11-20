<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
%>


<%
	String num=request.getParameter("rolnum");
	String pwd=request.getParameter("pswd");
	
	java.sql.Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("SELECT * FROM student where rollnum='" + num  +"' and password='" + pwd + "' order by rollnum ");
	
	if ( rs.next() ) {
        String urolnum=rs.getString("rollnum");     
       // String username = new String("username");
        session.setAttribute("rollnum", urolnum);                 
        //out.print("welcome " + uname);
		response.sendRedirect("stuhome.html");
    }else
        {
            response.sendRedirect("error.html");

        }
    statement.close();
    con.close();   
%>