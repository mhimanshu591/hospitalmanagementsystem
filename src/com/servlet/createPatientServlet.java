package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DateTimeException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/createPatientServlet")
public class createPatientServlet extends HttpServlet {
	Connection conn = null;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public createPatientServlet() {
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
		PrintWriter pw = response.getWriter();

		try {
			String pssnid = request.getParameter("pssnid");
			String pname = request.getParameter("pname");
			String page = request.getParameter("page");
			String doj = request.getParameter("doj");

			String str[] = doj.split("-");
			doj = str[2] + "/" + str[1] + "/" + str[0];
			System.out.println("doj" + doj);

			java.util.Date utilDate = new SimpleDateFormat("dd/MM/yyyy").parse(doj);
			System.out.println(utilDate + "utilll wali");
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			System.out.println(sqlDate + "usql wali");

			String tob = request.getParameter("tob");
			String address = request.getParameter("address");
			String state = request.getParameter("state");
			String city = request.getParameter("city");

			System.out.println(pssnid + pname + page + doj + tob + address + city + state);

			System.out.println("before q");
			PreparedStatement ps = conn
					.prepareStatement(" insert into patients (ssnid,name,age,doj,bedtype,address,state,city)"
							+ " values (?, ?, ?, ?, ?,?,?,?)");
			// " insert into patients (ssnid,name,age,doj,bedtype,address,state,city)"
			// + " values (?, ?, ?, ?, ?,?,?,?)"
			// "insert into patients values(?,?,?,?,?,?,?,?"
			ps.setString(1, pssnid);
			ps.setString(2, pname);
			ps.setString(3, page);
			ps.setDate(4, sqlDate);
			ps.setString(5, tob);
			ps.setString(6, address);
			ps.setString(7, state);
			ps.setString(8, city);

			int rs = ps.executeUpdate();
			System.out.println("after q");
			if (rs > 0) {
				pw.println("<script>alert(\"Patient creation initiated successfully\") </script>");
				RequestDispatcher rd = request.getRequestDispatcher("/base.jsp");
				rd.forward(request, response);
			
			} else {
				pw.println("<script>alert(\"An error occured!!!”\") </script>");
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.include(request, response);
				System.out.println("failed");

			}
			/*
			 * if(rs>0){ //RequestDispatcher rd = request.getRequestDispatcher("/base.jsp");
			 * // Getting RequestDispatcher object // for collaborating with servlet2
			 * 
			 * // forwarding the request to servlet2 rd.forward(request, response); } else{
			 * System.out.println("password wrong"); pw.println("PAsswordjkh mismatch");
			 * RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			 * 
			 * rd.include(request, response);
			 * 
			 * }
			 */

			pw.println("hello " + rs);
		} catch (DateTimeException ex) {
			System.out.println("datetime");
			ex.printStackTrace();
		} catch (SQLException ex) {
			System.out.println("sql");
			ex.printStackTrace();

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			System.out.println("parse exce");
			e.printStackTrace();
		}

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
