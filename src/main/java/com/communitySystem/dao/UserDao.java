package com.communitySystem.dao;

import com.communitySystem.model.FgPsdUser;
import com.communitySystem.model.Residents;
import com.communitySystem.model.User;

public interface UserDao {
    User checkUser(User user);
    Residents selectResidentUser(long id);
    Residents checkResidentUser(FgPsdUser fgPsdUser);
    boolean changePsw(long id,String password);
}
