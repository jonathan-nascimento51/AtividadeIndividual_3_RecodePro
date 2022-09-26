package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static final String url = "jdbc:mysql://localhost:3306/alVibes";
	private static final String user = "root";
	private static final String passaword = "@Gremio1010";
	
	public static Connection createConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Encontrado");
		} catch (ClassNotFoundException e) {
			System.out.println("Driver não Encontrado" + e.getMessage());
		}
		
		try {
			Connection connection = DriverManager.getConnection(url, user, passaword);
			System.out.println("Conexao Realizada");
			
			return connection;
			
		} catch(SQLException e) {
			System.out.println("Falha na Conexao");
			return null;
		}		
	}
}
