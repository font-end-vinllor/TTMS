package com.ff.dao;

import com.ff.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface OrderMapper {

    //   <!--当用户点击到支付页面前保存订单到数据库-->
    void addOrder(@Param("ticket_id") Integer ticket_id, @Param("date") Date date, @Param("user_id") Integer user_id);


//支付成功后修改票的状态

    void updateOrderStatus(@Param("ticket_id") Integer ticket_id);


//    根据用户的ＩＤ查询所有已经支付过的订单
    List<Order>  selectAllOrdersByUId(@Param("user_id") Integer user_id);

}
