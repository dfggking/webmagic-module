package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 研究方向
 */
@Controller
@RequestMapping("rdirection")
public class ResearchDirectionController {

    @RequestMapping("list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
}
