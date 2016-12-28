package com.wy.Bean;

/**
 * 学生管理系统，学生信息类
 * Created by Administrator on 2016/12/27.
 */
public class StudentInfo {

    private String name;
    private String bj;
    private String kc;
    private Double score;

    public StudentInfo() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBj() {
        return bj;
    }

    public void setBj(String bj) {
        this.bj = bj;
    }

    public String getKc() {
        return kc;
    }

    public void setKc(String kc) {
        this.kc = kc;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "name='" + name + '\t' + " bj='" + bj + '\t' + " kc='" + kc + '\t' + "score=" + score;
    }
}
