package com.hellospringdemo.service;

import com.hellospringdemo.model.Product;

import java.util.List;

public interface ProductService {


    List<Product> getProductList();
    Product getProductById(int id);
    void addProduct(Product product);
    void editProduct(Product product);
    void deleteProduct(Product product);
}
