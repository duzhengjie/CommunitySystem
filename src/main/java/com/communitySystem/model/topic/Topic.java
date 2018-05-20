package com.communitySystem.model.topic;


import java.util.Date;
import java.util.List;

/**
 * 话题建模
 */
public class Topic
{
    /**
     * 话题ID
     */
    private String topicId;
    /**
     * 话题名
     */
    private String topicName;
    /**
     * 话题内容
     */
    private String topicContent;
    /**
     * 话题发布者
     */
    private String topicAnnouncer;
    /**
     *话题发布时间
     */
    private Date AnnounceTime;
    /**
     * 被浏览数
     */
    private int viewCount;
    /**
     * 被点赞数量
     */
    private int topicPraiseNum;
    /**
     * 点赞人name（以“、”分割的字符串）
     */
    private String praiserName;
    /**
     * 话题类别
     */
    private String topicType;

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
        return AnnounceTime;
    }

    public void setAnnounceTime(Date announceTime) {
        AnnounceTime = announceTime;
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

    public String getPraiserName() {
        return praiserName;
    }

    public void setPraiserName(String praiserName) {
        this.praiserName = praiserName;
    }

    public String getTopicType() {
        return topicType;
    }

    public void setTopicType(String topicType) {
        this.topicType = topicType;
    }

}
