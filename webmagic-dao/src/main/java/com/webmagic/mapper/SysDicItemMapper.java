package com.webmagic.mapper;

import com.webmagic.dto.SysDicItem;
import java.util.List;

public interface SysDicItemMapper {
    int deleteByPrimaryKey(String id);

    int insert(SysDicItem record);

    SysDicItem selectByPrimaryKey(String id);

    List<SysDicItem> selectAll();

    int updateByPrimaryKey(SysDicItem record);
}