package com.software.core.dao;

import com.software.core.entity.Animal;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Repository
@Table(name = "animal")
public interface AnimalDao extends CrudRepository<Animal,Integer> {
    //根据动物ID查找
    Animal findAnimalByAnimalId(Integer id);
    //根据动物种类查找
    List<Animal> findAnimalsByBreedName(String name);
    //查询所有动物
    List<Animal> findAll();
    //保存或更新动物类
    @Override
    Animal save(Animal animal);
    //根据ID删除动物
    void deleteAnimalByAnimalId(Integer id);
}
