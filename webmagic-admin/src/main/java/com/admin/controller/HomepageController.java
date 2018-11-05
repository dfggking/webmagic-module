package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.admin.vo.InstituteInformationVO;
import com.admin.vo.ResultMap;
import com.dfgg.util.CopyUtils;
import com.webmagic.dto.HomeSwiper;
import com.webmagic.dto.Homepage;
import com.webmagic.dto.Institute;
import com.webmagic.dto.InstituteInformation;
import com.webmagic.mapper.HomeSwiperMapper;
import com.webmagic.service.HomepageService;
import com.webmagic.service.InformationService;
import com.webmagic.service.InstituteService;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

@Controller
@RequestMapping("homepage")
public class HomepageController extends BaseController {
	@Autowired
	private HomepageService homepageService;
	@Autowired
	private InstituteService instituteService;
	@Autowired
	private InformationService informationService;
	@Autowired
	private HomeSwiperMapper homeSwiperMapper;
	
	@RequestMapping("swiper")
	public ModelAndView swiper(ModelAndView mv){
		return mv;
	}
	
	@RequestMapping(value="swiper/update", method=RequestMethod.POST)
	@ResponseBody
	public ResultMap swiperConfig(MultipartFile file, HttpServletRequest request, HttpServletResponse response) {
		
		try {
			String fileName = file.getOriginalFilename();
			if (file != null && fileName != null && fileName.length() > 0) {
				String newFileName = UUID.randomUUID() + fileName;
				String picPath = request.getSession().getServletContext().getRealPath("/uploads");
				File targetFile = new File("/uploads", newFileName);
				File fileParent = targetFile.getParentFile();
				if(!fileParent.exists()){
					fileParent.mkdirs();
				}
				file.transferTo(targetFile);
				HomeSwiper homeSwiper = new HomeSwiper();
				homeSwiper.setFilePath(targetFile.getPath());
				homeSwiper.setFileName(newFileName);
				homeSwiperMapper.insert(homeSwiper);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		ResultMap resultMap = new ResultMap();
		resultMap.setResult(SUCCESS);
		return resultMap;
	}
	
	@RequestMapping("institute/introduce")
	public ModelAndView introduce() {
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
