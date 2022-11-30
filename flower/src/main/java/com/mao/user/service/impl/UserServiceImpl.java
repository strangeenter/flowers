package com.mao.user.service.impl;

import com.mao.user.dao.UserDao;
import com.mao.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
public class UserServiceImpl implements UserService {

    /*@Autowired
    private UserDao userDao;*/

    @Override
    public String login(String username,String password) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(password.getBytes());
            String hashedPwd = new BigInteger(1, messageDigest.digest()).toString(16);
            System.out.println(hashedPwd);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

        return null;
    }
}
