package com.webmagic.mapper;

import com.webmagic.dto.UserLogin;
import java.util.List;

public interface UserLoginMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserLogin record);

    UserLogin selectByPrimaryKey(String id);

    List<UserLogin> selectAll();

    int updateByPrimaryKey(UserLogin record);
}