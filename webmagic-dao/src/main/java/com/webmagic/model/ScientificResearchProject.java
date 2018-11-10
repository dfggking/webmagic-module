package com.webmagic.model;

import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
public class ScientificResearchProject extends Model<ScientificResearchProject> {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private String title;
    private String content;
    private Date fromTime;
    private Date toTime;
    /**
     * 1.省级；2.市级；3.校级
     */
    private Integer level;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getFromTime() {
        return fromTime;
    }

    public void setFromTime(Date fromTime) {
        this.fromTime = fromTime;
    }

    public Date getToTime() {
        return toTime;
    }

    public void setToTime(Date toTime) {
        this.toTime = toTime;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    @Override
    protected Serializable pkVal() {
        return null;
    }

    @Override
    public String toString() {
        return "ScientificResearchProject{" +
        "id=" + id +
        ", title=" + title +
        ", content=" + content +
        ", fromTime=" + fromTime +
        ", toTime=" + toTime +
        ", level=" + level +
        "}";
    }
}
