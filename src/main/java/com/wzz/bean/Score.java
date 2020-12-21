package com.wzz.bean;

/**
 * 课程成绩
 */
public class Score {
    private Integer sid;
    private String sname;
    private String lname;
    private double daily_score;
    private double last_score;
    private  double all_score;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public double getDaily_score() {
        return daily_score;
    }

    public void setDaily_score(double daily_score) {
        this.daily_score = daily_score;
    }

    public double getLast_score() {
        return last_score;
    }

    public void setLast_score(double last_score) {
        this.last_score = last_score;
    }

    public double getAll_score() {
        return all_score;
    }

    public void setAll_score(double all_score) {
        this.all_score = all_score;
    }

    @Override
    public String toString() {
        return "Score{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", lname='" + lname + '\'' +
                ", daily_score=" + daily_score +
                ", last_score=" + last_score +
                ", all_score=" + all_score +
                '}';
    }
}
