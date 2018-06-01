package com.communitySystem.model;

import java.util.Date;
/*
用户表 字段(id,userName,password,role)
 */
public class User {
   private String id;
   private String userName;
   private String password;
   private String role;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "用户id:" + id +
                ", 用户名：'" + userName + '\'' +
                ", 密码：'" + password + '\'' +
                ", 扮演角色：'" + role + '\'' +
                '}';
    }
}
