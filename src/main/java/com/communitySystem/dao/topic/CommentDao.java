package com.communitySystem.dao.topic;

import com.communitySystem.model.Comment;
import com.communitySystem.model.Reply;
import com.communitySystem.util.Page;

import java.util.List;

public interface CommentDao {
    /**
     * 插入一条评论
     *
     * @param comment 评论
     * @return 是否插入成功
     */
    boolean insertComment(Comment comment);

    /**
     * 根据评论者删除一条评论；
     *
     * @param commentBy 评论者
     * @return 是否删除成功
     */
    boolean deleteByCommentBy(String commentBy);

    /**
     * 根据回复者和评论者删除一条评论
     *
     * @param replyBy 回复者
     * @param commentBy 评论者
     * @return 是否删除成功
     */
    boolean deleteByReplyByAndCommentBy(String replyBy, String commentBy);

    /**
     * 根据评论ID查询评论具体信息
     * @param commentId
     * @return
     */
    Comment queryByCommentId(String commentId);


    List<Comment> findc();

    List<Comment> findAllComment();

    int addComment(Comment comment);

    List<Reply> findReply();

    int addReply(Reply reply);


}
