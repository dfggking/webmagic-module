package com.webmagic.mybatis;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import tk.mybatis.mapper.common.ConditionMapper;
import tk.mybatis.mapper.common.IdsMapper;
import tk.mybatis.mapper.common.MySqlMapper;

public interface Mapper<T> extends BaseMapper<T>, ConditionMapper<T>, MySqlMapper<T>, IdsMapper<T> {

}
