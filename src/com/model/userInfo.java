package com.model;

public class userInfo {

    //实体类的属性和表的字段名称一一对应
    private int id;
    private String name;
    private String accountName;
    private String password;
    private String gender;
    private String dateTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String pwd) {
        this.password = pwd;
    }
    public String getGender() {
        return gender;
    }

    public void setGender(String ge) {
        this.gender = ge;
    }
    
    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String time) {
        this.dateTime = time;
    }
    @Override
    public String toString() {
        return "User [id=" + id + ", name=" + accountName + ", dateTime="+dateTime + "]";
    }
}
