package com.software.core.dao;

import com.software.core.entity.Order;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.Date;
import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Repository
@Table(name = "order")
public interface OrderDao extends CrudRepository<Order,Integer> {
    //根据订单号查找
    Order findOrderByOrderId(Integer id);
    //根据用户ID查找
    List<Order> findOrdersByUserId(Integer id);
    //根据下单时间查找
    List<Order> findOrdersByOrderTime(Date time);
    //查询所有订单
    List<Order> findAll();
    //保存或更新订单类
    @Override
    Order save(Order order);
    //根据ID删除订单
    void deleteOrderByOrderId(Integer id);
}
