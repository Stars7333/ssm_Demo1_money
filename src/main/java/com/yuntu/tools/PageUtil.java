package com.yuntu.tools;

import java.util.List;

/**
 * 实现分页类
 */
public class PageUtil<T> {
    //五个属性
    private int pageindex = 1;//当前页/页码
    private int pagesize = 10;//页面大小
    private int counts = 0;//记录总数
    private int pagecount = 0;//总页数
    private List<T> lists;//保存当前页对象的集合

    //get set方法
    public int getPageindex() {
        return pageindex;
    }

    public void setPageindex(int pageindex) {
        this.pageindex = pageindex;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
        //在设置总记录时,一并设置总页数
        if (counts > 0) {
            if (counts % pagesize == 0) {//判断是否能整除
                pagecount = counts / pagesize;
            } else {
                pagecount = counts / pagesize + 1;
            }
        }
    }

    public int getPagecount() {
        return pagecount;
    }

    public void setPagecounts(int pagecounts) {
        this.pagecount = pagecounts;
    }

    public List<T> getLists() {
        return lists;
    }

    public void setLists(List<T> lists) {
        this.lists = lists;
    }
}