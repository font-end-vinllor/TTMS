package com.ff.controller;

import com.ff.entity.User;
import com.ff.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/forPwd")
public class forgetPwdController {

    @Autowired
    UserService userService;

    /**
     * 获取到用户qq,返回给页面做判断
     *
     * @param user_name
     * @return
     */
    @RequestMapping("/getUser.do")
    @ResponseBody
    public String getUser(String user_name) {
        User user = userService.selectUser(user_name);
        if (user == null) return "";
        else {
            String qq = user.getUser_qq() + "";
            return qq;
        }
    }

    @RequestMapping("/modifyPwd.do")
    @ResponseBody
    public String modifyPwd(String user_name,String user_pwd) {
        if(user_name != null && user_pwd != null){
            userService.modifyPwd(user_name,user_pwd);
            return "ok";
        }
        else return "no";
    }

}
