package com.webmagic.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.webmagic.mapper.UserMapper;
import com.webmagic.model.User;
import com.webmagic.service.UserService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
