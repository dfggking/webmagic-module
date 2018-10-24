package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("member")
public class MemberController {
    @RequestMapping("list")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
}
