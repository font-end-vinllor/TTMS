package com.ff.utils;

import com.sun.mail.util.MailSSLSocketFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.GeneralSecurityException;
import java.util.Properties;
import java.util.Random;

public class Test_ma {
        /**
         * 向QQ邮箱发送消息
         * @param sendToQQ
         * @param content
         * @throws GeneralSecurityException
         * @throws MessagingException
         */

    public static void sendMessageToMail(String sendToQQ,String content) throws GeneralSecurityException, MessagingException {
        Properties pro = new Properties();
//        开启debug调试
        pro.setProperty("mail.debug", "true");
//        发送服务器需要身份验证
        pro.setProperty("mail.smtp.auth", "true");
//        设置邮件服务器主机名
        pro.setProperty("mail.host", "smtp.qq.com");
//        发送邮件协议名称
        pro.setProperty("mail.transport.protocol", "smtp");

        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        pro.put("mail.smtp.ssl.enble", "true");
        pro.put("mail.smtp.ssl.socketFactory", sf);

        Session session = Session.getInstance(pro);

        Message msg = new MimeMessage(session);
        msg.setSubject("验证码");
        msg.setText(content);
        msg.setFrom(new InternetAddress("364621561@qq.com"));

        Transport transport = session.getTransport();
        transport.connect("smtp.qq.com", "364621561@qq.com", "yrxypofwypbybgfh");
        transport.sendMessage(msg, new Address[]{new InternetAddress(sendToQQ)});
        transport.close();
    }

    /**
     * 随机生成一个字符串
     * @param n
     * @return
     */
    public static String getCode(int n) {
        String string = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";//保存数字0-9 和 大小写字母
        //声明一个字符数组对象ch 保存 验证码
        char[] ch = new char[n];
        for (int i = 0; i < n; i++) {
            Random random = new Random();//创建一个新的随机数生成器
            int index = random.nextInt(string.length());//返回[0,string.length)范围的int值    作用：保存下标
            ch[i] = string.charAt(index);//charAt() : 返回指定索引处的 char 值   ==》保存到字符数组对象ch里面
        }
        //将char数组类型转换为String类型保存到result
        //String result = new String(ch);//方法一：直接使用构造方法      String(char[] value) ：分配一个新的 String，使其表示字符数组参数中当前包含的字符序列。
        String result = String.valueOf(ch);//方法二： String方法   valueOf(char c) ：返回 char 参数的字符串表示形式。
        return result;
    }

}
