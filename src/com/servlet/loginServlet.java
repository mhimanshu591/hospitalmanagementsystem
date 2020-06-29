package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.SQLException;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	Connection conn=null;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();

		pw.println("<html>");
		pw.println("<head><title>LoginServlet</title></head>");

		pw.println("<body>");
		try
		{
		String uid=request.getParameter("username");
		String pwd=request.getParameter("password");
		PreparedStatement ps=conn.prepareStatement("select username from userstore where username=? and password=?");
		ps.setString(1,uid);
		ps.setString(2,pwd);
		ResultSet rs=ps.executeQuery();
		/*if(rs.next())
		System.out.println("record founded");
		else
		System.out.println("no record found");*/
		
		
		   if(rs.next()){ 
	            RequestDispatcher rd = request.getRequestDispatcher("/base.jsp"); 
	            // Getting RequestDispatcher object 
	            // for collaborating with servlet2 
	  
	            // forwarding the request to servlet2 
	            rd.forward(request, response);  
	    }   
	    else{ 
	    	System.out.println("password wrong");
	       pw.println("PAsswordjkh mismatch");
	            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp"); 
	         
	        rd.include(request, response);   
	                        
	        }   
		



		String r=rs.getString(1);
		pw.println("hello "+r);
		}
		catch(SQLException ex)
		{
		}

		pw.println("</body>");
		pw.println("<html>");
		doGet(request, response);
		
	}

	public void init() throws ServletException {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			System.out.println("driver loaded successfully");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagementSystem", "root", "root");
			System.out.println("connection successfully");
		} catch (ClassNotFoundException ex) {
			System.out.println("problem in connection");
		} catch (SQLException ex) {
			System.out.println("problem in sqlhudg");
		}

	}

}
