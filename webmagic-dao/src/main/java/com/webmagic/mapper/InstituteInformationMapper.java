package com.webmagic.mapper;

import com.webmagic.dto.InstituteInformation;
import java.util.List;

public interface InstituteInformationMapper {
    int deleteByPrimaryKey(String id);

    int insert(InstituteInformation record);

    InstituteInformation selectByPrimaryKey(String id);

    List<InstituteInformation> selectAll();

    int updateByPrimaryKey(InstituteInformation record);
}