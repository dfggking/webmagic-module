package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("homepage")
public class HomepageController {
	
	@RequestMapping("swiper")
	public ModelAndView config() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping("institute/introduce")
	public ModelAndView introduce() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping("institute/information")
	public ModelAndView information() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}
