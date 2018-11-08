package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.webmagic.model.ResearchDirection;
import com.webmagic.mapper.ResearchDirectionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 研究方向
 */
@Controller
@RequestMapping("rdirection")
public class ResearchDirectionController extends BaseController {

    @Autowired
    private ResearchDirectionMapper rdMapper;

    @RequestMapping("list")
    public ModelAndView list() {

        List<ResearchDirection> list = rdMapper.selectAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject(RESULT, SUCCESS);
        mv.addObject(LIST, list);
        return mv;
    }
}
