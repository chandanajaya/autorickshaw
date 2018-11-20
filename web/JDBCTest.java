import java.sql.*;
import java.io.*;
import java.sql.DriverManager;
public class JDBCTest {
	 private static final String url = "jdbc:mysql://localhost/NcpAuto";
	 
	    private static final String user = "root";
	 
	    private static final String password = "amma123";
	 
	    public static void main(String args[]) {
	        try {
	            Connection con = DriverManager.getConnection(url, user, password);
	            System.out.println("Success");
	 
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }


}
