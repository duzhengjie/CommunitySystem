package com.communitySystem.service.impl.topic;

import com.communitySystem.dao.topic.CommentDao;
import com.communitySystem.model.Comment;
import com.communitySystem.model.Reply;
import com.communitySystem.service.CommentService;
import com.communitySystem.util.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public List<Comment> findComment() {
//        Page<Comment> page = new Page<Comment>(5);
//        List<Comment> com = commentDao.findAllComment(page);
//        page.setList(com);
        return commentDao.findAllComment();
    }

    @Override
    public boolean addComment(Comment comment) {
        int a = commentDao.addComment(comment);
        if(a==1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<Reply> findReply() {
        return commentDao.findReply();
    }

    @Override
    public boolean addReply(Reply reply) {
        int a = commentDao.addReply(reply);
        if(a==1){
            return true;
        }else{
            return false;
        }
    }




}
