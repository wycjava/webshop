package com.software.core.service.impl;

import com.software.core.dao.UserDao;
import com.software.core.entity.User;
import com.software.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userdao;
    @Override
    public User findbyId(Integer id) {
        return userdao.findUserByUserId(id);
    }

    @Override
    public List<User> findbyName(String name) {
        return userdao.findUserByUserName(name);
    }

    @Override
    public List<User> findAll(){ return userdao.findAll(); }

    @Override
    public void save(User user) {
        userdao.save(user);
    }

    @Override
    public void deletebyId(Integer id) {
        userdao.deleteUserByUserId(id);
    }
}
