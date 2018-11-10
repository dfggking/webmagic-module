package com.webmagic.model;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 字典类型条目表
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
public class SysDicItem extends Model<SysDicItem> {

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
     * 字典内容
     */
    private String text;
    /**
     * 值
     */
    private String value;
    /**
     * 类型ID
     */
    private String typeId;
    /**
     * 排序
     */
    private Integer sort;


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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "SysDicItem{" +
        "seqId=" + seqId +
        ", id=" + id +
        ", text=" + text +
        ", value=" + value +
        ", typeId=" + typeId +
        ", sort=" + sort +
        "}";
    }
}
