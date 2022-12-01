package com.mao.user.controller;

import com.mao.system.constant.SystemConstant;
import com.mao.system.utils.ReturnMessage;
import com.mao.system.utils.SystemUtils;
import com.mao.user.model.User;
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
        User user = new User();
        user.setAddress(request.getParameter("address"));
        user.setName(request.getParameter("name"));
        user.setLoginName(request.getParameter("loginName"));
        user.setAuth("2");
        ReturnMessage returnMessage = new ReturnMessage();
        returnMessage.setCode(SystemConstant.SYS_RETURN_CODE_ERROR);
        try {
            user.setPassword(SystemUtils.toMd5(request.getParameter("password")));
            Integer register = userService.save(user);
            if (register != 0){
                returnMessage.setCode(SystemConstant.SYS_RETURN_CODE_SUCCESS);
            }
        } catch (Exception e) {
            returnMessage.setMessage("注册失败请联系管理员处理");
            throw new RuntimeException(e);
        }
        return returnMessage;
    }

    @RequestMapping("/toRegister.do")
    public String toRegister(HttpServletRequest request){
        return "user/register";
    }
}
