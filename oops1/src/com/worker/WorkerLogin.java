package com.worker;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;
/**
 * Servlet implementation class WorkerLogin
 */
@SuppressWarnings("serial")
@WebServlet("/WorkerLogin")
public class WorkerLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("workername");
		String pass = request.getParameter("password");
		try {
			HttpSession hs = request.getSession();
			String tokens = UUID.randomUUID().toString();
			Connection con = DatabaseConnection.getConnection();
			Statement st = con.createStatement();
			ResultSet resultset = st.executeQuery("select * from tblworker where uname='" + uname + "' AND password='" + pass + "'");
			if (resultset.next()) {
				String fName=resultset.getString(2);
				hs.setAttribute("uname", uname);
				hs.setAttribute("fName", fName);
				hs.setAttribute("mobileNo", resultset.getString(4));
				response.sendRedirect("worker-dashboard.jsp?_tokens='" + tokens + "'");
			} else {
				String message = "Invalid credential";
				hs.setAttribute("message", message);
				response.sendRedirect("worker-login.jsp");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
