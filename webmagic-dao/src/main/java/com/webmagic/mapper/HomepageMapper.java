package com.webmagic.mapper;

import com.webmagic.dto.Homepage;
import java.util.List;

public interface HomepageMapper {
    int deleteByPrimaryKey(String id);

    int insert(Homepage record);

    Homepage selectByPrimaryKey(String id);

    List<Homepage> selectAll();

    int updateByPrimaryKey(Homepage record);
}