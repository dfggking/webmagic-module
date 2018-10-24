package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 论文著作
 */
@Controller
@RequestMapping("thesis")
public class ThesisController {
    @RequestMapping("list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
}
