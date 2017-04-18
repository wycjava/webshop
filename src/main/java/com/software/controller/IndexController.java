package com.software.controller;

import com.software.core.entity.Animal;
import com.software.core.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author grey
 * 主页控制器，包括主页内相关跳转，主页商品显示
 */
@RestController
@EnableAutoConfiguration
public class IndexController {

    @Autowired
    AnimalService animalService;

    /**
     * 主页跳转
     * @return ModelAndView
     */
    @GetMapping(value = "/")
    public ModelAndView toindex() {
        return new ModelAndView("index");
    }

    /**
     * 登录跳转
     * @return ModelAndView
     */
    @GetMapping(value = "/login")
    public ModelAndView tologin() {
        return new ModelAndView("login");
    }

    /**
     * 注册跳转
     * @return ModelAndView
     */
    @GetMapping(value = "/register")
    public ModelAndView toregister() {
        return new ModelAndView("register");
    }

    /**
     * 详情页跳转
     * @return ModelAndView
     */
    @GetMapping(value = "/single")
    public ModelAndView single(
            @RequestParam int animalId
    ){
        ModelAndView single =  new ModelAndView("single");
        single.getModel().put("animalId",animalId);
        return single;
    }

    /**
     * 首页返回数据库中所有动物类
     * @param model
     * @return List<Animal>
     */
    @GetMapping(value = "/showaction")
    public List<Animal> showAnimalList(Model model) {
        return animalService.findAll();
    }
}
