package AdminDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	public static Connection getConnection() throws SQLException 
	{
		Connection connection = null;
		try {

		Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useTimezone=true&serverTimezone=UTC", "root", "12345");
		
		} catch (Exception e) {
     System.out.println(e);
			
	}

		return connection;

	}
}


