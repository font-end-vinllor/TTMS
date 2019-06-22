package dao;

import com.ff.dao.HallMapper;
import com.ff.entity.Studio;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HallMapperTest {
    @Autowired
    HallMapper hallMapper;
    @Before
    public  void init(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
       this.hallMapper = context.getBean(HallMapper.class);
    }
    @Test
    public void selectHallById(){
        Studio studio = hallMapper.selectHallById(18);
        System.out.println(studio);


    }
}
