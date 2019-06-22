package com.ff.service;

import com.ff.entity.User;

import java.util.List;

public interface UserService {
   void addUser(User user);

   User selectUser(String user_name);

   void modifyPwd(String user_name,String user_pwd);

}
