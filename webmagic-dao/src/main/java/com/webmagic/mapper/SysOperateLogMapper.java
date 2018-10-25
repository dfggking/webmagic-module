package com.webmagic.mapper;

import com.webmagic.dto.SysOperateLog;
import java.util.List;

public interface SysOperateLogMapper {
    int deleteByPrimaryKey(String id);

    int insert(SysOperateLog record);

    SysOperateLog selectByPrimaryKey(String id);

    List<SysOperateLog> selectAll();

    int updateByPrimaryKey(SysOperateLog record);
}