package com.software.core.service;

import com.software.core.entity.Order;

import java.util.Date;
import java.util.List;
/**
 * Created by root on 17-4-9.
 */
public interface OrderService {
    Order findbyId(Integer id);
    List<Order> findbyUserId(Integer id);
    List<Order> findbytime(Date time);
    List<Order> findAll();
    void save(Order order);
    void deletebyId(Integer id);
}
