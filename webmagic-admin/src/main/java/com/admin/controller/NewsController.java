package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 新闻资讯
 */
@Controller
@RequestMapping("news")
public class NewsController {
    @RequestMapping("list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
}
