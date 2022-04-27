package com.worker;

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
 * Servlet implementation class WorkerRegister
 */
@SuppressWarnings("serial")
@WebServlet("/WorkerRegister")
public class WorkerRegister extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String service = request.getParameter("service");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		HttpSession hs = request.getSession();
		try {
			Connection connection = DatabaseConnection.getConnection();
			Statement statement = connection.createStatement();
			int addVehicle = statement.executeUpdate("insert into tblworker(fname,lname,mobile,email,address,service,uname,password,cpassword)values('"
							+ fname + "','" + lname + "','" +mobile + "','" + email + "','" + address + "','" + service + "','"+ username
							+ "','" + password +"','"+ cpassword + "')");
			if (addVehicle > 0) {
				String message = "Worker registered successfully, Please login.";
				hs.setAttribute("message", message);
				response.sendRedirect("worker-register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
