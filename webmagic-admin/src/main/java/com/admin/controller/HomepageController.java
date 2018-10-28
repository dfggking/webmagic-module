package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.dfgg.util.CopyUtils;
import com.webmagic.dto.Institute;
import com.admin.vo.InstituteInformationVO;
import com.webmagic.dto.InstituteInformation;
import com.webmagic.service.HomepageService;
import com.webmagic.service.InformationService;
import com.webmagic.service.InstituteService;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("homepage")
public class HomepageController extends BaseController {
	@Autowired
	private HomepageService homepageService;
	@Autowired
	private InstituteService instituteService;
	@Autowired
	private InformationService informationService;
	@RequestMapping("swiper")
	public ModelAndView config() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping("institute/introduce")
	public ModelAndView introduce() throws UnsupportedEncodingException {
		Institute institute = instituteService.get(0);
		ModelAndView mv = new ModelAndView();
		mv.addObject(RESULT, SUCCESS);
		mv.addObject(ENTITY, institute);
		return mv;
	}
	
	@RequestMapping("institute/information")
	public ModelAndView information() {
		ModelAndView mv = new ModelAndView();
		return mv;
	}
	
	@RequestMapping("institute/info/list")
	@ResponseBody
	public Map<String, Object> infoList(InstituteInformationVO infoVO, int page, int limit) throws InvocationTargetException, IllegalAccessException {
		InstituteInformation info = new InstituteInformation();
		BeanUtils.copyProperties(info, infoVO);
		
		List<InstituteInformation> list = informationService.select(info);
		List<InstituteInformationVO> list2 = CopyUtils.copyList(list);
		
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("status", 0);
		resultMap.put("message", "");
		resultMap.put("total", list.size());
		Map<String, Object> item = new HashMap<>();
		item.put("item", list2);
		resultMap.put("data", item);
		
		return resultMap;
	}
	
}
