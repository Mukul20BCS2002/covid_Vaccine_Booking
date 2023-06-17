package databaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectionProvider {
	public static Connection con;
	public static Connection getConnection()
	{
		try
		{
			Class.forName(databaseDetails.DATABASE_DRIVER);
			con = DriverManager.getConnection(databaseDetails.DATABASE_URL,databaseDetails.DATABASE_USER,databaseDetails.DATABASE_PASS);
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return con;
	}
}
