package com.communitySystem.controller;

import com.communitySystem.model.topic.Topic;
import com.communitySystem.service.TopicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("")
public class TopicController {
    @Resource
    private TopicService topicService;

    /**
     * 根据类型查询话题
     */
    @ResponseBody
    @RequestMapping("")
    public List<Topic> queryTopicList(String topicType)
    {
        List<Topic> topicList = topicService.queryByTopicType(topicType);
        return topicList;
    }


}
