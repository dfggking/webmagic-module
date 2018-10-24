package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 招生信息
 */
@Controller
@RequestMapping("admission")
public class AdmissionController {
    @RequestMapping("list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
}
