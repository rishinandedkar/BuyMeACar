package com.hellospringdemo.dao;

import com.hellospringdemo.model.Customer;

import java.util.List;

public interface CustomerDao {
    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

   Customer getCustomerByUsername (String username);

    List<Customer> getAllCustomers();
}
