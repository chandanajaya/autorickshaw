<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>List of drivers!!</title>
    </head>
    <body bgcolor="white">
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #4CAF50;
            color: white;
        }
        
        #button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            
        }
    </style>
    <link rel="stylesheet" type="text/css">

        <form method="post" >
            <table  id="customers" align="center" >
        
        <tr>
        
        <th>Name</th>
        <th>Phone</th>
        <th>Vehicle_reg_no</th>
        <th>Start_journey</th>
        <th>Confirmation</th>

        </tr>
        <body>
        <h2 align="center">List of Drivers available</h2>

        <%
            response.setIntHeader("Refresh", 5);

              try {
                  /* Create string of connection url within specified format with machine name, port number and database name. Here machine name id localhost and database name is student. */
                  String connectionURL = "jdbc:mysql://localhost/NcpAuto";

                  // declare a connection by using Connection interface
                  Connection connection = null;

                  // declare object of Statement interface that is used for executing sql statements.
                  Statement statement = null;

                  // declare a resultset that uses as a table for output data from tha table.
                  ResultSet rs = null;

                  // Load JBBC driver "com.mysql.jdbc.Driver"
                  Class.forName("com.mysql.jdbc.Driver").newInstance();

                  /* Create a connection by using getConnection() method that takes parameters of string type connection url, user name and password to connect to database. */
                  connection = DriverManager.getConnection(connectionURL, "root", "amma123");

                  /* createStatement() is used for create statement object that is used for sending sql statements
                  to the specified database. */
                  statement = connection.createStatement();

                  // sql query to retrieve values from the secified table.
                  String QueryString = "SELECT * from Autodriver ";
                  rs = statement.executeQuery(QueryString);
        %>
            <%
            while (rs.next()) {
            %>
        <TR> 
                
                <TD><%=rs.getString(2)%></TD>
                <TD><%=rs.getString(3)%></TD>
                <TD><%=rs.getString(4)%></TD>
                <TD><%=rs.getString(7)%></TD>
                <TD><a href="confirm.html" id="button">continue</a></td>
            </TR>
            <%   }    %>
            <%
            // close all the connections.
            rs.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            %>

            <font size="+3" color="red"></b>
                <%
                        out.println(ex);
                    }
                %>

        </font>
            </table>
                </form>
        </body>
</html>


