package com.webmagic.controller;

import com.dfgg.util.CopyUtils;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.webmagic.controller.base.BaseController;
import com.webmagic.dto.Institute;
import com.webmagic.dto.InstituteInformation;
import com.webmagic.dto.WebsiteConfig;
import com.webmagic.service.InformationService;
import com.webmagic.service.InstituteService;
import com.webmagic.service.WebsiteConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import vo.InstituteInformationVO;

import java.util.List;

import static java.awt.SystemColor.info;

@Controller
@RequestMapping("home")
public class HomeController extends BaseController {
	
	@Autowired
	private WebsiteConfigService websiteConfigService;
	@Autowired
	private InstituteService instituteService;
    @Autowired
    private InformationService informationService;
	
	@RequestMapping("")
	public ModelAndView _default() {
		ModelAndView mv = new ModelAndView("redirect:/home/index");
		return mv;
	}
	
	@RequestMapping("index")
	public ModelAndView index() {
		WebsiteConfig wc = websiteConfigService.get();

        InstituteInformation info = new InstituteInformation();
        List<InstituteInformation> list = informationService.select(info);
        List<InstituteInformationVO> list2 = CopyUtils.copyList(list);

        ModelAndView mv = new ModelAndView();
		mv.addObject(RESULT, SUCCESS);
		mv.addObject(ENTITY, wc);
        mv.addObject("info_list", list2);
		Institute institute = instituteService.get(0);
		mv.addObject("institute", institute);
		return mv;
	}
}
