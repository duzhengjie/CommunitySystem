package com.communitySystem.service.impl;

import com.communitySystem.dao.UserDao;
import com.communitySystem.model.User;
import com.communitySystem.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    @Override
    public User selectUser(long userId) {
        return this.userDao.selectUser(userId);
    }
}
