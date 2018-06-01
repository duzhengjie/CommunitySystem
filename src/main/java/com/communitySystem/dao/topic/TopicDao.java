package com.communitySystem.dao.topic;

import com.communitySystem.model.topic.Topic;
import com.communitySystem.model.topic.TopicType;

import java.util.List;

public interface TopicDao
{
    boolean insertTopic(Topic topic);

    List<Topic> queryTopicByTypeId(String topicTypeId);

    List<TopicType> queryType();

    Topic queryTopicDetailByTopicId(String topicId);
}
