package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.webmagic.dto.Institute;
import com.webmagic.service.InstituteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("institute")
public class InstituteController extends BaseController {
	
	@Autowired
	private InstituteService instituteService;
	
	@RequestMapping("update")
	public ModelAndView update(String intruductionStr) throws UnsupportedEncodingException {
		
		Institute institute = new Institute();
		institute.setId(0);
		institute.setIntroduction(intruductionStr);
		instituteService.update(institute);
		ModelAndView mv = new ModelAndView();
		mv.addObject(RESULT, SUCCESS);
		return mv;
	}
}
