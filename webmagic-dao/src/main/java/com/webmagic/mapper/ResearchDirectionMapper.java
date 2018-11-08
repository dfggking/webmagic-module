package com.webmagic.mapper;

import com.webmagic.model.ResearchDirection;
import java.util.List;

public interface ResearchDirectionMapper {
    int insert(ResearchDirection record);

    List<ResearchDirection> selectAll();
}