package com.communitySystem.service.impl.topic;

import com.communitySystem.dao.topic.TopicDao;
import com.communitySystem.model.topic.Topic;
import com.communitySystem.model.topic.TopicType;
import com.communitySystem.service.TopicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TopicServiceImpl implements TopicService
{
    @Resource
    private TopicDao topicDao;

    @Override
    public boolean insertTopic(Topic topic) {
        return topicDao.insertTopic(topic);
    }

    @Override
    public List<Topic> queryTopicByTypeId(String topicTypeId) {
        return topicDao.queryTopicByTypeId(topicTypeId);
    }

    @Override
    public List<TopicType> queryType() {
        List<TopicType> types = topicDao.queryType();
        return types;
    }
}
