package com.test.dao;

import com.webmagic.dto.User;
import com.webmagic.dto.WebsiteConfig;
import com.webmagic.service.UserService;
import com.webmagic.service.WebsiteConfigService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class TestCURD {

    @Autowired
    private UserService userService;
    @Autowired
    private WebsiteConfigService websiteConfigService;
    @Test
    public void getUser(){
        User us = userService.get(1);
        System.out.println(us.getEmail());
    }

    @Test
    public void insertWebsiteConfig(){
        WebsiteConfig wc = new WebsiteConfig();
        wc.setId(0);
        wc.setWebsiteTitle("title");
        wc.setCopyright("copyriht");
        wc.setEmail("email");
        wc.setDescription("desc");
        wc.setAddress("addr");
        websiteConfigService.insert(wc);
    }

}
