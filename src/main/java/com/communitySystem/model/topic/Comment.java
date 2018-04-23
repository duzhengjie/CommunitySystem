package com.communitySystem.model.topic;

import java.util.Date;

/**
 * 话题评论
 */
public class Comment
{
    /**
     * 评论对应ID
     */
    private String commentId;
    /**
     * 评论内容
     */
    private String commentContent;
    /**
     * 评论人
     */
    private String commentBy;
    /**
     * 回复人
     */
    private String replyBy;
    /**
     * 评论时间
     */
    private Date commentTime;
    /**
     * 评论被点赞数（不显示点赞人）
     */
    private int commnetPraiseNum;

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public String getCommentBy() {
        return commentBy;
    }

    public void setCommentBy(String commentBy) {
        this.commentBy = commentBy;
    }

    public String getReplyBy() {
        return replyBy;
    }

    public void setReplyBy(String replyBy) {
        this.replyBy = replyBy;
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public int getCommnetPraiseNum() {
        return commnetPraiseNum;
    }

    public void setCommnetPraiseNum(int commnetPraiseNum) {
        this.commnetPraiseNum = commnetPraiseNum;
    }
}
