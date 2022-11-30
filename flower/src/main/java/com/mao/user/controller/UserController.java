package com.mao.user.controller;

import com.mao.user.service.UserService;
import com.mao.user.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("toLogin.do")
    public String toLogin(){
        return "user/login";
    }

    @RequestMapping("/login.do")
    public ModelAndView login(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        userService.login(username,password);
        return null;
    }
}
