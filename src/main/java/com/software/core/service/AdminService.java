package com.software.core.service;

import com.software.core.entity.Admin;

public interface AdminService {
    String test();
    Admin findbyId(Integer id);
    Admin findbyName(String name);
}