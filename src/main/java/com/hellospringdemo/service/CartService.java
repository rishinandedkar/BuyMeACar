package com.hellospringdemo.service;

import com.hellospringdemo.model.Cart;

public interface CartService {
    Cart getCartById(int cartId);

    void update(Cart cart);
}
