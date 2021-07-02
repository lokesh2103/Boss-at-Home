package com.bossathome.daos;

import java.sql.SQLException;

import com.bossathome.pojos.Customer;

public interface CustomerDAO {

	public boolean registerCustomer(Customer customer) throws ClassNotFoundException, SQLException;

	public Customer loginCustomer(Customer customer) throws ClassNotFoundException, SQLException;

	public boolean changePassword(Customer customer) throws ClassNotFoundException, SQLException;
	
	public boolean updateCustomer(Customer customer) throws ClassNotFoundException, SQLException;
	
}
