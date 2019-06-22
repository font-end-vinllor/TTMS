package com.ff.service.serviceImpl;

import com.ff.dao.UserMapper;
import com.ff.entity.User;
import com.ff.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource(name = "userMapper")
    UserMapper userMapper;

    /**
     添加用户
     */
    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    /**
     * 查询某个用户名在是否存在
     * @param user_name
     * @return
     */
    @Override
    public User selectUser(String user_name) {
        User user= userMapper.selectUser(user_name);
        return user;
    }

    @Override
    public void modifyPwd(String user_name, String user_pwd) {
        userMapper.modifyPwd(user_name,user_pwd);
    }
}
