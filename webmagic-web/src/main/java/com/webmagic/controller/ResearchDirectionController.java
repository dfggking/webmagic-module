package com.webmagic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("research")
public class ResearchDirectionController {

	@RequestMapping("direction")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
}
