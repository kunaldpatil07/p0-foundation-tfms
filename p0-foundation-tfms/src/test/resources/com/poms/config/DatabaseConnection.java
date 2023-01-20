package com.poms.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DatabaseConnection {
	
	private static  Connection connection=null;
	
	public static Connection getConnection() {
		if(connection==null)
		{
			ResourceBundle rb=ResourceBundle.getBundle("tfms");
			String dburl=rb.getString("dburl");
			String username=rb.getString("username");
			String password=rb.getString("password");
			
			try {
				Class.forName(rb.getString("driver"));
				connection=DriverManager.getConnection(dburl, username, password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return connection;
	}
	
}