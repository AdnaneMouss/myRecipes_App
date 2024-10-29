package ma.ac.uir.DAO;

import java.util.LinkedList;
import ma.ac.uir.modele.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
public class singleton {
	private static Connection connection; 
        
	static{
		try {            
		Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet", "root", "");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("erreur");
		} catch (Exception e2) {
			e2.printStackTrace();
			System.out.println("erreur2");
		}
	}
	public static Connection getConnection(){
		return connection;
	}
}



