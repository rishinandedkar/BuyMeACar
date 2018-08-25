package com.hellospringdemo.service;

import com.hellospringdemo.model.Cart;
import com.hellospringdemo.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
