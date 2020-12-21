package com.wzz.bean;

/**
 * 个人学习信息统计
 */
public class Personal {
    private Integer sid; //学号
    private String sname; //学生姓名
    private String ssex; //性别
    private String sclass; //所属班级
    private String lname; //课程名称
    private Double daily_score; //平常分
    private Double last_score; //期末成绩
    private Double all_score; //总成绩

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

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex;
    }

    public String getSclass() {
        return sclass;
    }

    public void setSclass(String sclass) {
        this.sclass = sclass;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public Double getDaily_score() {
        return daily_score;
    }

    public void setDaily_score(Double daily_score) {
        this.daily_score = daily_score;
    }

    public Double getLast_score() {
        return last_score;
    }

    public void setLast_score(Double last_score) {
        this.last_score = last_score;
    }

    public Double getAll_score() {
        return all_score;
    }

    public void setAll_score(Double all_score) {
        this.all_score = all_score;
    }


    @Override
    public String toString() {
        return "Personal{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", ssex='" + ssex + '\'' +
                ", sclass='" + sclass + '\'' +
                ", lname='" + lname + '\'' +
                ", daily_score=" + daily_score +
                ", last_score=" + last_score +
                ", all_score=" + all_score +
                '}';
    }
}
