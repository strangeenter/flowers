package com.mao.user.controller;

import com.mao.system.constant.SystemConstant;
import com.mao.system.utils.ReturnMessage;
import com.mao.user.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("toLogin.do")
    public String toLogin(){
        return "user/login";
    }

    @RequestMapping("/login.do")
    @ResponseBody
    public ReturnMessage login(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ReturnMessage returnMessage = new ReturnMessage();
        try {
            if ("1".equals(userService.login(username, password))){
                returnMessage.setCode(SystemConstant.SYS_RETURN_CODE_SUCCESS);
            }else {
                returnMessage.setCode(SystemConstant.SYS_RETURN_CODE_ERROR);
                returnMessage.setMessage("账号或密码错误");
            }
        } catch (Exception e) {
            returnMessage.setCode(SystemConstant.SYS_RETURN_CODE_ERROR);
            returnMessage.setMessage(e.toString());
            throw new RuntimeException(e);
        }
        return returnMessage;
    }

    @RequestMapping("/flowers/userindex.do")
    public String toFlowersIndex(){
        return "flowers/index";
    }

    @RequestMapping("/register.do")
    public ReturnMessage registerUser(HttpServletRequest request){
        request.getParameter("");
        return null;
    }

    @RequestMapping("/toRegister.do")
    public String toRegister(HttpServletRequest request){
        return "user/register";
    }
}
