package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.webmagic.mapper.InstituteMapper;
import com.webmagic.model.Institute;
import com.webmagic.service.InstituteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("institute")
public class InstituteController extends BaseController {
	
	@Autowired
	private InstituteMapper instituteMapper;
	
	@RequestMapping("update")
    @ResponseBody
	public Map<String, String> update(String intruductionStr) {
		
		Institute institute = new Institute();
		institute.setId(0);
		institute.setIntroduction(intruductionStr);
		instituteMapper.updateById(institute);
        Map<String, String> resultMap = new HashMap<>();
        resultMap.put(RESULT, SUCCESS);
		return resultMap;
	}
}
