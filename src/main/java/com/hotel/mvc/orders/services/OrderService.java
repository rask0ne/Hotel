package com.hotel.mvc.orders.services;

import com.hotel.mvc.orders.models.OrderModel;

/**
 * handles orders
 */
public class OrderService {

    /**
     * handles order and returns message
     */
    public String bookRoom(OrderModel orderModel) {
            return new String("Your order has been registered");
    }
}
