package com.software.core.service.impl;

import com.software.core.dao.AdminDao;
import com.software.core.entity.Admin;
import com.software.core.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao admindao;
    @Override
    public String test(){
        return "hello world";
    }
    @Override
    public Admin findbyId(Integer id){
        return admindao.findAdminByAdminId(id);
    }
    @Override
    public Admin findbyName(String name) {
        return admindao.findAdminByAdminName(name);
    }
}
