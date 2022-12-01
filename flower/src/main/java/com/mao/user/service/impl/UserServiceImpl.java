package com.mao.user.service.impl;

import com.mao.system.utils.SystemUtils;
import com.mao.user.dao.UserMapper;
import com.mao.user.model.User;
import com.mao.user.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        String md5Password = SystemUtils.toMd5(password);
        Map<String,String> map = new HashMap<>();
        map.put("loginName",username);
        map.put("password",md5Password);
        User user = userMapper.login(map);
        if (user != null){
            res = "1";
        }
        return res;
    }

    @Override
    public Integer save(User user) throws Exception {
        return userMapper.insert(user);
    }
}
