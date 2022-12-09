package com.mao.flowers.service.impl;

import com.mao.mapper.FlowerMapper;
import com.mao.flowers.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FlowerServiceImpl implements FlowerService {

    @Autowired
    private FlowerMapper flowerMapper;
    @Override
    public Integer deleteFlower(String id) throws Exception {
        return flowerMapper.deleteByPrimaryKey(id);
    }
}
