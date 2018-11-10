package com.webmagic.controller;

import com.webmagic.controller.base.BaseController;
import com.webmagic.model.Member;
import com.webmagic.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("team/member")
public class TeamMemberController extends BaseController {

    @Autowired
    private MemberMapper memberMapper;

	@RequestMapping("list")
	public ModelAndView list() {
		
		List<Member> list = memberMapper.selectList(null);
		ModelAndView mv = new ModelAndView();
		mv.addObject(RESULT, SUCCESS);
		mv.addObject(LIST, list);
		return mv;
	}
	
}
