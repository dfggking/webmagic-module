package com.webmagic.controller;

import com.webmagic.controller.base.BaseController;
import com.webmagic.dto.ScientificResearchProject;
import com.webmagic.mapper.ScientificResearchProjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 科研项目
 */
@Controller
@RequestMapping("srproject")
public class ScientificResearchProjectController extends BaseController {

    @Autowired
    private ScientificResearchProjectMapper srpMapper;

    @RequestMapping("list")
    public ModelAndView list(HttpServletRequest request, ModelAndView mv) {
        List<ScientificResearchProject> list = srpMapper.selectAll();
        mv.addObject(RESULT, SUCCESS);
        mv.addObject(LIST, list);
        return mv;
    }
}