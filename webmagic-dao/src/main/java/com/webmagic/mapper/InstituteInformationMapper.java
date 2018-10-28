package com.webmagic.mapper;

import com.webmagic.dto.InstituteInformation;
import java.util.List;

public interface InstituteInformationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InstituteInformation record);

    InstituteInformation selectByPrimaryKey(Integer id);

    List<InstituteInformation> selectAll();

    int updateByPrimaryKey(InstituteInformation record);
}