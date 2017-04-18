package com.software.core.dao;

import com.software.core.entity.Admin;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;

@Repository
@Table(name = "admin")
public interface AdminDao extends CrudRepository<Admin,Integer> {
    //根据管理员ID查找
    Admin findAdminByAdminId(Integer id);
    //根据管理员用户名查找
    Admin findAdminByAdminName(String name);
}