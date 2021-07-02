package com.bossathome.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bossathome.daos.CustomerDAOImpl;
import com.bossathome.pojos.Customer;


@WebServlet("/ChangePasswordController")
public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDAOImpl customerDAO;
       

    public ChangePasswordController() {
        super();
        this.customerDAO = new CustomerDAOImpl();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("change-email");
		String password = request.getParameter("change-password");
		Customer customer = new Customer(email, password);
		
		boolean status;
		try {
			HttpSession session = request.getSession();
			status = customerDAO.changePassword(customer);
			if(status) {
				session.setAttribute("change-pass", "Password changed successfully. Please login to continue.");
				response.sendRedirect("pages/accountInfo.jsp");
			}else {
				session.setAttribute("change-pass", "Email is not registered !!");
				response.sendRedirect("pages/accountInfo.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
