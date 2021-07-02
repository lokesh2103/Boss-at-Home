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

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CustomerDAOImpl customerDAO;

	public RegisterController() {
		super();
		this.customerDAO = new CustomerDAOImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String email = request.getParameter("reg-email");
		String password = request.getParameter("reg-password");

		Customer customer = new Customer(firstName, lastName, email, password);
		HttpSession httpSession = request.getSession();
		try {
			if(customerDAO.registerCustomer(customer)) {
				httpSession.setAttribute("reg-msg", "Registered Successfully !! <br> Please Login to Continue.");
				response.sendRedirect("pages/accountInfo.jsp");
			}else {
				httpSession.setAttribute("reg-msg", "An error has been occured !! <br> Please try again later.");
				response.sendRedirect("pages/accountInfo.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			httpSession.setAttribute("reg-msg", "An error has been occured !! <br> Please try again later.");
			response.sendRedirect("pages/accountInfo.jsp");
			e.printStackTrace();
		}

	}

}
