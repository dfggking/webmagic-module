package com.test.dao;

import com.webmagic.model.User;
import com.webmagic.service.UserService;
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
    @Test
    public void getUser(){
        User us = userService.getUser("1");
        System.out.println(us.getEmail());
    }


}
