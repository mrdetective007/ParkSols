package com.worker;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class WorkerPasswordChange
 */
@WebServlet("/UserPasswordChange")
public class WorkerPasswordChange extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpassword = request.getParameter("cpassword");
		String password = request.getParameter("password");
		String confpass = request.getParameter("confpass");
		String pass = "";
		HttpSession session = request.getSession();
		try {
			Connection con = DatabaseConnection.getConnection();
			Statement statement = con.createStatement();
			ResultSet resultset = statement.executeQuery("select password from tblworker where password='" + cpassword+ "' and uname='" + session.getAttribute("uname") + "'");
			if (resultset.next()) {
				pass = resultset.getString(1);
			}
			if (password.equals(confpass)) {
				if (pass.equals(cpassword)) {
					int i = statement.executeUpdate("update tblworker set password='" + password + "' where uname='"+ session.getAttribute("uname") + "' ");
					response.sendRedirect("change-worker-password.jsp");
					statement.close();
					con.close();
				} else {	
					response.sendRedirect("change-worker-password.jsp");
				}
			} else {
				response.sendRedirect("change-worker-password.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
