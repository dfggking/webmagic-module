package com.webmagic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("project")
public class ProjectController {

	@RequestMapping("info")
	public ModelAndView info() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
}
