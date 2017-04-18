package com.software.core.service;

import com.software.core.entity.User;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
public interface UserService {
    User findbyId(Integer id);
    List<User> findbyName(String name);
    List<User> findAll();
    void save(User user);
    void deletebyId(Integer id);
}
