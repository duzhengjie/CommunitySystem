package com.communitySystem.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Gonggao {
    private String title;
    private String content;
    private String id;
    private Date date;
    private String dateString;
    private String managerName;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateString = dateFormat.format(date);
        this.date = date;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDateString(){
        return dateString;
    }

    @Override
    public String toString() {
        return "Gonggao{" +
                "title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", id='" + id + '\'' +
                ", date=" + date +
                ", managerName='" + managerName + '\'' +
                '}';
    }
}
