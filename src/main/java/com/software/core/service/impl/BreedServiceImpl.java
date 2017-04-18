package com.software.core.service.impl;

import com.software.core.dao.BreedDao;
import com.software.core.entity.Breed;
import com.software.core.service.BreedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Service
public class BreedServiceImpl implements BreedService {
    @Autowired
    private BreedDao breeddao;
    @Override
    public Breed findbyId(Integer id) {
        return breeddao.findBreedByBreedId(id);
    }

    @Override
    public List<Breed> findbyName(String name) {
        return breeddao.findBreedsByBreedName(name);
    }

    @Override
    public List<Breed> findAll(){ return breeddao.findAll(); }

    @Override
    public void save(Breed breed) {
        breeddao.save(breed);
    }

    @Override
    public void deletebyId(Integer id) {
        breeddao.deleteBreedByBreedId(id);
    }
}
