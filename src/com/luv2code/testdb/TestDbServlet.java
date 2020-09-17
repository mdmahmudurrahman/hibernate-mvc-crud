package com.luv2code.testdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

/**
 * Servlet implementation class TestDbServlet
 */
@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String jdbcUrl = "jdbc:mysql://localhost:3306/hb_student_tracker?useSSL=false&serverTimezone=CET";
		String user = "hbstudent";
		String password = "hB@Student123";
		String driver = "com.mysql.jdbc.Driver";
		
		try {
			PrintWriter printWriter = response.getWriter();
			printWriter.println("Connecting to database");
			Class.forName(driver);
			Connection myConnection = DriverManager.getConnection(jdbcUrl, user, password);
			
			printWriter.println("Success!!");
			myConnection.close();
		} catch (Exception exception) {
			exception.printStackTrace();
		}
	}

}
