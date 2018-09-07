package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/LoginServ")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/*System.out.println("In LoginServ");
	    String driver = "com.mysql.jdbc.Driver";
	    String url = "jdbc:mysql://localhost/login";
	    response.setContentType("text/html");
	    String msg = " ";
	    String username = request.getParameter("email");
	    String password = request.getParameter("password");
	    System.out.println("Email is:"+username+"Password is"+password);
	    
	    try {
	        Class.forName("com.mysql.jdbc.Driver");

	        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");  

	        String strQuery = "select * from validate WHERE username='"
	                + username + "' and password='" + password + "'";
	        Statement st = conn.createStatement();
	        ResultSet rs = st.executeQuery(strQuery);
	        if (rs.next()) {
	            msg = "HELLO" + username + "! Your login is SUCESSFULL";

	        } else {
	            msg = "HELLO" + username + "!Your login is UNSUCESSFULL";
	        }
	        rs.close();
	        st.close();
	        System.out.println("test :" + msg);
	        PrintWriter out = response.getWriter();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }*/


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		    response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	 
	        String username = request.getParameter("email");
	        String pass = request.getParameter("password");
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection(
	                    "jdbc:mysql://localhost:3306/emp_mgmt", "root", "root");
	 
	            PreparedStatement ps = con
	                    .prepareStatement("insert into login values(?,?)");
	 
	            ps.setString(1, username);
	            ps.setString(2, pass);
	            
	 
	            int i = ps.executeUpdate();
	            if (i > 0)
	                out.print("You are successfully registered...");
	 
	        } catch (Exception e2) {
	            System.out.println(e2);
	        }
	 
	        out.close();
	    }
	}


