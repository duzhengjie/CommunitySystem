package com.communitySystem.service.impl.topic;

import com.communitySystem.dao.topic.CommentDao;
import com.communitySystem.model.topic.Comment;
import com.communitySystem.service.CommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("commentService")
public class CommentDaoImpl implements CommentService
{
    @Resource
    private  CommentDao commentDao;

    @Override
    public boolean insertComment(Comment comment) {
        return commentDao.insertComment(comment);
    }
}
