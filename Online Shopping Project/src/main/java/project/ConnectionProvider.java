package project;
import java.sql.*;
public class ConnectionProvider {
	
	public static Connection getCon()
	
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection Con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?useSSL=false", "c2f", "c2fdbAdmin");
			return Con;
		}
		catch (Exception e) {
			System.out.print(e);
			return null;
			
		}
		}
	}

