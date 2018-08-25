package com.hellospringdemo.service.impl;

import com.hellospringdemo.dao.CustomerOrderDao;
import com.hellospringdemo.model.Cart;
import com.hellospringdemo.model.CartItem;
import com.hellospringdemo.model.CustomerOrder;
import com.hellospringdemo.service.CartService;
import com.hellospringdemo.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal=grandTotal+item.getTotalPrice();
        }

        return grandTotal;
    }
}
