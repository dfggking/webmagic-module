package com.webmagic.mapper;

import com.webmagic.dto.Menu;
import java.util.List;

public interface MenuMapper {
    int deleteByPrimaryKey(String id);

    int insert(Menu record);

    Menu selectByPrimaryKey(String id);

    List<Menu> selectAll();

    int updateByPrimaryKey(Menu record);
}