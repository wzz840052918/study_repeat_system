package com.wzz.bean;

/**
 * 课程相关
 */
public class Lesson {
    private Integer lid; //课程id
    private String lname; //课程名字
    private Integer lhour; //课程学时
    private Integer lscore; //课程学分

    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public Integer getLhour() {
        return lhour;
    }

    public void setLhour(Integer lhour) {
        this.lhour = lhour;
    }

    public Integer getLscore() {
        return lscore;
    }

    public void setLscore(Integer lscore) {
        this.lscore = lscore;
    }

    @Override
    public String toString() {
        return "Lesson{" +
                "lid=" + lid +
                ", lname='" + lname + '\'' +
                ", lhour=" + lhour +
                ", lscore=" + lscore +
                '}';
    }
}
