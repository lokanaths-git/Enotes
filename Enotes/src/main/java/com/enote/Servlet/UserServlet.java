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

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		String fname = request.getParameter("fname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDetails user = new UserDetails();
		user.setName(fname);
		user.setEmail(email);
		user.setPassword(password);
		
		
		UserDao dao = new UserDao(DBConnect.getConn());
		boolean success=dao.addUser(user);
		HttpSession session;
		
		if(success) {
			session=request.getSession();
			session.setAttribute("reg-success", "Registration Successfully....");
			response.sendRedirect("register.jsp");
		}else {
			session=request.getSession();
			session.setAttribute("failed-msg", "Something went wrong on server");
			response.sendRedirect("register.jsp");
		}
		
	}
	
	
}
