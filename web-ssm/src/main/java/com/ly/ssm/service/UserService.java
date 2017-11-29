package com.ly.ssm.service;

import com.ly.ssm.model.User;

import java.util.List;

/**
 * Created by ly on 2017/11/30.
 */
public interface UserService {

    List<User> getAllUser();

    User getUserByPhoneOrEmail(String emailOrPhone, Short state);

    User getUserById(Long userId);

    List<User> findUserName(String userName,String userPhone);

    void save(User user);

    void update(User user);

    int delete(Long userId);

    User checkLogin(String userName, String userPwd);

}
