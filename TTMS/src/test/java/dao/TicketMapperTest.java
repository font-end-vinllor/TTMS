package dao;

import com.ff.dao.SeatMapper;
import com.ff.dao.TicketMapper;
import com.ff.entity.Seat;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import java.util.List;

public class TicketMapperTest {

    @Autowired
    TicketMapper ticketMapper;

    @Autowired
    SeatMapper seatMapper;
    @Before
    public void init() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
        this.ticketMapper = context.getBean(TicketMapper.class);
        this.seatMapper = context.getBean(SeatMapper.class);
    }
    @Test
    public void addTicket(){

        ticketMapper.addTicket(3170,17,"1276488");
    }
    @Test
    public void selectTicketIdBySS(){
        Integer integer = ticketMapper.selectTicketIdBySS(17, 2833);

    }



   @Test
   public void hasBuy(){
       List<Integer> integers = ticketMapper.hasBuy(17);

       for(int i = 0 ; i < integers.size() ; i++){
          Seat seats = seatMapper.allHasBuy(integers.get(i),17);
          System.out.println(seats);
       }
   }
}
