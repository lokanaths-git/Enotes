package com.enote.DbConnect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
public static Connection con;
	
	public static Connection getConn() {
		
		try {
			
			if (con == null || con.isClosed()){
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enote","root","admin");
			}
			
		}catch (Exception e) {
           	e.printStackTrace();
			
		}
		return con;
		
	}


}
