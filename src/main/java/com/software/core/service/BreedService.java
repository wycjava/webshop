package com.software.core.service;

import com.software.core.entity.Breed;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
public interface BreedService {
    Breed findbyId(Integer id);
    List<Breed> findbyName(String name);
    List<Breed> findAll();
    void save(Breed breed);
    void deletebyId(Integer id);
}
