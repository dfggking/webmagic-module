package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 数据与代码
 */
@Controller
@RequestMapping("datacode")
public class DataCodeController {
    
    @RequestMapping("data/list")
    public ModelAndView datalist() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
    
    @RequestMapping("code/list")
    public ModelAndView codeList() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
}
