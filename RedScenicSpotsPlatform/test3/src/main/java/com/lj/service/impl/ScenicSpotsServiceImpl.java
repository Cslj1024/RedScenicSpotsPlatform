package com.lj.service.impl;

import com.lj.entity.TScenicSpots;
import com.lj.mapper.TScenicSpotsMapper;
import com.lj.service.IScenicSpotsService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScenicSpotsServiceImpl implements IScenicSpotsService {
    @Autowired
    private TScenicSpotsMapper tScenicSpotsMapper;

    public List<TScenicSpots> getlist() {
        return tScenicSpotsMapper.selectScenicSpots();
    }
    public TScenicSpots getScenicSpotsById(Long id) {
        return tScenicSpotsMapper.selectByPrimaryKey(id);
    }
    public void editScenicSpotsById(TScenicSpots tScenicSpots) {tScenicSpotsMapper.updateByPrimaryKeySelective(tScenicSpots);}

    public void delScenicSpotsById(Long id) {
        tScenicSpotsMapper.deleteByPrimaryKey(id);
    }

    public void addScenicSpots(TScenicSpots tScenicSpots) {
        tScenicSpotsMapper.insert(tScenicSpots);
    }


}
