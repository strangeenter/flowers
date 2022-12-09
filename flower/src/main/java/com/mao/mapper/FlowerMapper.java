package com.mao.mapper;

import com.mao.flowers.model.Flower;

public interface FlowerMapper {
    int deleteByPrimaryKey(String id);

    int insert(Flower record);

    int insertSelective(Flower record);

    Flower selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Flower record);

    int updateByPrimaryKey(Flower record);
}