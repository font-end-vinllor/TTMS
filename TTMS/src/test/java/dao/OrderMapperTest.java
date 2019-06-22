package dao;

import com.ff.dao.OrderMapper;
import com.ff.entity.Order;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class OrderMapperTest {

    OrderMapper orderMapper;

    @Before
    public void init(){

        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
                this.orderMapper = context.getBean(OrderMapper.class);

    }

@Test
    public void addOrder(){
        Date date = new Date();
        orderMapper.addOrder(1,date,30);
    }
    @Test
    public void selectAllOrdersByUId(){
        List<Order> orders = orderMapper.selectAllOrdersByUId(30);
        Iterator<Order> it = orders.iterator();
        while(it.hasNext()){
            System.out.println(it.next());
        }
    }
}
