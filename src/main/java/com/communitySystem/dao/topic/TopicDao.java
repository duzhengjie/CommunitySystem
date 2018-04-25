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
}
