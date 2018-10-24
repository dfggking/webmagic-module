package com.webmagic.mapper;

import com.webmagic.model.UserRole;
import java.util.List;

public interface UserRoleMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserRole record);

    UserRole selectByPrimaryKey(String id);

    List<UserRole> selectAll();

    int updateByPrimaryKey(UserRole record);
}