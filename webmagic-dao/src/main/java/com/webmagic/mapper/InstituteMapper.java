package com.webmagic.mapper;

import com.webmagic.model.Institute;
import java.util.List;

public interface InstituteMapper {
    int deleteByPrimaryKey(String id);

    int insert(Institute record);

    Institute selectByPrimaryKey(String id);

    List<Institute> selectAll();

    int updateByPrimaryKey(Institute record);
}