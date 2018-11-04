package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.webmagic.dto.Member;
import com.webmagic.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("member")
public class MemberController extends BaseController {
    @Autowired
    private MemberMapper memberMapper;

    @RequestMapping("list")
    public ModelAndView list() {

        List<Member> memberList=  memberMapper.selectAll();
        ModelAndView mv = new ModelAndView();
        mv.addObject(RESULT, SUCCESS);
        mv.addObject(LIST, memberList);
        return mv;
    }

    @RequestMapping("addPage")
    public ModelAndView addPage() {
        ModelAndView mv = new ModelAndView();
        return mv;
    }
}
