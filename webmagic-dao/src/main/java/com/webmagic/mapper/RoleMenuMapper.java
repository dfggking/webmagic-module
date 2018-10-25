package com.webmagic.mapper;

import com.webmagic.dto.RoleMenu;
import java.util.List;

public interface RoleMenuMapper {
    int deleteByPrimaryKey(String id);

    int insert(RoleMenu record);

    RoleMenu selectByPrimaryKey(String id);

    List<RoleMenu> selectAll();

    int updateByPrimaryKey(RoleMenu record);
}