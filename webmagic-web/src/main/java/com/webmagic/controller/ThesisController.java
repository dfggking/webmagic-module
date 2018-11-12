package com.webmagic.controller;

import com.webmagic.controller.base.BaseController;
import com.webmagic.mapper.WebsiteConfigMapper;
import com.webmagic.model.WebsiteConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("thesis")
public class ThesisController extends BaseController {

	@Autowired
	private WebsiteConfigMapper websiteConfigMapper;
	@RequestMapping("")
	public ModelAndView _default() {
		ModelAndView mv = new ModelAndView("redirect:/thesis/index");
		return mv;
	}
	
	@RequestMapping("index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		
		WebsiteConfig wc = websiteConfigMapper.selectByPrimaryKey(1);
		mv.addObject(ENTITY, wc);
		return mv;
	}
}
