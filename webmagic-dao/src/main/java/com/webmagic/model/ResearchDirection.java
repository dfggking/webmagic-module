package com.webmagic.model;

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
public class ResearchDirection extends Model<ResearchDirection> {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private String title;
    private String content;
    private Integer isShow;


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

    public Integer getIsShow() {
        return isShow;
    }

    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }

    @Override
    protected Serializable pkVal() {
        return null;
    }

    @Override
    public String toString() {
        return "ResearchDirection{" +
        "id=" + id +
        ", title=" + title +
        ", content=" + content +
        ", isShow=" + isShow +
        "}";
    }
}
