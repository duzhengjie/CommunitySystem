package com.communitySystem.controller;

import com.communitySystem.model.Comment;
import com.communitySystem.model.Reply;
import com.communitySystem.model.User;
import com.communitySystem.model.topic.Topic;
import com.communitySystem.model.topic.TopicPic;
import com.communitySystem.model.topic.TopicType;
import com.communitySystem.service.CommentService;
import com.communitySystem.service.TopicService;
import com.communitySystem.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/topic")
public class TopicController {
    @Autowired
    private TopicService topicService;
    @Autowired
    private CommentService commentService;

    /**
     * 根据类型查询话题
     */
    @RequestMapping("/queryTopicByType")
    public String queryTopicList(String topicTypeId, Map<String,List<Topic>> m)
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
    public String queryTopicDetail(Map<String,List<Comment>> m,Map<String,List<Reply>> ma){
        //Page<Comment> comment = commentService.getAllComment();

        List<Comment> co = commentService.findComment();
        List<Reply> re = commentService.findReply();
        //request.setAttribute("co", co);
        m.put("co", co);
        ma.put("rep", re);
        System.out.println("commm==============" + co);
        return "resident/topic/topicDetail";
    }

    @RequestMapping("/addComment")
    public String addComment(Map<String,List<Comment>> m, Map<String,List<Reply>> ma,HttpServletRequest request){

        String con = request.getParameter("content");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long start = System.currentTimeMillis();
        Comment comment = new Comment();
        comment.setCommentContent(con);
        comment.setCommentTime(sdf.format(start));
        boolean a = commentService.addComment(comment);

        List<Comment> co = commentService.findComment();

        List<Reply> re = commentService.findReply();

        m.put("co", co);
        ma.put("rep", re);
        System.out.println("commm==============" + co);
        return "resident/topic/topicDetail";
    }
@RequestMapping("/addReply")
public String addReply(Map<String,List<Comment>> m, Map<String,List<Reply>> ma,HttpServletRequest request){

    String con = request.getParameter("reply");
    String cId = request.getParameter("comId");
    int id = Integer.parseInt(cId);
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    long start = System.currentTimeMillis();
    Reply reply = new Reply();
    reply.setReplyContent(con);
    reply.setReplyTime(sdf.format(start));
    reply.setCommentId(id);
    System.out.println("con==============" + con+cId);
    boolean a = commentService.addReply(reply);

    List<Comment> co = commentService.findComment();

    List<Reply> re = commentService.findReply();

    m.put("co", co);
    ma.put("rep", re);

    return "resident/topic/topicDetail";
}


}
