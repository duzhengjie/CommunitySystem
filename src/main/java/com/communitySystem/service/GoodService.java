package com.communitySystem.service;


import com.communitySystem.model.good.GoodComment;
import com.communitySystem.model.good.GoodInfo;

import java.util.List;

/**
 *
 */
public interface GoodService
{
    /**
     * 发布物品
     *
     * @param goodInfo 物品信息
     */
    void publicGood(GoodInfo goodInfo);

    /**
     * 删除物品信息
     *
     * @param goodId goodId
     */
    void deleteGood(String goodId);

    /**
     * 修改物品信息
     * @param goodInfo goodInfo
     */
    void updateGood(GoodInfo goodInfo);

    /**
     * 查询全部物品信息
     *
     * @return 全部物品信息
     */
    List<GoodInfo> queryAllGoods();

    /**
     * 查询用户发布的全部物品信息
     *
     * @param userId userId
     * @return 该用户发布的全部信息
     */
    List<GoodInfo> queryUserGoods(String userId);

    /**
     * 查询物品下的所有评论
     * @param goodId goodId
     * @return 该物品下的所有评论
     */
    List<GoodComment> queryGoodAllComment(String goodId);

    /**
     * 评论物品
     * @param goodComment goodComment
     */
    void insertGoodComment(GoodComment goodComment);
}
