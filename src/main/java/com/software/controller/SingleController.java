package com.software.controller;

/**
 * Created by root on 17-4-18.
 */

import com.software.core.entity.Animal;
import com.software.core.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author grey
 * 商品详情页控制器，包括详情页跳转，显示及相关操作
 */
@RestController
@EnableAutoConfiguration
public class SingleController {
    @Autowired
    AnimalService animalService;
    @GetMapping(value = "/singleshow/{animalId}")
    public Animal showSingleAnimal(
            @PathVariable int animalId
    ){
        return animalService.findbyId(animalId);
    }
}
