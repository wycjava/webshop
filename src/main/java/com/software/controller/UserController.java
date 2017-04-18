package com.software.controller;

import com.software.core.entity.User;
import com.software.core.service.CartService;
import com.software.core.service.UserService;
import com.software.result.JsonResult;
import com.software.result.ResultCode;
import com.software.util.RegisterCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author grey
 * 用户控制器，包括用户登录注册，个人中心等相关功能
 */
@RestController
@EnableAutoConfiguration
public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    CartService cartService;

    /**
     * 登录
     * @param request
     * @param username
     * @param password
     * @return JsonResult
     */
    @PostMapping(value = "/Login")
    public JsonResult login(HttpServletRequest request,
                            @RequestParam("username") String username,
                            @RequestParam("password") String password) {
        List<User> Users = userService.findbyName(username);
        User user = Users.get(0);
        if (user.getUserPwd().equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("unickname", user.getUserNickname());
            return new JsonResult(ResultCode.SUCCESS, null, user.getUserId()+user.getUserNickname()+user.getUserName());
        } else {
            return new JsonResult(ResultCode.EXCEPTION, null, "error");
        }
    }

    /**
     * 注销
     * @param request
     * @return ModelAndView
     */
    @GetMapping(value = "/Loginout")
    public ModelAndView loginout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return new ModelAndView("index");
    }

    /**
     * 注册
     * @param request
     * @param point
     * @param truename
     * @param username
     * @param password
     * @param address
     * @param nickname
     * @param phone
     * @return JsonResult
     */
    @PostMapping(value = "/Regist")
    public JsonResult register(HttpServletRequest request,
                               Integer point,
                               @RequestParam("truename") String truename,
                               @RequestParam("username") String username,
                               @RequestParam("userpwd") String password,
                               @RequestParam("address") String address,
                               @RequestParam("nickname") String nickname,
                               @RequestParam("phone") String phone
    ) {
        point = 1;
        boolean flag = RegisterCheck.check(username,userService.findAll(),password,phone);
        if(flag) {
            User user = new User(username, password, nickname, truename, address, phone, point, new Date());
            userService.save(user);
            return new JsonResult(ResultCode.CREATED, null, user.getUserId()+username+nickname);
        }
        else
            return new JsonResult(ResultCode.EXCEPTION,null,"err");
    }


    @PostMapping(value = "/addCart")
    public JsonResult addCart(){

    }

}
