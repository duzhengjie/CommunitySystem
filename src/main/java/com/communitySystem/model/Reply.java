package com.communitySystem.model;

public class Reply {
    private int replyId;
    private String replyContent;
    private String replyTime;
    private int commentId;

    public Reply() {
        super();
    }

    public Reply(int replyId, String replyContent, String replyTime, int commentId) {
        this.replyId = replyId;
        this.replyContent = replyContent;
        this.replyTime = replyTime;
        this.commentId = commentId;
    }

    public int getReplyId() {
        return replyId;
    }

    public void setReplyId(int replyId) {
        this.replyId = replyId;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public String getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(String replyTime) {
        this.replyTime = replyTime;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }
}
