package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 后台
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-09-30
 */
@Controller
@RequestMapping("/")
public class AdminController {
	
	@RequestMapping("")
	public ModelAndView _default() {
		ModelAndView mv = new ModelAndView("redirect:/login");
		return mv;
	}
	
	@RequestMapping("admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping("welcome")
	public ModelAndView welcome() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping("member-list")
	public ModelAndView memberList() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}
