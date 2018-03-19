package com.communitySystem.dao;

import com.communitySystem.model.User;

public interface UserDao {
    User selectUser(long id);
}
