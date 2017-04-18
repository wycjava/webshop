package com.software.core.dao;

import com.software.core.entity.Good;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

/**
 * Created by root on 17-4-9.
 */
@Repository
@Table(name = "good")
public interface GoodDao extends CrudRepository<Good,Integer> {
    //根据周边商品ID查找
    Good findGoodByGoodId(Integer id);
    //根据周边商品种类查找
    List<Good> findGoodsByGoodName(String name);
    //查询所有周边商品
    List<Good> findAll();
    //保存或更新周边商品类
    @Override
    Good save(Good good);
    //根据ID删除周边商品
    void deleteGoodByGoodId(Integer id);
}
