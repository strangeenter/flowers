package com.mao.user.service;

import com.mao.user.model.User;

public interface UserService {

    /**
     * 登录
     * @param username
     * @param password
     * @return
     * @throws Exception
     */
    String login(String username,String password) throws Exception;

    /**
     * 用户注册
     * @param user
     * @return
     * @throws Exception
     */
    Integer save(User user) throws Exception;
}
