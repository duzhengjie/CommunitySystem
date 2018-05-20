package com.communitySystem.service.impl.topic;

import com.communitySystem.dao.topic.TopicDao;
import com.communitySystem.model.topic.Topic;
import com.communitySystem.service.TopicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TopicDaoImpl implements TopicService
{
    @Resource
    private TopicDao topicDao;

    @Override
    public boolean insertTopic(Topic topic)
    {
        return topicDao.insertTopic(topic);
    }

    @Override
    public List<Topic> queryByTopicType(String topicType)
    {
        return topicDao.queryByTopicType(topicType);
    }

    @Override
    public boolean updateTopicViewCount(String topicId) {
        return topicDao.updateTopicViewCount(topicId);
    }

    @Override
    public boolean updatePraiser(Topic topic) {

        return topicDao.updatePraiser(topic);
    }

    @Override
    public boolean cancelPraiser(Topic topic) {
        return topicDao.cancelPraiser(topic);
    }
}
