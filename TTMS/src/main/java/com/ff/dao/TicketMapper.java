package com.ff.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TicketMapper {

    void addTicket(@Param("seat_id") Integer seat_id,@Param("schedule_id") Integer schedule_id, @Param("code") String code);


//    <!-- 通过schedule_id ,seat_id 获取ticket_id-->

    Integer selectTicketIdBySS(@Param("schedule_id") Integer schedule_id,@Param("seat_id") Integer seat_id);

//　　根据演出计划查询所有已经买了的票的id

    List<Integer> hasBuy(@Param("schedule_id") Integer schedule_id);


    void deleteTicket(@Param("order_id") Integer order_id);
}
