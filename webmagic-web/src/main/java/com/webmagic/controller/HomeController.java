package com.webmagic.controller;

import com.dfgg.util.CopyUtils;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.webmagic.controller.base.BaseController;
import com.webmagic.mapper.InstituteInformationMapper;
import com.webmagic.mapper.InstituteMapper;
import com.webmagic.mapper.WebsiteConfigMapper;
import com.webmagic.model.HomeSwiper;
import com.webmagic.model.Institute;
import com.webmagic.model.InstituteInformation;
import com.webmagic.model.WebsiteConfig;
import com.webmagic.mapper.HomeSwiperMapper;
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
	private WebsiteConfigMapper websiteConfigMapper;
	@Autowired
	private InstituteMapper instituteMapper;
    @Autowired
    private InstituteInformationMapper informationMapper;
	@Autowired
	private HomeSwiperMapper homeSwiperMapper;
 
	@RequestMapping("")
	public ModelAndView _default() {
		ModelAndView mv = new ModelAndView("redirect:/home/index");
		return mv;
	}
	
	@RequestMapping("index")
	public ModelAndView index() {
		WebsiteConfig wc = websiteConfigMapper.selectById(0);

        InstituteInformation info = new InstituteInformation();
		List<InstituteInformation> list = informationMapper.selectList(null);
        List<InstituteInformationVO> list2 = CopyUtils.copyList(list);
		
		List<HomeSwiper> swipers = homeSwiperMapper.selectList(null);
        
        ModelAndView mv = new ModelAndView();
		mv.addObject(RESULT, SUCCESS);
		mv.addObject(ENTITY, wc);
        mv.addObject("info_list", list2);
		Institute institute = instituteMapper.selectById(0);
		mv.addObject("institute", institute);
		mv.addObject("swipers", swipers);
		return mv;
	}
}
