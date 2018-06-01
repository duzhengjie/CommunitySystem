package com.communitySystem.controller;

import com.communitySystem.model.Gonggao;
import com.communitySystem.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class indexController {
    @Autowired
    private ManagerService managerService;

    @RequestMapping("/index")
    public String getIndexPage(Map<String,List> m){
        List<Gonggao> gonggaoList = managerService.getAllGonggao();
        m.put("gonggaoList",gonggaoList);
        return "resident/homepage";
    }
}
