package com.communitySystem.controller;

import com.communitySystem.model.topic.Topic;
import com.communitySystem.model.topic.TopicPic;
import com.communitySystem.model.topic.TopicType;
import com.communitySystem.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/topic")
public class TopicController {
    @Autowired
    private TopicService topicService;

    /**
     * 根据类型查询话题
     */
    @RequestMapping("/queryTopicByType")
    public String queryTopicList(String topicTypeId,Map<String,List<Topic>> m)
    {
        List<Topic> topicList = topicService.queryTopicByTypeId(topicTypeId);
        System.out.println(topicList);
        for(Topic topic: topicList){
            for(TopicPic pic:topic.getPicList()){
                System.out.println(pic.getPicUrl());
            }
        }
        m.put("topics",topicList);
        return "resident/topic/topicList";
    }
    /**
    * 查询话题分类
    */
    @RequestMapping("/queryTopicType")
    public String queryTopicTypeList(Map<String,List<TopicType>> m){
        List<TopicType> types = topicService.queryType();
        for(TopicType type:types){
            System.out.println(type);
        }
        m.put("types",types);
        return "resident/topic/topicTypeList";
    }

    @RequestMapping("/queryTopicDetail")
    public String queryTopicDetail(){
        return "resident/topic/topicDetail";
    }
}
