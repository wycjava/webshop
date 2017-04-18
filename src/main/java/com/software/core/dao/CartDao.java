package com.software.core.dao;

import com.software.core.entity.Cart;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Repository
@Table(name = "cart")
public interface CartDao extends CrudRepository<Cart,Integer> {
    //根据购物车ID查找
    Cart findCartByCartId(Integer id);
    //根据用户名查找
    List<Cart> findCartsByUserId(Integer id);
    //查询所有购物车
    List<Cart> findAll();
    //保存或更新购物车类
    @Override
    Cart save(Cart cart);
    //根据ID删除购物车
    void deleteCartByCartId(Integer id);
}
