package com.communitySystem.dao;

import com.communitySystem.dao.user.UserDao;
import com.communitySystem.model.Residents;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

// 加载spring配置文件
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class UserDaoTest {
    @Autowired
    private UserDao userDao;

    @Test
    public void testSelectUser() throws Exception{
        long id=1;
        Residents resident = userDao.selectResidentUser(id);
        System.out.println(resident.getName());
    }
}
