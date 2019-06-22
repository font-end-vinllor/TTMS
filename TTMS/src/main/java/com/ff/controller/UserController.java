package com.ff.controller;

import com.ff.entity.User;
import com.ff.service.UserService;
import com.ff.utils.Test_ma;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;


@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;



    /**
     * 跳转到注册页面
     */
    @RequestMapping("/register.do")
    public String register() {
        return "miao/login_register";
    }

    /**
     * 去注册
     */
    @RequestMapping(value = "/doRegister.do", method = RequestMethod.POST)
    public String doRegister(String user_name,String user_password,String user_qq) {
        //添加用户到数据库;
        User user = new User();
        user.setUser_name(user_name);
        user.setUser_password(user_password);
        user.setUser_qq(user_qq);
        userService.addUser(user);
        return "redirect:/play/index.do";

    }

    /**
     * 判断该用户名在数据库中是否存在
     *
     * @param user_name
     * @return
     */
    @RequestMapping("/judgeUserName.do")
    @ResponseBody
    public String judgeUserName(String user_name) {
        User user = userService.selectUser(user_name);
        if (user != null) {
            return "ok"; //用户名已存在
        }
        return "no"; //用户名不存在
    }

    /**
     * 验证QQ是否符合格式
     *
     * @return
     */
    @RequestMapping("/judgeQQ.do")
    @ResponseBody
    public String judgeQQ(String user_qq) {
        String regex = "[1-9][0-9]{4,14}";//第一位1-9之间的数字，第二位0-9之间的数字，数字范围4-14个之间
        boolean flag = user_qq.matches(regex);
        if (!flag) return "right";
        return "no_right";
    }


    /**
     * 登录
     */
    @RequestMapping("/doLogin.do")
    @ResponseBody
    public String doLogin(String user_name,String user_password,String reme,
                          HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(true);
        // 根据user_name 查询用户
        User user1 = userService.selectUser(user_name);

        // 如果登陆成功,将用户名展示在导航上,
        //并且将用户保存在session上
        if (user1 !=null && user1.getUser_password().equals(user_password)) {
            session.setAttribute("login", user1);
            addCookie(user1.getUser_name(),reme, request, response);

            String beforePath = (String) session.getAttribute("beforePath");
            if(beforePath != null) {
                return beforePath;
            }
            return "ok";
        }

        return "no";

    }

    /**
     * 将用户的账号存放在cookie里面
     *
     * @param user_name
     */
    public void addCookie(String user_name, String reme, HttpServletRequest request,
                          HttpServletResponse response) {

        try {
            Cookie cookie = new Cookie("user_name", URLEncoder.encode (user_name,"utf-8"));

//        设置cookie的父路径
            cookie.setPath(request.getContextPath() + "/");
//        获取复选框的值
            if (reme == null || reme.equals(false)) {
                cookie.setMaxAge(0); //不保存

            } else {
                cookie.setMaxAge(3*24*60*60);
            }

//        将cookie加到响应头
            response.addCookie(cookie);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }


    }

    @RequestMapping("/getCookie.do")
    @ResponseBody
    public String getCookie(HttpServletRequest request){

        try {
            String user_name="";

            Cookie[] cookies = request.getCookies();

            if(cookies!=null && cookies.length > 0){
                for(int i = 0 ; i < cookies.length ; i++){
                    Cookie cookie = cookies[i];
                    if("user_name".equals(cookie.getName()))
                        user_name = cookie.getValue();
                    return URLDecoder.decode(user_name,"utf-8");
                }
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }
    /**
     * 退出登录
     *
     * @param request
     */
    @RequestMapping("/doExit.do")
    public String doExit(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("login");
        session.invalidate();
        return "redirect:/play/index.do";
    }

    /**
     * 发送验证码成功
     *
     * @param getQQ
     * @return  返回验证码的内容
     * @throws GeneralSecurityException
     * @throws MessagingException
     */
    @RequestMapping("/doSendMa.do")
    @ResponseBody
    public String sendMa(String getQQ)
            throws GeneralSecurityException, MessagingException {
        String content = Test_ma.getCode(7);
        String sendTo = getQQ + "@qq.com";
        Test_ma.sendMessageToMail(sendTo, content);

        return content;
    }

    @RequestMapping("/judgeCode.do")
    @ResponseBody
    public String judgeMa(String code, String right) {
        if (code.equals(right)) {
            return "ok";
        }
        return "no";
    }


}
