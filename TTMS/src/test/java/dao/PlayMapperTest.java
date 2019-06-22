package dao;

import com.ff.dao.PlayMapper;
import com.ff.entity.Play;
import org.apache.ibatis.annotations.Param;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class PlayMapperTest {

    PlayMapper playMapper;

    @Before
    public void init() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
        this.playMapper = context.getBean(PlayMapper.class);
    }

    @Test
    public void allPlays() {
        List<Play> plays = playMapper.allPlaying(0);

        Iterator<Play> it = plays.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }

    }

    @Test
    public void allType() {
        List<String> strings = playMapper.allType();
        Iterator<String> it = strings.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }
    }

    @Test
    public void allTypePlays() {

        List<Play> plays = playMapper.allTypePlays(0, "奇幻片");
        Iterator<Play> it = plays.iterator();
        while (it.hasNext())
            System.out.println(it.next());
    }

    @Test
    public void playInfoById() {
        Play play = playMapper.playInfoById(23);
        System.out.println(play);


    }

}
