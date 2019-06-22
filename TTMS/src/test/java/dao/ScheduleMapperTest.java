package dao;

import com.ff.dao.ScheduleMapper;
import com.ff.entity.Schedule;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class ScheduleMapperTest {
    @Autowired
    ScheduleMapper scheduleMapper;

    @Before
    public void init(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
        scheduleMapper = context.getBean(ScheduleMapper.class);

    }
    @Test
    public void dateByPlayId(){
        List<Date> dates = scheduleMapper.dateByPlayId(12);
        Map<Date,List<Schedule>> map = new TreeMap<>();
        Iterator<java.util.Date> it = dates.iterator();
        while(it.hasNext()){
            Date date = it.next();
            List<Schedule> list = scheduleMapper.schByDateAndPId(12, date + "");
            map.put(date,list);
        }

        Set<Date> set = map.keySet();
        Iterator<Date> it1 = set.iterator();
        while(it1.hasNext()){
            List<Schedule> schedules = map.get(it1.next());
            System.out.println(schedules);

        }
    }
   @Test
    public void schByDateAndPName() throws ParseException {


       List<Schedule> schedules = scheduleMapper.schByDateAndPId(12, "2019-06-11");
       Iterator<Schedule> it = schedules.iterator();
       while(it.hasNext()){
           System.out.println(it.next());
       }
   }
   @Test
   public void selectScheById(){

       Schedule schedule = scheduleMapper.selectScheById(17);
       System.out.println(schedule);

   }



}
