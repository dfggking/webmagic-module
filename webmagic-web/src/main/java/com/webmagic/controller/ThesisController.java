package com.webmagic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("thesis")
public class ThesisController {

	@RequestMapping("")
	public ModelAndView _default() {
		ModelAndView mv = new ModelAndView("redirect:/thesis/index");
		return mv;
	}
	
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
}
