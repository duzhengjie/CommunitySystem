package com.communitySystem.service;

import com.communitySystem.model.topic.Topic;
import com.communitySystem.model.topic.TopicType;

import java.util.List;

public interface TopicService
{
    boolean insertTopic(Topic topic);

    List<Topic> queryTopicByTypeId(String topicTypeId);

    List<TopicType> queryType();
}
