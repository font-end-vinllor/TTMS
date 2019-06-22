package dao;

import com.ff.dao.SearchMapper;
import com.ff.entity.Play;
import com.ff.utils.SearchUtils;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Iterator;
import java.util.List;

public class SearchMapperTest {


    SearchMapper searchMapper;
    @Before
    public void init(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
        this.searchMapper = context.getBean(SearchMapper.class);
    }
    @Test
    public  void searchPlay(){
        String s = SearchUtils.specialStrKeyword("科比");
        List<Play> plays = searchMapper.searchPlay(s);
        Iterator<Play> it = plays.iterator();
        while(it.hasNext()){
            System.out.println(it.next());
        }
    }
}
