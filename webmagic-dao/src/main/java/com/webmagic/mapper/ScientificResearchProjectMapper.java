package com.webmagic.mapper;

import com.webmagic.model.ScientificResearchProject;
import java.util.List;

public interface ScientificResearchProjectMapper {
    int insert(ScientificResearchProject record);

    List<ScientificResearchProject> selectAll();
}