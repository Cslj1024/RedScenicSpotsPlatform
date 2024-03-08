package com.lj.service;

import com.lj.entity.TScenicSpots;

import java.util.List;

public interface IScenicSpotsService {
    List<TScenicSpots> getlist();

    TScenicSpots getScenicSpotsById(Long id);

    void editScenicSpotsById(TScenicSpots tScenicSpots);

    void delScenicSpotsById(Long id);

    void addScenicSpots(TScenicSpots tScenicSpots);



}
