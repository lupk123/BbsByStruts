package com.bbs.action;

import com.bbs.model.User;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by Administrator on 2016/7/30.
 */
public class UserAction extends ActionSupport {
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String login(){
        return LOGIN;
    }
}
