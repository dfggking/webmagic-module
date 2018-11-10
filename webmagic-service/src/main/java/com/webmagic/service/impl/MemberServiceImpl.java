package com.webmagic.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.webmagic.mapper.MemberMapper;
import com.webmagic.model.Member;
import com.webmagic.service.MemberService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 成员信息表 服务实现类
 * </p>
 *
 * @author dfggking
 * @since 2018-11-09
 */
@Service
public class MemberServiceImpl extends ServiceImpl<MemberMapper, Member> implements MemberService {

}
