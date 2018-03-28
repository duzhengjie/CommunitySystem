package com.communitySystem.controller;

import com.communitySystem.model.User;
import com.communitySystem.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    @ResponseBody
    @RequestMapping("/showUser.do")
    public Map<String,User> selectUser(Map<String,User> m,@RequestParam(required = false) long id){
        User user = userService.selectUser(id);
        m.put("data",user);
        System.out.println(user);
        return m;
    }
}
