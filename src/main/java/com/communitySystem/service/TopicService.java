package com.communitySystem.service;

import com.communitySystem.model.topic.Topic;

import java.util.List;

public interface TopicService
{
    boolean insertTopic(Topic topic);

    List<Topic> queryByTopicType(String topicType);
}
