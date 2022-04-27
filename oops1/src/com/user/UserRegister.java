package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class UserRegister
 */
@SuppressWarnings("serial")
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String regno = request.getParameter("registrationno");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		HttpSession hs = request.getSession();
		try {
			Connection connection = DatabaseConnection.getConnection();
			Statement statement = connection.createStatement();
			int addVehicle = statement.executeUpdate("insert into tbluser(fname,lname,mobile,email,address,registrationno,uname,password,cpassword)values('"
							+ fname + "','" + lname + "','" +mobile + "','" + email + "','" + address + "','" + regno + "','"+ username
							+ "','" + password +"','"+ cpassword + "')");
			if (addVehicle > 0) {
				String message = "User register successfully, Please login.";
				hs.setAttribute("message", message);
				response.sendRedirect("user-register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
