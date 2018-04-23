package com.communitySystem.dao.topic;

import com.communitySystem.model.topic.Comment;

public interface CommentDao
{
    boolean insertComment(Comment comment);
}
