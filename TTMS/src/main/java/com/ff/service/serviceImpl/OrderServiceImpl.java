package com.ff.service.serviceImpl;

import com.ff.dao.OrderMapper;
import com.ff.entity.Order;
import com.ff.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderMapper orderMapper;

    @Override
    public void addOrder(Integer ticket_id, Date date, Integer user_id) {
        orderMapper.addOrder(ticket_id,date,user_id);
    }

    @Override
    public void updateOrderStatus(Integer ticket_id) {
        orderMapper.updateOrderStatus(ticket_id);
    }

    @Override
    public List<Order> selectAllOrdersByUId(Integer user_id) {
        return orderMapper.selectAllOrdersByUId(user_id);
    }
}
