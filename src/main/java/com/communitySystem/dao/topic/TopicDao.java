package com.communitySystem.dao.topic;

import com.communitySystem.model.topic.Topic;

import java.util.List;

public interface TopicDao
{
    /**
     * 插入一条话题
     *
     * @param topic 话题
     * @return 是否插入成功
     */
    boolean insertTopic(Topic topic);

    /**
     * 根据话题类型查询所有该类型话题
     *
     * @param topicType 话题类型
     * @return 话题列表
     */
    List<Topic> queryByTopicType(String topicType);

    /**
     * 话题浏览数自增1
     *
     * @param topicId 话题Id
     * @return +1是否成功
     */
    boolean updateTopicViewCount(String topicId);

    /**
     * 更新话题点赞数及点赞人
     *
     * @param topic 该话题信息
     * @return 是否更新成功
     */
    boolean updatePraiser(Topic topic);

    /**
     * 取消对某个话题的点赞
     * @param topic 话题信息
     * @return 是否成功
     */
    boolean cancelPraiser(Topic topic);
}
