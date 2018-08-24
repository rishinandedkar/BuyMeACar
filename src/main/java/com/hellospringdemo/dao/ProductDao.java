package com.hellospringdemo.dao;

import com.hellospringdemo.model.Product;

import java.util.List;

public interface ProductDao {

    void addProduct(Product product);
    Product getProductById(String id);
    List<Product> getAllProducts();
    void deleteProduct(String id);
    void editProduct(Product product);
}
