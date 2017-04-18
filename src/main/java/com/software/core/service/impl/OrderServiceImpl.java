package com.software.core.service.impl;

import com.software.core.dao.OrderDao;
import com.software.core.entity.Order;
import com.software.core.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderdao;
    @Override
    public Order findbyId(Integer id) {
        return orderdao.findOrderByOrderId(id);
    }

    @Override
    public List<Order> findbyUserId(Integer id) {
        return orderdao.findOrdersByUserId(id);
    }

    @Override
    public List<Order> findbytime(Date time) {
        return orderdao.findOrdersByOrderTime(time);
    }

    @Override
    public List<Order> findAll(){ return orderdao.findAll(); }

    @Override
    public void save(Order order) {
        orderdao.save(order);
    }

    @Override
    public void deletebyId(Integer id) {
        orderdao.deleteOrderByOrderId(id);
    }
}
