package com.admin.security;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthenticationFailureHandlerImpl implements AuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
             AuthenticationException e) throws ServletException, IOException {
        // AuthenticationException 存放着异常信息，获取出来，放到 Request 中，转发到登录页面。
        request.setAttribute("error", e.getMessage());
        request.setAttribute("message", "用户名或者密码错误");
        request.getRequestDispatcher("/login").forward(request, response);
    }
}
