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


@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CustomerDAOImpl customerDAO;
       

    public UpdateController() {
        super();
        this.customerDAO = new CustomerDAOImpl();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String firstName = request.getParameter("pro-fname");
		String lastName = request.getParameter("pro-lname");
		String email = request.getParameter("pro-email");
		String password = request.getParameter("pro-password");
		String mobileNum = request.getParameter("mobile");
		String area = request.getParameter("area");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
		Customer customer = new Customer(id, firstName, lastName, email, password, mobileNum, area, city, state);
		
		try {
			HttpSession httpSession = request.getSession();
			if(customerDAO.updateCustomer(customer)) {
				httpSession.setAttribute("customerInfo", customer);
				httpSession.setAttribute("updateMsg", "Updated Successfully");
				response.sendRedirect("pages/accountInfo.jsp");
			}else {
				httpSession.setAttribute("update-msg", "An error has been occured !! <br> Please try again later.");
				response.sendRedirect("pages/accountInfo.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
