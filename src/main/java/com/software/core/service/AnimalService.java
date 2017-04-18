package com.software.core.service;

import com.software.core.entity.Animal;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
public interface AnimalService {
    Animal findbyId(Integer id);
    List<Animal> findbyName(String name);
    List<Animal> findAll();
    void save(Animal animal);
    void deletebyId(Integer id);
}
