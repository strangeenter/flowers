package com.mao.user.service.impl;

import com.mao.user.dao.UserMapper;
import com.mao.user.model.User;
import com.mao.user.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public String login(String username,String password) throws Exception{
        String res = "0";
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(password.getBytes());
        String hashedPwd = new BigInteger(1, messageDigest.digest()).toString(16);
        Map<String,String> map = new HashMap<>();
        map.put("name",username);
        map.put("password",hashedPwd);
        User user = userMapper.login(map);
        if (user != null){
            res = "1";
        }
        return res;
    }
}
