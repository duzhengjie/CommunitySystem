package com.communitySystem.service.impl.good;

import com.communitySystem.dao.good.GoodDao;
import com.communitySystem.model.good.GoodComment;
import com.communitySystem.model.good.GoodInfo;
import com.communitySystem.service.GoodService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 */
@Service
public class GoodDaoImpl implements GoodService
{

    @Resource
    private GoodDao goodDao;

    @Override
    public void publicGood(GoodInfo goodInfo)
    {
        goodDao.insertGood(goodInfo);
    }

    @Override
    public void deleteGood(String goodId)
    {
        goodDao.deleteGood(goodId);
    }

    @Override
    public void updateGood(GoodInfo goodInfo)
    {
        goodDao.updateGood(goodInfo);
    }

    @Override
    public List<GoodInfo> queryAllGoods()
    {
        return goodDao.queryAllGoods();
    }

    @Override
    public List<GoodInfo> queryUserGoods(String userId)
    {
        return goodDao.queryUserGoods(userId);
    }

    @Override
    public List<GoodComment> queryGoodAllComment(String goodId)
    {
        return goodDao.queryGoodAllComment(goodId);
    }

    @Override
    public void insertGoodComment(GoodComment goodComment)
    {
        goodDao.insertGoodComment(goodComment);
    }
}
