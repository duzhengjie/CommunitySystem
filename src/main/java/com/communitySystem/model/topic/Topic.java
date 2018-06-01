package com.communitySystem.model.topic;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 话题建模
 */
public class Topic
{

    private String topicId;

    private String topicName;

    private String topicContent;

    private String topicAnnouncer;

    private Date announceTime;

    private int viewCount;

    private int topicPraiseNum;

    private String topicTypeId;

    private String formatTime;

    private String topicPic;

    private List<TopicPic> picList;

    public String getTopicId() {
        return topicId;
    }

    public void setTopicId(String topicId) {
        this.topicId = topicId;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public String getTopicContent() {
        return topicContent;
    }

    public void setTopicContent(String topicContent) {
        this.topicContent = topicContent;
    }

    public String getTopicAnnouncer() {
        return topicAnnouncer;
    }

    public void setTopicAnnouncer(String topicAnnouncer) {
        this.topicAnnouncer = topicAnnouncer;
    }

    public Date getAnnounceTime() {
        return announceTime;
    }

    public void setAnnounceTime(Date announceTime) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS");
        formatTime  = sdf.format(announceTime);
        this.announceTime = announceTime;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public int getTopicPraiseNum() {
        return topicPraiseNum;
    }

    public void setTopicPraiseNum(int topicPraiseNum) {
        this.topicPraiseNum = topicPraiseNum;
    }

    public String getTopicTypeId() {
        return topicTypeId;
    }

    public void setTopicTypeId(String topicTypeId) {
        this.topicTypeId = topicTypeId;
    }

    public String getFormatTime(){
        return formatTime;
    }

    public List<TopicPic> getPicList() {
        return picList;
    }

    public void setPicList(List<TopicPic> picList) {
        this.picList = picList;
    }

    public String getTopicPic() {
        return topicPic;
    }

    public void setTopicPic(String topicPic) {
        this.topicPic = topicPic;
    }

    @Override
    public String toString() {
        return "Topic{" +
                "topicId='" + topicId + '\'' +
                ", topicName='" + topicName + '\'' +
                ", topicContent='" + topicContent + '\'' +
                ", topicAnnouncer='" + topicAnnouncer + '\'' +
                ", announceTime=" + announceTime +
                ", viewCount=" + viewCount +
                ", topicPraiseNum=" + topicPraiseNum +
                ", topicTypeId='" + topicTypeId + '\'' +
                ", formatTime='" + formatTime + '\'' +
                ", picList=" + picList +
                '}';
    }
}
