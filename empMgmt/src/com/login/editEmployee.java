package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bean.EmployeeBean;
import com.util.DbUtil;
import com.util.commonUtils;

/**
 * Servlet implementation class editEmployee
 */
@WebServlet("/editEmployee")
public class editEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 Connection conn = DbUtil.createConnection();
		 
	        String userName = (String) request.getParameter("userName");
	 
	        EmployeeBean emp=null;       
	 
	        try {
	        	emp = commonUtils.findEmployee(conn, userName);
	        } catch (SQLException e) {
	            e.printStackTrace();
	         
	        }
	        
	        if (emp == null) {
	            response.sendRedirect(request.getServletPath() + "/empprofile");
	            return;
	        }
	        request.setAttribute("user", emp);
	        RequestDispatcher dispatcher = request.getServletContext()
	                .getRequestDispatcher("editEmpView.jsp");
	        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
