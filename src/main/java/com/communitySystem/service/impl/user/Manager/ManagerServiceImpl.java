package com.communitySystem.service.impl.user.Manager;

import com.communitySystem.dao.user.Manager.ManagerDao;
import com.communitySystem.model.Gonggao;
import com.communitySystem.service.ManagerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("managerService")
public class ManagerServiceImpl implements ManagerService{
    @Resource
    ManagerDao managerDao;
    @Override
    public List<Gonggao> getAllGonggao() {
        List<Gonggao> gonggaoList = managerDao.getAll();
        return gonggaoList;
    }
}