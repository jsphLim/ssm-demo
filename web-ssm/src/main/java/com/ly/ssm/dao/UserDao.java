package com.ly.ssm.dao;

import com.ly.ssm.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ly on 2017/11/30.
 */
@Repository
public interface UserDao {

    User selectUserById(@Param("userId") Long userId);

    User selectUserByPhoneOrEmail(@Param("emailOrPhone") String emailOrPhone, @Param("state") Short state);

    List<User> selectAllUser();

    List<User> findUserName(@Param("userName")String userName,@Param("userPhone")String userPhone);

    void save(User user);

    void update(User user);

    int delete(@Param("userId") Long userId);


    User selectUser(@Param("userName") String userName);


}
