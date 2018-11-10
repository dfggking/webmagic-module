package com.webmagic.controller;

import com.dfgg.util.CopyUtils;
import com.webmagic.controller.base.BaseController;
import com.webmagic.mapper.InstituteInformationMapper;
import com.webmagic.model.InstituteInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import vo.InstituteInformationVO;

import java.util.List;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("news")
public class NewsController extends BaseController {
    @Autowired
    private InstituteInformationMapper informationMapper;

	@RequestMapping("info")
	public ModelAndView info() {

        InstituteInformation info = new InstituteInformation();
        List<InstituteInformation> list = informationMapper.selectList(null);
        List<InstituteInformationVO> list2 = CopyUtils.copyList(list);

        ModelAndView mv = new ModelAndView();
        mv.addObject(RESULT, SUCCESS);
        mv.addObject("info_list", list2);
		return mv;
	}
	
}
