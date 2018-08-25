package com.hellospringdemo.dao;

import com.hellospringdemo.model.Cart;
import com.hellospringdemo.model.CartItem;

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
