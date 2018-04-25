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
    public boolean insertComment(Comment comment)
    {
        return commentDao.insertComment(comment);
    }

    @Override
    public boolean deleteByCommentBy(String commentBy)
    {
        return commentDao.deleteByCommentBy(commentBy);
    }

    @Override
    public boolean deleteByReplyByAndCommentBy(String replyBy, String commentBy)
    {
        return commentDao.deleteByReplyByAndCommentBy(replyBy, commentBy);
    }

    @Override
    public Comment queryByCommentId(String commentId) {
        return commentDao.queryByCommentId(commentId);
    }


}
