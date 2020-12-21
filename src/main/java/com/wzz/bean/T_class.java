package com.wzz.bean;

/**
 * 班级相关
 */
public class T_class {
    private Integer cid; //班级id
    private String sclass; //班级名称

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

    @Override
    public String toString() {
        return "T_class{" +
                "cid=" + cid +
                ", sclass='" + sclass + '\'' +
                '}';
    }
}
