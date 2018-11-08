package com.admin.controller;

import com.webmagic.model.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/login")
public class LoginController {
    
    @RequestMapping("")
    public ModelAndView login(User user,
                              @RequestParam(value = "error", required = false) boolean error,
                              @RequestParam(value = "logout", required = false) boolean logout,
                              HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        mv.addObject(user);
        
        // 如果已经登录跳转到个人首页
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.getPrincipal().equals(user.getUsername()) && authentication.isAuthenticated()) {
            return new ModelAndView("admin");
        }
        if (error == true) {
            mv.addObject("error", error);
        }
        if (logout == true) {
            mv.addObject("logout", logout);
        }
        return mv;
    }
}
