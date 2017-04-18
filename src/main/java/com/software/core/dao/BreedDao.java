package com.software.core.dao;

import com.software.core.entity.Breed;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Repository
@Table(name = "breed")
public interface BreedDao extends CrudRepository<Breed,Integer> {
    //根据种类ID查找
    Breed findBreedByBreedId(Integer id);
    //根据种类名称查找
    List<Breed> findBreedsByBreedName(String name);
    //查询所有种类
    List<Breed> findAll();
    //保存或更新种类 类
    @Override
    Breed save(Breed breed);
    //根据ID删除种类
    void deleteBreedByBreedId(Integer id);
}
