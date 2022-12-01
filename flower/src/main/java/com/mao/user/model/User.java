package com.mao.user.model;

import com.mao.system.utils.SystemUtils;

import java.util.Date;
import java.util.UUID;

public class User {
    private String id;

    private String name;

    private String password;

    private String address;

    private String phone;

    private String auth;

    private String loginName;

    private String annexid;

    public User() {
        if (this.getId() == null) {
            try {
                this.setId(SystemUtils.toMd5(String.valueOf(UUID.randomUUID())));
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

        }
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAuth() {
        return auth;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getAnnexid() {
        return annexid;
    }

    public void setAnnexid(String annexid) {
        this.annexid = annexid;
    }
}