package utils;

import com.ff.utils.Test_ma;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.security.GeneralSecurityException;

public class Test_maTest {


    JavaMailSender mailSender;

    @Before
    public void init(){
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("springmvc-servlet.xml",
                "applicationContext-dao.xml", "applicationContext-service.xml");
        mailSender = (JavaMailSender) ctx.getBean("mailSender");
    }

    @Test
    public void ma() throws GeneralSecurityException, MessagingException {

//        MimeMessage msg = mailSender.createMimeMessage();
//        MimeMessageHelper helper = new MimeMessageHelper(msg,true,"utf-8");
//        helper.setFrom("364621561@qq.com");
//        helper.setTo("2243883304@qq.com");
//        helper.setSubject("MiaoMiao影厅");
//        helper.setText("<span><img src='http://94.191.97.133/group1/M00/00/00/rB4AB10Au2CAUB97AAANJkrZK-U496.jpg'></img></span>",true);
//        mailSender.send(msg);

//        Test_ma.sendMessageToMail("364621561@qq.com", "<div style='border:1px solid #333'></div>");
    }
}
