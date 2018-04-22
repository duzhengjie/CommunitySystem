package com.communitySystem.service.impl;

import com.communitySystem.dao.UserDao;
import com.communitySystem.model.FgPsdUser;
import com.communitySystem.model.Residents;
import com.communitySystem.model.User;
import com.communitySystem.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    @Override
    public User checkUser(User user) {
        if(userDao.checkUser(user) != null){
            return userDao.checkUser(user);
        }
        return null;
    }

    @Override
    public boolean changePsw(long id, String password) {
        boolean result = userDao.changePsw(id,password);
        return result;
    }

    @Override
    public Residents selectResidentUser(long userId) {
        return this.userDao.selectResidentUser(userId);
    }

    @Override
    public Residents checkResidentUser(FgPsdUser fgPsdUser) {
        if(userDao.checkResidentUser(fgPsdUser) != null){
            return userDao.checkResidentUser(fgPsdUser);
        }
        return null;
    }
}
