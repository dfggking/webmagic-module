package com.webmagic.service.base;

import com.webmagic.mybatis.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface BaseService<T> {

    Integer insert(T var);

    Integer delete(T var);

    Integer update(T var);

    List<T> select(T var);

    T get(Integer id);

}
