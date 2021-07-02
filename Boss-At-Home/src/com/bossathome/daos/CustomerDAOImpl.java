package com.bossathome.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bossathome.pojos.Customer;
import com.bossathome.utils.DBConnection;

public class CustomerDAOImpl implements CustomerDAO {

	private final String INSERT_CUSTOMER_SQL = "INSERT INTO customer (first_name, last_name, email, password) "
			+ "VALUES (?, ?, ?, ?)";

	private final String SELECT_CUSTOMER_SQL = "SELECT * FROM customer WHERE email = ? AND password = ?";

	private final String UPDATE_CUSTOMER_SQL = "UPDATE customer SET first_name = ?, last_name = ?, email = ?, password = ?, mobile_number = ?, area = ?, state = ?, city = ?  where id = ?";
	
	private final String CHANGE_PASSWORD_SQL = "UPDATE customer SET password = ? where email = ?";
	
	@Override
	public boolean registerCustomer(Customer customer) throws ClassNotFoundException, SQLException {
		try (Connection connect = DBConnection.dbconnect();
				PreparedStatement statement = connect.prepareStatement(INSERT_CUSTOMER_SQL)) {
			statement.setString(1, customer.getFirstName());
			statement.setString(2, customer.getLastName());
			statement.setString(3, customer.getEmail());
			statement.setString(4, customer.getPassword());

			int status = statement.executeUpdate();

			if (status > 0)
				return true;
		}
		return false;
	}

	@Override
	public Customer loginCustomer(Customer customer) throws ClassNotFoundException, SQLException {
		try (Connection connect = DBConnection.dbconnect();
				PreparedStatement statement = connect.prepareStatement(SELECT_CUSTOMER_SQL)) {
			statement.setString(1, customer.getEmail());
			statement.setString(2, customer.getPassword());
			
			ResultSet rs = statement.executeQuery();
			
			if(rs.next()) {
				int id = rs.getInt("id");
				String firstName = rs.getString("first_name");
				String lastName = rs.getString("last_name");
				String email = rs.getString("email");
				String password = rs.getString("password");
				String mobileNum = rs.getString("mobile_number");
				String area = rs.getString("area");
				String city = rs.getString("city");
				String state = rs.getString("state");
				customer = new Customer(id, firstName, lastName, email, password, mobileNum, area, city, state);
				return customer;
			}
			
		}
		return null;
	}

	@Override
	public boolean changePassword(Customer customer) throws ClassNotFoundException, SQLException {
		try (Connection connect = DBConnection.dbconnect();
				PreparedStatement statement = connect.prepareStatement(CHANGE_PASSWORD_SQL)) {
			statement.setString(1, customer.getPassword());
			statement.setString(2, customer.getEmail());
			
			boolean status = statement.executeUpdate() > 0;
			if(status) {
				return true;
			}
		}
		return false;
	}

	@Override
	public boolean updateCustomer(Customer customer) throws ClassNotFoundException, SQLException {
		try (Connection connect = DBConnection.dbconnect();
				PreparedStatement statement = connect.prepareStatement(UPDATE_CUSTOMER_SQL)) {
			statement.setString(1, customer.getFirstName());
			statement.setString(2, customer.getLastName());
			statement.setString(3, customer.getEmail());
			statement.setString(4, customer.getPassword());
			statement.setString(5, customer.getMobileNum());
			statement.setString(6, customer.getArea());
			statement.setString(7, customer.getCity());
			statement.setString(8, customer.getState());
			statement.setInt(9, customer.getId());
			
			int status = statement.executeUpdate();
			
			if(status > 0) {
				return true;
			}
		}
		return false;
	}

}
