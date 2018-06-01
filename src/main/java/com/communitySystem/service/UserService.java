package com.communitySystem.service;

import com.communitySystem.model.FgPsdUser;
import com.communitySystem.model.Residents;
import com.communitySystem.model.User;

public interface UserService {
    User checkUser(User user);

    boolean changePsw(String id, String password);

    Residents selectResidentUser(String userId);

    Residents checkResidentUser(FgPsdUser fgPsdUser);

    int checkNickName(String nickName);

    boolean updateNickName(String nickName,String id);
}
