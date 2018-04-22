package com.communitySystem.controller;

import com.communitySystem.model.FgPsdUser;
import com.communitySystem.model.Residents;
import com.communitySystem.model.User;
import com.communitySystem.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    //用户登录
    @ResponseBody
    @RequestMapping("/userLogin.do")
    public Map<String,String> userLogin(User user, HttpSession session){
        Map<String,String> m = new HashMap<>();
        System.out.println("password:"+user.getPassword());
        User dbUser = userService.checkUser(user);
        if(dbUser != null){
            if(dbUser.getRole().equals("住户"))
            {
                Residents resident = userService.selectResidentUser(dbUser.getId());
                session.setAttribute("currentLoginUser",resident);
            }
            m.put("login","success");
            return m;
        }
        else{
            m.put("login","fail");
            return m;
        }
    }

    //用户登出
    @ResponseBody
    @RequestMapping("/userLogout.do")
    public Map<String,String> userLogout(HttpSession session){
        Map<String,String> m = new HashMap<>();
        session.invalidate();
        m.put("logout","success");
        return m;
    }

    //验证用户输入的信息是否正确，用于找回密码
    @ResponseBody
    @RequestMapping("/checkFgPswUser.do")
    public Map<String,String> checkFgPswUser(FgPsdUser fgPsdUser,HttpSession session){
        Map<String,String> m = new HashMap<>();
//        System.out.println("姓名："+fgPsdUser.getName()+"身份证号："+fgPsdUser.getIdentity());
        if(fgPsdUser.getRole().equals("住户")){
            Residents resident = userService.checkResidentUser(fgPsdUser);
            if(resident != null){
                m.put("exist","yes");
                session.setAttribute("cgPswResident",resident);//会话用于获取ID修改密码
            }
            else{
                m.put("exist","no");
            }
        }
        return m;
    }

    //更改密码
    @ResponseBody
    @RequestMapping("/userChangePsw.do")
    public Map<String,String> changePsw(@RequestParam(value = "password",required = false) String password, HttpSession session){
        Map<String,String> m = new HashMap<>();
        Residents resident = (Residents) session.getAttribute("cgPswResident");
        long id = resident.getId();
        System.out.println("id:"+id);
        if(userService.changePsw(id,password)){
            m.put("changePsw","success");
        }
        else{
            m.put("changePsw","fail");
        }
        session.invalidate();//销毁
        return m;
    }
}
