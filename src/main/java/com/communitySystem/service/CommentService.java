package com.communitySystem.service;

import com.communitySystem.model.topic.Comment;

public interface CommentService {
    boolean insertComment(Comment comment);

    boolean deleteByCommentBy(String commentBy);

    boolean deleteByReplyByAndCommentBy(String replyBy, String commentBy);

    Comment queryByCommentId(String commentId);
}
