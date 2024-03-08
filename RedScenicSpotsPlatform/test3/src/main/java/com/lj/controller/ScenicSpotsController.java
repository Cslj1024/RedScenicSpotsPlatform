package com.lj.controller;


import com.lj.entity.TScenicSpots;
import com.lj.service.IScenicSpotsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("scenicSpots")
public class ScenicSpotsController {
    @Autowired
    private IScenicSpotsService scenicSpotsService;

    @RequestMapping("list")
    @ResponseBody
    public List<TScenicSpots> getlist(){
        return scenicSpotsService.getlist();
    }

    @RequestMapping("getScenicSpotsById")
    @ResponseBody
    public TScenicSpots getScenicSpotsById(Long id){
        return scenicSpotsService.getScenicSpotsById(id);
    }

    @RequestMapping(value="editScenicSpots",method = RequestMethod.POST)
    @ResponseBody
    public String editScenicSpotsById(@RequestBody TScenicSpots tScenicSpots){

        scenicSpotsService.editScenicSpotsById(tScenicSpots);

        return "success";
    }

    @RequestMapping(value="editScenicSpots",method = RequestMethod.GET)
    @ResponseBody
    public String delScenicSpotsById(Long id){

        scenicSpotsService.delScenicSpotsById(id);

        return "success";
    }
    @RequestMapping(value="addScenicSpots",method = RequestMethod.POST)
    @ResponseBody
    public String addScenicSpots(TScenicSpots tScenicSpots){
        tScenicSpots.setCreateTime(new Date());
        tScenicSpots.setCreateUser(1L);
        tScenicSpots.setTypeId(1L);
        tScenicSpots.setTypeName("主要革命圣地");
        tScenicSpots.setFlag(true);
        tScenicSpots.setImages("http://www.baidu.com");
        tScenicSpots.setAddress("北京");
        tScenicSpots.setUpdateTime(new Date());
        tScenicSpots.setUpdateUser(1L);
        scenicSpotsService.addScenicSpots(tScenicSpots);


        return "success";
    }
    /**
     * 获得分页对象，里面封装了分页需要用到的所有信息
     *
     * @param pageNum  当前是第几页
     * @param pageSize 当前页一共显示多少条记录
     * @return
     */
    @RequestMapping(value="getPageInfo",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo getPageInfo(int pageNum, int pageSize){

        PageHelper.startPage(pageNum,pageSize);

        List<TScenicSpots> list = scenicSpotsService.getlist();

        PageInfo pageInfo = new PageInfo(list);

        return pageInfo;
    }
}
