package com.software.core.dao;

import com.software.core.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Repository
@Table(name = "user")
public interface UserDao extends CrudRepository<User,Integer> {
    //根据用户ID查找
    User findUserByUserId(Integer id);
    //根据用户名查找
    List<User> findUserByUserName(String name);
    //查询所有用户
    List<User> findAll();
    //保存或更新用户类
    @Override
    User save(User user);
    //根据ID删除用户
    void deleteUserByUserId(Integer id);
}
