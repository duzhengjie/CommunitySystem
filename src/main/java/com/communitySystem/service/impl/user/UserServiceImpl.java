package com.communitySystem.service.impl.user;

import com.communitySystem.dao.user.UserDao;
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
    public boolean changePsw(String id, String password) {
        boolean result = userDao.changePsw(id,password);
        return result;
    }

    @Override
    public Residents selectResidentUser(String userId) {
        return this.userDao.selectResidentUser(userId);
    }

    @Override
    public Residents checkResidentUser(FgPsdUser fgPsdUser) {
        if(userDao.checkResidentUser(fgPsdUser) != null){
            return userDao.checkResidentUser(fgPsdUser);
        }
        return null;
    }

    @Override
    public int checkNickName(String nickName) {
        int i = userDao.checkNickName(nickName);
        return i;
    }

    @Override
    public boolean updateNickName(String nickName,String id) {
        return userDao.updateNickName(nickName,id);
    }
}
