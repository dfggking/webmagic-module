package com.webmagic.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 网站配置表
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
public class WebsiteConfig extends Model<WebsiteConfig> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 网站title
     */
    private String websiteTitle;
    private String keyword;
    /**
     * 网站description
     */
    private String description;
    /**
     * 联系Email
     */
    private String email;
    /**
     * copyright
     */
    private String copyright;
    /**
     * 联系地址
     */
    private String address;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWebsiteTitle() {
        return websiteTitle;
    }

    public void setWebsiteTitle(String websiteTitle) {
        this.websiteTitle = websiteTitle;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCopyright() {
        return copyright;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "WebsiteConfig{" +
        "id=" + id +
        ", websiteTitle=" + websiteTitle +
        ", keyword=" + keyword +
        ", description=" + description +
        ", email=" + email +
        ", copyright=" + copyright +
        ", address=" + address +
        "}";
    }
}
