package com.ff.dao;

import com.ff.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    void addUser(User user);

    User selectUser(String user_name);

    void modifyPwd(@Param("user_name") String user_name,@Param("user_pwd") String user_pwd);
}
