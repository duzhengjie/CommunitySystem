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

    @RequestMapping("/showLoginPage")
    public String showLoginPage(){
        return "/login";
    }
    //用户登录
    @ResponseBody
    @RequestMapping("/userLogin")
    public Map<String,String> userLogin(User user, HttpSession session){
        Map<String,String> m = new HashMap<>();
        System.out.println("password:"+user.getPassword());
        User dbUser = userService.checkUser(user);
        if(dbUser != null){
            if(dbUser.getRole().equals("2"))
            {
                Residents resident = userService.selectResidentUser(dbUser.getId());
                session.setAttribute("currentLoginUser",resident);
                if(resident.getNickname().equals("")){
                    m.put("login","firstLogin");
                }
                else
                    m.put("login","success");
            }
        }
        else{
            m.put("login","fail");
        }
        return m;
    }

    //用户登出
    @ResponseBody
    @RequestMapping("/userLogout")
    public Map<String,String> userLogout(HttpSession session){
        Map<String,String> m = new HashMap<>();
        session.invalidate();
        m.put("logout","success");
        return m;
    }

    //验证用户输入的信息是否正确，用于找回密码
    @ResponseBody
    @RequestMapping("/checkFgPswUser")
    public Map<String,String> checkFgPswUser(FgPsdUser fgPsdUser,HttpSession session){
        Map<String,String> m = new HashMap<>();
        System.out.println("姓名："+fgPsdUser.getName()+"身份证号："+fgPsdUser.getIdentity());
        if(fgPsdUser.getRole().equals("2")){
            Residents resident = userService.checkResidentUser(fgPsdUser);
            if(resident != null){
                m.put("exist","yes");
                session.setAttribute("cgPswResident",resident);//创建会话用于获取ID修改密码
            }
            else{
                m.put("exist","no");
            }
        }
        return m;
    }

    //更改密码
    @ResponseBody
    @RequestMapping("/userChangePsw")
    public Map<String,String> changePsw(@RequestParam(value = "password",required = false) String password, HttpSession session){
        Map<String,String> m = new HashMap<>();
        Residents resident = (Residents) session.getAttribute("cgPswResident");
        String id = resident.getId();
//        System.out.println("id:"+id);
        if(userService.changePsw(id,password)){
            m.put("changePsw","success");
        }
        else{
            m.put("changePsw","fail");
        }
        session.invalidate();//销毁会话
        return m;
    }

    //用户查看个人信息
    @RequestMapping("/showUserInfo")
    public String showUserInfo(){
        return "resident/userInfo";
    }

    //用户注册昵称
    @ResponseBody
    @RequestMapping("/userRegNickName")
    public Map<String,String> regNickName(@RequestParam(value = "nickName",required = false) String nickName,HttpSession session){
        Map<String,String> m = new HashMap<>();
        System.out.println(nickName);
        Residents resident = (Residents)session.getAttribute("currentLoginUser");
        if(userService.checkNickName(nickName)==0){
            if(userService.updateNickName(nickName,resident.getId())){
                m.put("reg","success");
            }
        }
        else{
            m.put("reg","fail");
        }
        return m;
    }
}
