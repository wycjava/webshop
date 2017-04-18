package com.software.core.service.impl;

import com.software.core.dao.AnimalDao;
import com.software.core.entity.Animal;
import com.software.core.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Service
public class AnimalServiceImpl implements AnimalService {
    @Autowired
    private AnimalDao animaldao;
    @Override
    public Animal findbyId(Integer id){
        return animaldao.findAnimalByAnimalId(id);
    }
    @Override
    public List<Animal> findbyName(String name){
        return animaldao.findAnimalsByBreedName(name);
    }
    @Override
    public List<Animal> findAll(){ return animaldao.findAll(); }
    @Override
    public void save(Animal animal){
        animaldao.save(animal);
    }
    @Override
    public void deletebyId(Integer id)
    {
        animaldao.deleteAnimalByAnimalId(id);
    }
}
