package com.webmagic.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.webmagic.controller.base.BaseController;
import com.webmagic.dto.Institute;
import com.webmagic.dto.WebsiteConfig;
import com.webmagic.service.InstituteService;
import com.webmagic.service.WebsiteConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("home")
public class HomeController extends BaseController {
	
	@Autowired
	private WebsiteConfigService websiteConfigService;
	@Autowired
	private InstituteService instituteService;
	
	@RequestMapping("")
	public ModelAndView _default() {
		ModelAndView mv = new ModelAndView("redirect:/home/index");
		return mv;
	}
	
	@RequestMapping("index")
	public ModelAndView index() {
		WebsiteConfig wc = websiteConfigService.get();
		ModelAndView mv = new ModelAndView();
		mv.addObject(RESULT, SUCCESS);
		mv.addObject(ENTITY, wc);
		Institute institute = instituteService.get(0);
		mv.addObject("institute", institute);
		return mv;
	}
	
}
