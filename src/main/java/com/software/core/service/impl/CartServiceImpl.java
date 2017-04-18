package com.software.core.service.impl;

import com.software.core.dao.CartDao;
import com.software.core.entity.Cart;
import com.software.core.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartDao cartdao;
    @Override
    public Cart findbyId(Integer id) {
        return cartdao.findCartByCartId(id);
    }

    @Override
    public List<Cart> findbyUserId(Integer id) {
        return cartdao.findCartsByUserId(id);
    }

    @Override
    public List<Cart> findAll(){ return cartdao.findAll(); }

    @Override
    public void save(Cart cart) {
        cartdao.save(cart);
    }

    @Override
    public void deletebyId(Integer id) {
        cartdao.deleteCartByCartId(id);
    }
}
