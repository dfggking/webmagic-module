package com.webmagic.controller;

import com.webmagic.controller.base.BaseController;
import com.webmagic.dto.ResearchDirection;
import com.webmagic.mapper.ResearchDirectionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author jinyingfei - 835317619@qq.com
 * @create 2018-10-02
 */
@Controller
@RequestMapping("research")
public class ResearchDirectionController extends BaseController {

    @Autowired
    private ResearchDirectionMapper rdMapper;

	@RequestMapping("direction")
	public ModelAndView index() {
        List<ResearchDirection> list = rdMapper.selectAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject(RESULT, SUCCESS);
        mv.addObject(LIST, list);
        return mv;
	}


}
