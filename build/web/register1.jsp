<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
          
<%
Class.forName("org.gjt.mm.mysql.Driver").newInstance();

Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");

%>
<%
String username = request.getParameter("usrname");
String name = request.getParameter("uname");
String phone= request.getParameter("telno");
String register= request.getParameter("regno");
String license= request.getParameter("licno");
String pass = request.getParameter("pswd");
String pass2 = request.getParameter("pswd2");

if(pass.equals(pass2)){
PreparedStatement pstmt = con.prepareStatement("INSERT INTO Autodriver(username,name,phonenumber,vehregnum,dlnum,password) VALUES ( ?,?,?,?,?,?)")  ;
pstmt.setString(1,username);
pstmt.setString(2,name);
pstmt.setString(3,phone);
pstmt.setString(4,register);
pstmt.setString(5,license);
pstmt.setString(6,pass);

	                        
pstmt.executeUpdate();
pstmt.close();

/*String strProcedure="{call insert_use(?,?,?,?,?,?)}"; //your procedure name
CallableStatement cs=con.prepareCall(strProcedure);
cs.setString(1,username);
cs.setString(2,name);
cs.setString(3,phone);
cs.setString(4,register);
cs.setString(5,license);
cs.setString(6,pass);
//cs.registerOutParameter(3,java.sql.Types.VARCHAR);
cs.execute();*/
response.sendRedirect("login.html");
//<center><a href = "login.jsp"><button class="btn btn-success">login</button></a></center>
        }       
%>
