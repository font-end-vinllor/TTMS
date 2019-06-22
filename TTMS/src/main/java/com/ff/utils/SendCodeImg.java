package com.ff.utils;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;


@Component
public class SendCodeImg {

     @Resource(name = "mailSender")
     JavaMailSender mailSender;


    public  void sendCodeImg(String url,String receive) throws MessagingException {
//        MimeMessage msg = mailSender.createMimeMessage();
//        MimeMessageHelper helper = new MimeMessageHelper(msg,true,"utf-8");
//        helper.setFrom("364621561@qq.com");
//        helper.setTo(receive);
//        helper.setSubject("MiaoMiao影厅");
//        helper.setText("<span><img src='"+ url +"'></img></span>",true);
//        mailSender.send(msg);
    }
}
