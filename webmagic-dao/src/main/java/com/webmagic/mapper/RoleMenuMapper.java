package com.webmagic.mapper;

import com.webmagic.model.RoleMenu;
import java.util.List;

public interface RoleMenuMapper {
    int deleteByPrimaryKey(String id);

    int insert(RoleMenu record);

    RoleMenu selectByPrimaryKey(String id);

    List<RoleMenu> selectAll();

    int updateByPrimaryKey(RoleMenu record);
}