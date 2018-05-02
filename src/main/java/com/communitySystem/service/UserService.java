package com.communitySystem.service;

import com.communitySystem.model.FgPsdUser;
import com.communitySystem.model.Residents;
import com.communitySystem.model.User;

public interface UserService {
    User checkUser(User user);

    boolean changePsw(long id, String password);

    Residents selectResidentUser(long userId);

    Residents checkResidentUser(FgPsdUser fgPsdUser);
}
