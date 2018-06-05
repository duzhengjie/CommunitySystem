package com.communitySystem.service;

import com.communitySystem.model.Comment;
import com.communitySystem.model.Reply;
import com.communitySystem.util.Page;

import java.util.List;

public interface CommentService {
    boolean insertComment(Comment comment);

    boolean deleteByCommentBy(String commentBy);

    boolean deleteByReplyByAndCommentBy(String replyBy, String commentBy);

    Comment queryByCommentId(String commentId);


    List<Comment> findComment();

    boolean addComment(Comment comment);

    List<Reply> findReply();

    boolean addReply(Reply reply);


}
