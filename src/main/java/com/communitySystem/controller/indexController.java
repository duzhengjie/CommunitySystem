package com.communitySystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {
    @RequestMapping("/index")
    public String getIndexPage(){
        return "resident/homepage";
    }
}
