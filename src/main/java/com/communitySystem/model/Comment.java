package com.communitySystem.model;

public class Comment {
    private int commentId;
    private String commentContent;
    private String commentTime;
    private int commentZan;

    public Comment() {
        super();
    }

    public Comment(int commentId, String commentContent, String commentTime, int commentZan) {
        this.commentId = commentId;
        this.commentContent = commentContent;
        this.commentTime = commentTime;
        this.commentZan = commentZan;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public String getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }

    public int getCommentZan() {
        return commentZan;
    }

    public void setCommentZan(int commentZan) {
        this.commentZan = commentZan;
    }
}
