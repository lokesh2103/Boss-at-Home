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

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDAOImpl customerDAO;

	public LoginController() {
		super();
		this.customerDAO = new CustomerDAOImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("log-email");
		String password = request.getParameter("log-password");

		Customer customer = new Customer(email, password);

		try {
			HttpSession session = request.getSession();
			customer = customerDAO.loginCustomer(customer);
			if(customer!=null) {
				session.setAttribute("customerInfo", customer);
				response.sendRedirect("http://localhost:8090/Boss-At-Home/");
			}else {
				session.setAttribute("log-msg", "Invalid email or password !!");
				response.sendRedirect("pages/accountInfo.jsp");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}

}
