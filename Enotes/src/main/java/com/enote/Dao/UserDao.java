package com.enote.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.enote.DbConnect.DBConnect;
import com.enote.User.UserDetails;

public class UserDao {
	
	private Connection con;

	public UserDao(Connection conn) {
		super();
		this.con = conn;
	}
	
	public boolean addUser(UserDetails user) {
		
		boolean success = false;
		
		try {
			
            String query = "INSERT INTO user(name, email, password) VALUES (?, ?, ?)";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			int rowsAffected = ps.executeUpdate();
	        success = rowsAffected > 0;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return success;
		
	}
	
	public UserDetails loginuser(UserDetails user) {
		
		UserDetails user1=null;
		
		try {
			
			String query = "SELECT name,email,password FROM user WHERE email=? AND password=? ";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getPassword());
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				user1 = new UserDetails();
				user1.setName(rs.getString("name"));
				user1.setEmail(rs.getString("email"));
				user1.setPassword("password");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return user1;
		
	}
	
}
