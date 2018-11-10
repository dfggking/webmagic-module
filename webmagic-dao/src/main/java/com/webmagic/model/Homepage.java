package com.webmagic.model;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 首页信息表
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
public class Homepage extends Model<Homepage> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private String id;
    private String swiperImg1;
    private String swiperImg2;
    private String swiperImg3;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSwiperImg1() {
        return swiperImg1;
    }

    public void setSwiperImg1(String swiperImg1) {
        this.swiperImg1 = swiperImg1;
    }

    public String getSwiperImg2() {
        return swiperImg2;
    }

    public void setSwiperImg2(String swiperImg2) {
        this.swiperImg2 = swiperImg2;
    }

    public String getSwiperImg3() {
        return swiperImg3;
    }

    public void setSwiperImg3(String swiperImg3) {
        this.swiperImg3 = swiperImg3;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Homepage{" +
        "id=" + id +
        ", swiperImg1=" + swiperImg1 +
        ", swiperImg2=" + swiperImg2 +
        ", swiperImg3=" + swiperImg3 +
        "}";
    }
}
