package com.software.core.service.impl;

import com.software.core.dao.GoodDao;
import com.software.core.entity.Good;
import com.software.core.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Service
public class GoodServiceImpl implements GoodService {
    @Autowired
    private GoodDao gooddao;
    @Override
    public Good findbyId(Integer id) {
        return gooddao.findGoodByGoodId(id);
    }

    @Override
    public List<Good> findbyName(String name) {
        return gooddao.findGoodsByGoodName(name);
    }

    @Override
    public List<Good> findAll(){ return gooddao.findAll(); }

    @Override
    public void save(Good good) {
        gooddao.save(good);
    }

    @Override
    public void deletebyId(Integer id) {
        gooddao.deleteGoodByGoodId(id);
    }
}
