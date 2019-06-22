package dao;

import com.ff.dao.UserMapper;
import com.ff.entity.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class UserMapperTest {
    com.ff.dao.UserMapper userMapper;

    @Before
    public void init() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext-dao.xml") ;

        this.userMapper = applicationContext.getBean(UserMapper.class) ;
    }


    @Test
    public void addUser() {
        User user = new User();
        user.setUser_name("scott");
        user.setUser_password("123");
        user.setUser_qq("1234567");
        userMapper.addUser(user);
    }
    @Test
    public void selectUser(){
        User userList = userMapper.selectUser("scottt");

    }
    @Test
    public void modifyPwd(){
        userMapper.modifyPwd("vinllorbaby","123456");
    }

}
