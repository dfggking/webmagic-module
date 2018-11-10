package com.webmagic.model;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 系统配置表
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
public class SysConfig extends Model<SysConfig> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 文件保存路径
     */
    private String fileSavePosition;
    private String webUrl;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFileSavePosition() {
        return fileSavePosition;
    }

    public void setFileSavePosition(String fileSavePosition) {
        this.fileSavePosition = fileSavePosition;
    }

    public String getWebUrl() {
        return webUrl;
    }

    public void setWebUrl(String webUrl) {
        this.webUrl = webUrl;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "SysConfig{" +
        "id=" + id +
        ", fileSavePosition=" + fileSavePosition +
        ", webUrl=" + webUrl +
        "}";
    }
}
