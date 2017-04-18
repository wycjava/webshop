package com.software.core.service;

import com.software.core.entity.Good;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
public interface GoodService {
    Good findbyId(Integer id);
    List<Good> findbyName(String name);
    List<Good> findAll();
    void save(Good good);
    void deletebyId(Integer id);
}
