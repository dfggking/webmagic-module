package com.webmagic.model;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 字典类型
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
public class SysDicType extends Model<SysDicType> {

    private static final long serialVersionUID = 1L;

    /**
     * 序号
     */
    private String seqId;
    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private String id;
    /**
     * 编码
     */
    private String code;
    /**
     * 状态
     */
    private Integer status;
    /**
     * 字典类型名称
     */
    private String text;


    public String getSeqId() {
        return seqId;
    }

    public void setSeqId(String seqId) {
        this.seqId = seqId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "SysDicType{" +
        "seqId=" + seqId +
        ", id=" + id +
        ", code=" + code +
        ", status=" + status +
        ", text=" + text +
        "}";
    }
}
