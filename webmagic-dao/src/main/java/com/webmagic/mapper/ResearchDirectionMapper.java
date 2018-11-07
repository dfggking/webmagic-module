package com.webmagic.mapper;

import com.webmagic.dto.ResearchDirection;
import java.util.List;

public interface ResearchDirectionMapper {
    int insert(ResearchDirection record);

    List<ResearchDirection> selectAll();
}