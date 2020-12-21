package com.wzz.bean;

/**
 * 班级学习信息统计
 */
public class PublicClass {
    private Integer cid;
    private String sclass;
    private double sub_daily_score;
    private double ave_daily_score;
    private double sub_last_score;
    private double ave_last_score;
    private double sub_all_score;
    private double ave_all_score;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getSclass() {
        return sclass;
    }

    public void setSclass(String sclass) {
        this.sclass = sclass;
    }

    public double getSub_daily_score() {
        return sub_daily_score;
    }

    public void setSub_daily_score(double sub_daily_score) {
        this.sub_daily_score = sub_daily_score;
    }

    public double getAve_daily_score() {
        return ave_daily_score;
    }

    public void setAve_daily_score(double ave_daily_score) {
        this.ave_daily_score = ave_daily_score;
    }

    public double getSub_last_score() {
        return sub_last_score;
    }

    public void setSub_last_score(double sub_last_score) {
        this.sub_last_score = sub_last_score;
    }

    public double getAve_last_score() {
        return ave_last_score;
    }

    public void setAve_last_score(double ave_last_score) {
        this.ave_last_score = ave_last_score;
    }

    public double getAve_all_score() {
        return ave_all_score;
    }

    public void setAve_all_score(double ave_all_score) {
        this.ave_all_score = ave_all_score;
    }

    public double getSub_all_score() {
        return sub_all_score;
    }

    public void setSub_all_score(double sub_all_score) {
        this.sub_all_score = sub_all_score;
    }

    @Override
    public String toString() {
        return "PublicClass{" +
                "cid=" + cid +
                ", sclass='" + sclass + '\'' +
                ", sub_daily_score=" + sub_daily_score +
                ", ave_daily_score=" + ave_daily_score +
                ", sub_last_score=" + sub_last_score +
                ", ave_last_score=" + ave_last_score +
                ", sub_all_score=" + sub_all_score +
                ", ave_all_score=" + ave_all_score +
                '}';
    }
}
