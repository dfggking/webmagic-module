package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.admin.vo.MemberVO;
import com.admin.vo.ResultMap;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.webmagic.dto.Member;
import com.webmagic.dto.SysConfig;
import com.webmagic.mapper.MemberMapper;
import com.webmagic.mapper.SysConfigMapper;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("member")
public class MemberController extends BaseController {
    @Autowired
    private MemberMapper memberMapper;
    @Autowired
    private SysConfigMapper sysConfigMapper;


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
    
    @RequestMapping(value = "add", method = RequestMethod.POST)
    public ModelAndView add(MultipartFile avatar, MemberVO member, HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        if (avatar != null ) {
            String fileName = avatar.getOriginalFilename();
            String newFileName = fileName + UUID.randomUUID();
            File targetFile = new File(request.getSession().getServletContext().getRealPath(""), newFileName);
            File fileParent = targetFile.getParentFile();
            if(!fileParent.exists()){
                fileParent.mkdirs();
            }
            try {
                avatar.transferTo(targetFile);
                Member memberDTO = new Member();
                BeanUtils.copyProperties(memberDTO, member);
                SysConfig sysConfig = sysConfigMapper.selectByPrimaryKey(1);
                memberDTO.setAvatarUrl(sysConfig.getFileSavePosition() + newFileName);
                memberMapper.insert(memberDTO);
                mv.addObject(RESULT, SUCCESS);
                mv.setViewName("/member/addPage");
            } catch (IOException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
        }
        return mv;
    }
    
    @RequestMapping(value = "del", method = RequestMethod.GET)
    @ResponseBody
    public String del(int id){
        memberMapper.deleteByPrimaryKey(id);
        return SUCCESS;
    }
}
