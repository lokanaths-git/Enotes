package com.enote.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.enote.Dao.UserDao;
import com.enote.DbConnect.DBConnect;
import com.enote.User.UserDetails;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		UserDetails user=new UserDetails();
		user.setEmail(username);
		user.setPassword(password);
		
		UserDao dao = new UserDao(DBConnect.getConn());
		UserDetails user1=dao.loginuser(user);
		
		if(user1 !=null) {
			HttpSession session=request.getSession();
			session.setAttribute("userData", user1);
			response.sendRedirect("home.jsp");
		}else {
			HttpSession session=request.getSession();
			session.setAttribute("login-fail", "Invalid Username and Password");
			response.sendRedirect("index.jsp");
		}
	
		
	}

}
