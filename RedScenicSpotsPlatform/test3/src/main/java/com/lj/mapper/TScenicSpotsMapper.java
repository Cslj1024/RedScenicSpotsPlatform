package com.lj.mapper;

import com.lj.entity.TScenicSpots;

import java.util.List;

public interface TScenicSpotsMapper {
    int deleteByPrimaryKey(Long id);//根据主键删除

    int insert(TScenicSpots record);//插入

    int insertSelective(TScenicSpots record);//插入

    TScenicSpots selectByPrimaryKey(Long id);//根据主键查询

    int updateByPrimaryKeySelective(TScenicSpots record);//根据主键更新

    int updateByPrimaryKey(TScenicSpots record);//根据主键更新

    List<TScenicSpots> selectScenicSpots();//查询所有景点



}
