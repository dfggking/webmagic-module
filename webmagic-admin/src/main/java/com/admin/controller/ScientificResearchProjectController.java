package com.admin.controller;

import com.admin.controller.base.BaseController;
import com.baomidou.mybatisplus.toolkit.IdWorker;
import com.webmagic.mapper.PageIntroduceMapper;
import com.webmagic.mapper.ScientificResearchProjectMapper;
import com.webmagic.model.PageIntroduce;
import com.webmagic.model.ScientificResearchProject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 科研项目
 */
@Controller
@RequestMapping("srproject")
public class ScientificResearchProjectController extends BaseController {

    @Autowired
    private ScientificResearchProjectMapper srpMapper;
    @Autowired
    private PageIntroduceMapper introduceMapper;
    
    @RequestMapping("page")
    public ModelAndView page() {
        ModelAndView mv = new ModelAndView();
        PageIntroduce pageIntroduce = introduceMapper.selectByPrimaryKey("1");
        mv.addObject("pageIntroduce", pageIntroduce);
        return mv;
    }
    
    @RequestMapping("addPage")
    public ModelAndView addPage(){
        ModelAndView mv = new ModelAndView();
        return mv;
    }
    
    @RequestMapping("editPage")
    public ModelAndView editPage(String id){
        ScientificResearchProject project = srpMapper.selectByPrimaryKey(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject(ENTITY, project);
        return mv;
    }
    
    @RequestMapping("list")
    @ResponseBody
    public Map<String, Object> list(){
        
        List<ScientificResearchProject> list = srpMapper.selectAll();
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("status", 0);
        resultMap.put("message", "");
        resultMap.put("total", list.size());
        Map<String, Object> item = new HashMap<>();
        item.put("item", list);
        resultMap.put("data", item);
        
        return resultMap;
    }
    
    @RequestMapping("add")
    @ResponseBody
    public String add(ScientificResearchProject direction){
        direction.setId(IdWorker.getIdStr());
        direction.setCreateTime(new Date());
        srpMapper.insert(direction);
        return SUCCESS;
    }
    
    @RequestMapping("edit")
    @ResponseBody
    public String edit(ScientificResearchProject direction){
        direction.setCreateTime(new Date());
        srpMapper.updateByPrimaryKey(direction);
        return SUCCESS;
    }
    
    @RequestMapping("del")
    @ResponseBody
    public String delInfo(String id) {
        srpMapper.deleteByPrimaryKey(id);
        return SUCCESS;
    }
    
    @RequestMapping("introduce/edit")
    @ResponseBody
    public String editIntroduce(PageIntroduce introduce) {
        introduceMapper.updateByPrimaryKey(introduce);
        return SUCCESS;
    }
}
