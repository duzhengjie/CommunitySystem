package com.communitySystem.model.topic;

public class TopicPic {
    private String topicId;
    private String picId;
    private String picUrl;

    public String getTopicId() {
        return topicId;
    }

    public void setTopicId(String topicId) {
        this.topicId = topicId;
    }

    public String getPicId() {
        return picId;
    }

    public void setPicId(String picId) {
        this.picId = picId;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    @Override
    public String toString() {
        return "TopicPic{" +
                "topicId='" + topicId + '\'' +
                ", picId='" + picId + '\'' +
                ", picUrl='" + picUrl + '\'' +
                '}';
    }
}
