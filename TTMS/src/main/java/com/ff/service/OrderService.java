package com.ff.service;

import com.ff.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface OrderService {

void addOrder(Integer ticket_id,Date date,Integer user_id);


    void updateOrderStatus(Integer ticket_id);

    List<Order> selectAllOrdersByUId(Integer user_id);
}
