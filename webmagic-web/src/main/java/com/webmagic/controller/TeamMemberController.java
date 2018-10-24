package com.webmagic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("team/member")
public class TeamMemberController {
	
	@RequestMapping("list")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
}
