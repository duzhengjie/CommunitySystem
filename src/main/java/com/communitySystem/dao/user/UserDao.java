package com.communitySystem.dao.user;

import com.communitySystem.model.FgPsdUser;
import com.communitySystem.model.Residents;
import com.communitySystem.model.User;

public interface UserDao {
    User checkUser(User user);

    Residents selectResidentUser(String id);

    Residents checkResidentUser(FgPsdUser fgPsdUser);

    boolean changePsw(String id, String password);

    int checkNickName(String nickName);

    boolean updateNickName(String nickName,String id);
}
