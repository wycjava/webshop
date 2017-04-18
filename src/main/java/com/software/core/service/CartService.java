package com.software.core.service;

import com.software.core.entity.Cart;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
public interface CartService {
    Cart findbyId(Integer id);
    List<Cart> findbyUserId(Integer id);
    List<Cart> findAll();
    void save(Cart cart);
    void deletebyId(Integer id);
}
